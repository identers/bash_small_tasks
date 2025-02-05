#!/bin/bash
# Set parameter introduced by user as the script name
script_name=$1

# Creathe the bash file
touch ./$script_name

# Set the shebang on the bash file
echo "#!/bin/bash" > $script_name

# Enter the nano editor to begin writing the Script. If the system doesn't have nano installed, the script will not enter editing mode.
nano $script_name

echo "Bash Script created"
