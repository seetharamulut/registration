#! /bin/bash -x
read -p "enter first name  : " first_name

if [[ $first_name =~ ^([[:upper:]][[:lower:]]+)+$ ]]
then
   echo "valid"
else
   echo "please enter valid first name"
   echo "first letter capital and contains minimum three letters"
fi
read -p "enter last name  : " last_name

if [[ $last_name =~ ^([[:upper:]][[:lower:]]+)+$ ]]
then
   echo "valid"
else
   echo "please enter valid last name"
   echo "last letter capital and contains minimum three letters"
fi
read -p "enter a valid emial" email
if [[ $email =~ ^[a-zA-Z0-9]+([._+-][0-9a-zA-Z]+)*\@[a-z]{1,}\.[a-z]{1,4}([.][a-z]{1,})*$ ]]
then
   echo "valid email"
else
   echo "invalid email" 
fi
read -p "enter mobile number with country code" m_num
if [[ $m_num =~ ^[0-9]{1,2}[' '][0-9]{4,} ]]
then
	echo "valid mobile number"
else
	echo "invalid mobile  number"
fi
read -p "enter a password" password
if [[ ${#password} -gt 8 && $password == [[:upper:]] && $password == [[:lower:]] && $password == [0-9] && $password =~ [@#%^.,/] ]]
then 
	echo "valid"
else
	echo "min 8 characters required"
fi
