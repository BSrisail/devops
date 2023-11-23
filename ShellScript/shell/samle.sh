line=$(sed -n '11p' txt)
if [ ${#line} -gt 1 ]; then
    echo "The 11th line is: $line"
else
    echo "The file does not have 11 lines."
fi