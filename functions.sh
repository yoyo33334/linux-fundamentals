#!/bin/bash

clear

# -- Functions
echo "using functions...."

add() {
sum=$(( $1 + $2 ))
}

subtract() {
sub=$(( $1 - $2 ))
}

read -p "Enter first number >> " num1
read -p "Enter second number >> " num2
echo ""
echo "-----------------"
echo "1. Addition"
echo "2. Subtraction"
echo "-----------------"
read -p "Select one above [1 or 2] >> " selection
if [ $selection -eq 1 ]; then
add $num1 $num2
echo "The sum is $sum"
else 
subtract $num1 $num2
echo "The substraction is $sub"
fi
echo ""

read -p "Enter third number >> " num3
read -p "Enter fourth number >> " num4
add $num3 $num4
