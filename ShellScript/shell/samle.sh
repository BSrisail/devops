line=$(head -n 11 txt | tail -n 1)

# Store the exit code of the last command (in this case, the command substitution)
exit_code=$?

# Print the exit code
echo "Exit code: $exit_code"

# Print the 11th line (if found)
if [ -n "$line" ]; then
    echo "The 11th line is: $line"
else
    echo "The file does not have 11 lines."
fi