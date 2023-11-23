line=$(head -n 11 txt | tail -n 1)
exit_code= $?
if [ $exit_code -eq 0 ]; then
    echo "The 11th line is: $line"
else
    echo "The file does not have 11 lines."
fi
