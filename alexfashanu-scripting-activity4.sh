echo "What is your password? $password"
read password

if (( ${#password} < 8 )); then
    echo "Too short"
elif [[ $password != *[[:digit:]]* ]]; then
    echo "Does not contain a digit"
elif [[ $password != *[[:lower:]]* ]]; then
    echo "Does not contain a lower case letter"
elif [[ $password != *[[:upper:]]* ]]; then
    echo "Does not contain an upper case letter"
else
    echo "Password accepted."
fi
exit 0