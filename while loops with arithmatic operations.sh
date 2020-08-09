

ans="y"

while [ $ans == "y" ]
do
	echo -e "1. Math tables\n2. Exponents\n3. Printing inverse series"
	echo -e "4. Fibonacci\n5. Reverse the number\nEnter your choice: "
	read sel

	case $sel in

	1)echo -e "What number's table should i write? : "
	  read n
	  echo -e "\n\n"
	  i=1
	  while [ $i -lt 11 ]
	  do
	  	pro=`echo $i\*$n|bc`
	  	echo "$pro"
	  	i=`echo $i+1|bc`
	  done
	;;


	2)echo -e "For a^b, enter a then b : "
	  read a b
	  m=$b
	  res=1
	  while [ $b -gt 0 ]
	  do
	  	res=`echo $a*$res|bc`
	  	b=`echo $b-1|bc`
	  done
	  echo -e "\n\n\t\t $a ^ $m = $res\n"
	;;

	3)echo -e "Enter the number of terms : "
	  read n
	  i=2
	  printf "1 + "
	  while [ $i -lt $n ]
	  do	
	  	printf "1/$i + "
	  	i=`echo $i+1|bc`
	  done
	  printf "1/$i\n\n"
	;;

	4)echo -e "Enter number of terms : "
	  read n
	  f1=0
	  f2=1
	  f3=0
	  n=`echo $n-2|bc`
	  printf "0, 1"
	  while [ $n -gt 0 ]
	  do
	  	f3=`echo $f1+$f2|bc`
	  	printf ", $f3"
	  	f1=$f2
	  	f2=$f3
	  	n=`echo $n-1|bc`
	  done
	  printf "\n\n"
	;;

	5)echo -e "Enter the number : "
	  read num
	  rev=0
	  while [ $num -gt 0 ]
	  do
	  	rev=`echo $rev+$num%10|bc`
	  	rev=`echo $rev\*10|bc`
	  	num=`echo $num/10|bc`
	  done
	  rev=`echo $rev/10|bc`
	  echo -e "Rev number : $rev"
	;;

	esac
	echo -e "Continue? (y/n) : "
	read ans

done