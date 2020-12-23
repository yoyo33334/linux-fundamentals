#!/bin/bash

clear
echo "using read -p...."
read -p "Enter your first name >> " fname
sleep 2
echo "Your name is $fname"
echo ""
echo "using echo and then read...."
echo "Enter your first name >> "
read fname
sleep 2
echo "Your name is $fname"
