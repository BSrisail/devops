1 = head -n 11 txt | tail -n 1
echo $?
echo "The 11th line is: $1"