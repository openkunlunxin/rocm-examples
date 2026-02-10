import os
import re

def process_line(line):
    # Match global_load* or global_store* instructions
    instr_pattern = r'\b(global_load\w*|global_store\w*)\b'
    if re.search(instr_pattern, line):
        # Skip if glc/dlc/sc0/sc1 is already present
        if re.search(r'\b(glc|dlc|sc0|sc1)\b', line):
            return line
        # If there is a comment, insert glc before it
        if ';' in line:
            parts = line.split(';', 1)
            code = parts[0].rstrip()
            comment = ';' + parts[1]
            return f"{code} glc {comment}"
        else:
            # No comment, just add glc at the end
            return line.rstrip() + ' sc1\n'
    return line

def process_file(infile, outfile):
    with open(infile, 'r') as f:
        lines = f.readlines()
    new_lines = [process_line(line) for line in lines]
    with open(outfile, 'w') as f:
        f.writelines(new_lines)
    print(f'Generated: {outfile}')

def main():
    for fname in os.listdir('.'):
        if fname.endswith('.s') and not fname.endswith('_bp.s'):
            outname = fname[:-2] + '_bp.s'
            process_file(fname, outname)

if __name__ == '__main__':
    main()
