#Test
#!/bin/bash
clear

pepperoniPrice=9.99
array=(2 4 5 7 2 3 5)
echo "Element # 6 is ${array[5]}"


#for n in ${array[*]}
for n in ${array[@]}
do
#echo $n
printf "$n "
done
printf "\n"

counter=1
toppings=(Pepperoni Ham Tomatoes Onions Jalapeno Cheese Red_Pepper Black_Olives)
read -p "Enter your name >> " name
echo "Dear $name, these are the toppings we have:"
echo "---------------------------"
for t in ${toppings[@]}
do
echo "$counter. $t" 
((counter++))
done
echo "---------------------------"
echo ""
read -p "Choose one [1-7] >> " selection
if [ $selection -eq 1 ]; then
echo "You have chosen ${toppings[0]} for $ $pepperoniPrice. Great choice!!!!!"
fi

