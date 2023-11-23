line=$(sed -n '11p' txt)
exit_code=$?

if [ $exit_code -eq 0 ]; then
    echo "The 11th line is: $line"
else
    echo "The file does not have an 11th line."
fi