for ((i = 0; i < 10; i++)); do
    # Prompt line
    echo "Enter ${number_names_arr[i]} number"
    
    # read inputted number into array
    read -r numbers_arr[i]
    if [[ i -ge 4 ]];
    then
    echo "Do you want to enter another number?"
    read answer
        if [ $answer != "yes" ];
        then
            break
        fi
    fi
done

echo "Output:"
# pass the content of array to the sort command
printf '%s\n' "${numbers_arr[@]}" | sort -rn 

sum=0
for i in "${numbers_arr[@]}"; do
  (( sum+=i ))
done
echo "total is equal to $sum"
len=${#numbers_arr[@]}
let avg=sum/len
echo "the average is equal to $avg"
mul=1
for i in "${numbers_arr[@]}"; do
  (( mul*=i ))
done
echo "the product is equal to $mul"

#echo "${numbers_arr[@]}" | sort -rn | for i in ${numbers_arr[@]}; do
#if i -gt

max=${numbers_arr[0]}
min=${numbers_arr[0]}

for i in "${numbers_arr[@]}"; do
  (( $i > max )) && max=$i
  (( $i < min )) && min=$i
done

echo "Max value is $max, minimal value is $min"
