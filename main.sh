#!/bin/bash
echo  'Task 1 : Enter two numbers so it can look up the sequence and  the difference' #This task is focused on finding the sequence and difference of two number. User enter two numbers and the result would pop up on the console"
read d_in   s_in
echo "The sequence between the two numbers are: " $(seq   $d_in $s_in)
echo "The difference between the two numbers is :" $(($s_in - $d_in))
echo That is end of Task 1
echo --------------------------------------------------

#Positional parameters ( $1 $2 command line arguments from user input) and/or accept user input from keyboard and includes functions with parameters
echo "Task 2 : Find the factors of a single number" #User ends ONE number in order to find its factor. It CAN NOT be two numbers entered. Otherwise, the code crashes"
echo -n "Enter the number. "
read n
echo "Here are the factors of $n"
for i in  $(seq 1 $n)
do
 [ $(expr $n / $i \* $i) == $n ] && echo  $i
done
echo That is end of Task 2


echo --------------------------------------------------
#Loop ( for, while loop)
echo "Task 3 : Find the prime numbers between two selected numbers" #This the loop part of the lab where the prime numbers between two selected numbers are printed out in a loop until it stops
echo "Enter your two numbers"
read f_in s_in

echo "The prime numbers between $f_in and $s_in are: "
for num in $(seq $f_in $s_in)
do
flag=0
for i in $(seq 2 $((num-1)))
do
if [ $(($num % $i)) -eq 0 ]
then
flag=1
fi
done
if [ $((flag)) -eq 0 ]
then
echo "$num is considered a prime number."
else
echo "$num is not considered a prime number."
fi
done
echo ----------------------------------------------------
#File I/O ( read in a file, write out to a file) 
echo "Bonus task : You did a good job testing out these taks. As a bonus, you have the opportunity to see a list of companies that  
contribute to the world of technology"  #The purpose of this task is to show text being read from a file, with also giving the user to use the yes or no command
read -p "Would you like to see the list? (Yes/No) " YN

case $YN in 
	Yes ) echo Pefect, here are the companies. Thank you so much with your participation. Have a great day;;
	No ) echo Alright, thank you with your participation with the tasks. Have a great day;
		exit;;
	* ) echo invalid response;
		exit 1;;
esac
filename='companylist.txt'
n=1
while read line; do
echo "Company $n : $line"
n=$((n+1))
done < $filename 
echo ---------------------------------------------------
echo End of the program
#TERMINATES AND COMPLETELY ENDS THE PROGRAM FOR THE USER
