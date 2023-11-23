line=$(sed -n '11p' txt)
if [ -n "$line" ]; then
    echo "The 11th line is: $line"
else
    echo "The file does not have 11 lines."
fi