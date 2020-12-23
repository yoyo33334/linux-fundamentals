#!/bin/bash
clear
#---- Working with loops------
# For Loop

echo "Showing results of for loop...."
for number in 1 2 3 4 5 6 7 8 9 10 carlos martinez
do
echo $number
done

echo ""
echo "Using seq..."
for number in $(seq 100)
do
echo $number
done

echo ""
echo "Using seq and printing the even numbers..."
for number in $(seq 100)
do
if (($number % 2 == 0)); then
if (( $number == 6 )); then 
continue
fi
if (($number == 10)); then
break
fi
echo $number
fi
done

# --- Add three users at once --
echo "adding users..."
sleep 3
for user in pedro omer mtaghi
do
sudo useradd $user
done
echo "users have been created"

# Asking user for input for looping
read -p "Hey how many numbers do you want to print? >> " numbers
for number in $(seq $numbers)
do
echo $number
done

# Add ten users at once
for id in $(seq 10)
do
sudo useradd user-$id
done

# Delete ten users at once
for id in $(seq 10)
do
sudo userdel user-$id
done

# While loop
counter=3
echo ""
echo "Using while loop..."
while [ $counter -le 10 ]
do
echo $counter
((counter++))
done

# until loop
echo ""
echo "Using until loop"
counter=1
until [ $counter -gt 10 ]
do
echo "counter's value is $counter"
((counter++))
done

# do-while in Linux does not exist in Linux but it can be accomplished
echo ""
echo "Using the 'do-while' in Linux"
counter=1
while true
do
if (($counter == 11)); then
break
fi 
echo "The value of counter now is $counter"
((counter++))
done

echo ""
echo "Now giving the time...."
sleep 3
# Print the time
counter=1
while true
do
date +"%H:%M:%S:%N => %m"
if (($counter == 10)); then
break
fi
((counter++))
done


 
