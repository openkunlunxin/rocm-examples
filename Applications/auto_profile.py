import os
import shutil
import subprocess
import sys

def run_workflow():
    # List of files to be copied to each profile folder
    required_helpers = ['Makefile', 'bp.py', 'gen_mcin']
    
    # Get all subdirectories in the current path
    items = [f for f in os.scandir('.') if f.is_dir()]
    
    for item in items:
        folder_name = item.name
        
        # Avoid processing already created profile folders
        if folder_name.endswith('_profile'):
            continue
            
        # Check if main.hip exists in the subfolder
        main_hip_path = os.path.join(folder_name, 'main.hip')
        if os.path.exists(main_hip_path):
            profile_folder = f"{folder_name}_profile"
            print(f"--- Found main.hip in {folder_name}. Creating {profile_folder} ---")
            
            # 1. Clean up existing profile folder if it exists
            if os.path.exists(profile_folder):
                shutil.rmtree(profile_folder)
            
            # 2. Copy the original folder to <name>_profile
            shutil.copytree(folder_name, profile_folder)
            
            # 3. Copy helper files from current directory to the profile folder
            for helper in required_helpers:
                if os.path.exists(helper):
                    shutil.copy2(helper, profile_folder)
                else:
                    print(f"Warning: {helper} missing in root directory.")

            # 4. Define commands to execute
            make_commands = [
                ["make", "profile"],
                ["make", "BP_LV=l1", "profile_bp"],
                ["make", "BP_LV=l2", "profile_bp"],
                ["make", "BP_LV=all", "profile_bp"]
            ]

            # 5. Enter the folder and execute make commands
            original_dir = os.getcwd()
            try:
                os.chdir(profile_folder)
                for cmd in make_commands:
                    print(f"Running: {' '.join(cmd)} inside {profile_folder}")
                    # Execution with real-time output to console
                    result = subprocess.run(cmd)
                    if result.returncode != 0:
                        print(f"Error: Command failed in {profile_folder}")
            except Exception as e:
                print(f"An error occurred while processing {profile_folder}: {e}")
            finally:
                # Always return to the parent directory
                os.chdir(original_dir)

    print("\n--- Workflow completed ---")

if __name__ == "__main__":
    run_workflow()
