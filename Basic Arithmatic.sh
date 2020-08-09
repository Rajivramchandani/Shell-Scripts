
ans='y'
while [ $ans == 'y' ]
do
	echo -e "1. Addition\n2. Subtraction\n3. Multiplication\n4. Division\nPlease enter your choice: "
	read sel

	case $sel in 
	1)echo -e "Enter two numbers: "
	read a b
	c=`echo $a+$b|bc -l`
	echo -e "The sum of $a and $b is $c"
	;;

	2)echo -e "Enter two numbers: "
	read a b
	c=`echo $a-$b|bc -l`
	echo -e "The differnece of $a and $b is $c"
	;;

	3)echo -e "Enter two numbers: "
	read a b
	c=`echo $a\*$b|bc -l`
	echo -e "The product of $a and $b is $c"
	;;

	4)echo -e "Enter two numbers: "
	read a b
	c=`echo $a/$b|bc -l`
	echo -e "The quotient of $a and $b is $c"
	;;

	esac
	echo -e "Do you want to retry(y/n): "
	read ans

done	
