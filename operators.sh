#!/bin/bash

clear
# ------------------
# Comparison Operators
# -------------------
read -p "Enter your age >> " age

if [ $age -le 18 ]; then
#if [ "$age" -le 18 ]; then
echo "$age years old or less"
else
echo "Greater than 18 years old"
fi

# ------ using ((. < .)) ------
read -p "Enter first number >> " a
read -p "Enter second number >> " b

if (("$a" < "$b")); then
echo "$a is less than $b"
else
echo "$a is not less than $b"
fi

# ------ using [[. < .]]
if [[ "$a" < "$b" ]]; then
echo "$a is less than $b"
else
echo "$a is not less than $b"
fi

# ------- using [. \< . ] -----
if [ "$a" \< "$b" ]; then
echo "$a is less than $b"
else
echo "$a is not less than $b"
fi

# ---  Comparing Strings ---
read -p "Enter a name >> " name1
read -p "Enter another name >> " name2


# using =
echo "using ="
if [[ "$name1" = "$name2" ]]; then
echo "$name1 is equal to $name2"
else
echo "$name1 is not equal to $name2"
fi

# using ==
echo "using =="
if [[ "$name1" == "$name2" ]]; then
echo "$name1 is equal to $name2"
else
echo "$name1 is not equal to $name2"
fi

# using -z => checking if a string is null
echo "using -z"
if [ -z "$name1" ]; then  
echo "$name1 is null"
else
echo "$name1 is not null"
fi

# using -n => checking if a string is not null
echo "using -n"
if [ -n "$name1" ]; then  
echo "$name1 is not null"
else
echo "$name1 is null"
fi
