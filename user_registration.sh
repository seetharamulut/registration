#! /bin/bash 
read -p "enter first name  : " first_name

if [[ $first_name =~ ^([[:upper:]][[:lower:]]+)+$ ]]
then
   echo "valid"
else
   echo "please enter valid first name"
   echo "first letter capital and contains minimum three letters"
fi
