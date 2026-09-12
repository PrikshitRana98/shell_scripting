a=10
b=10

if [ "$a" -eq "$b" ]; then
    echo "Both are equal"
else
    echo "Both are not equal"
fi

a=10
b=20

if [ "$a" -ne "$b" ]; then
    echo "Both are not equal"
else
    echo "Both are equal"
fi

