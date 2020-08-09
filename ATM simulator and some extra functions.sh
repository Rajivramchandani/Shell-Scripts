ans='y'
while [ $ans == 'y' ]
do
	echo -e "1. Get gross salary\n2. variable value exchange\n3. Get max and min of three numbers"
	echo -e "4. ATM Simulator or something like that...\n5. Counting stuff in string\n6. check for vowel\nEnter your choice: "
	read sel

	case $sel in
	1)echo -e "\nEnter Basic salary: "
	  read bs
	  #da=`echo 0.4\*$bs|bc -l`
	  #hra=`echo 0.2\*$bs|bc -l`
	  sal=`echo 1.6\*$bs|bc -l`
	  echo -e "The gross salary is: $sal"
	  ;;

	2)echo -e "\nEnter two numbers: "
	  read a b
	  echo -e "\n\t\t\ta = $a and b = $b\n"
	  a=`echo $a+$b|bc -l` 
	  b=`echo $a-$b|bc -l`
	  a=`echo $a-$b|bc -l`
	  echo -e "\n\t\t\ta = $a and b = $b\n"
	  ;;

	3)echo -e "\nEnter three numbers: "
	  read a b c
	  max=$a
	  min=$a
	  if [ $b -gt $max ]
	  then
	  	max=$b
	  fi

	  if [ $c -gt $max ]
	  then
	  	max=$c
	  fi

	  if [ $b -lt $min ]
	  then
	  	min=$b
	  fi

	  if [ $c -lt $min ]
	  then
	  	min=$c
	  fi

	  echo -e "\nThe greatest number is $max"
	  echo -e "\nThe greatest number is $min"
	  ;;



	4)echo -e "Enter PIN: "
	  pwd="1933"
	  bal=10000
	  read pin
	  
	  if [ $pin -eq $pwd ]
	  then
	  	echo -e "Enter Amount to be withdrawn: "
	  	read amt
	  	if [ $bal -gt $amt ]
	  	then
		  	tax=0
		  	if [ $amt -lt 1500 ]
		  	then
		  		tax=`echo 0.02\*$amt|bc -l`
		  	
		  	elif [ $amt -lt 3500 ]
		  	then
		  		tax=`echo 0.03\*$amt|bc -l`
			
			elif [ $amt -lt 5000 ]
		  	then
		  		tax=`echo 0.04\*$amt|bc -l`
		  	
		  	else 	  		
		  		tax=`echo 0.05\*$amt|bc -l`
		  	
		  	fi
		  	bal=`echo $bal-$tax-$amt|bc -l`
	  		deducted=`echo $tax+$amt|bc -l`
	  		echo -e "\nTotal Tax incurred: $tax\nTotal amount deducted: $deducted\nBalance left: $bal\n"
		else
			tax=0
			deducted=0
			amt=0
			echo -e "\nInsufficient Funds!"
			echo -e "\nTotal Tax incurred: $tax\nTotal amount deducted: $deducted\nBalance left: $bal\n"	
			
	  	fi
	  	
	  
	  fi
	;;

	5)echo -e "\nEnter a string or a character : "
	  read strvar
	  w=`echo -n $strvar|wc -w`
	  c=`echo -n $strvar|wc -c`
	  s=`echo $w-1|bc`
	  echo -e "No. of words = $w"
	  echo -e "\nNo. of characters = $c"
	  echo -e "\nNo. of spaces = $s"
	;;

	6)echo -e "Enter a char : "
	  read ch
	  if [ $ch == 'a' -o $ch == 'e' -o $ch == 'i' -o $ch == 'o' -o $ch == 'u' ]
	  then	
	  	echo -e "Yes, it is a vowel!\n"
	  else
	  	echo -e "It is not a vowel!\n"

	  fi
	;;

	esac
	echo -e "Do you want to retry(y/n): "
	read ans

done


