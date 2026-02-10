#!/bin/bash

# Iterate over all subdirectories in the current directory
for subdir in *; do
    # Check if it is a directory
    if [ -d "$subdir" ]; then
        echo "Processing directory: $subdir"
        
        # Enter the subdirectory
        cd "$subdir" || exit
        
        # Find all files starting with application_
        for file in applications_*; do
            # Check if it is a file (not a directory)
            if [ -f "$file" ]; then
                # Extract the <NAME> part (the part after application_)
                name_part="${file#applications_}"
                
                # Construct the output file name (same structure as input, or customize as needed)
                output_file="applications_${name_part}"
                
                # Execute the command
                echo "Found file $file in $subdir, running command..."
                rocprofv2 -i /root/input.txt --plugin file -o ${name_part} ./${output_file}
            fi
        done
        
        # Return to the parent directory
        cd ..
    fi
done

echo "All directories processed."
