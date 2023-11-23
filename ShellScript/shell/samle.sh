line=$(head -n 11 txt | tail -n 1))
if [ -n "$line" ]; then
    echo "The 11th line is: $line"
else
    echo "The file does not have 11 lines."
fi