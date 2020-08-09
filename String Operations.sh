echo "1.Compare two strings :"
echo "2.Concatanate string"
echo "3.Find length of string"
echo "4.Check Palindrome"
echo "5.Reverse of string"
echo "6.Exit"
echo "Enter your choice: "
read ch

case $ch in 

1) echo -e "Enter a string: "
read str1
echo -e "Enter anothe string: "
read str2
if [ $str1 = $str2 ]
  then
    echo -e "They are equal!\n"
  else
    echo -e "They are not equal!\n"
  fi
  ;;

2) echo -e "Enter a string: "
read str1
echo -e "Enter anothe string: "
read str2

catstr=`echo $str1$str2`
  echo -e "$catstr"
  ;;

3)echo -e "Enter a string: "
read str1
 t=`echo -n $str1 | wc -c`
  echo -e "Length of $str1 is $t"
  ;;

4)echo -e "Enter a string: "
read str1
 len=`echo -n $str1 | wc -c`
  i=1
  j=`expr $len / 2`
  while [ $i -le $j ]
  do
    k=`echo $str1 | cut -c $i`
    l=`echo $str1 | cut -c $len`
    
    if  [ $k != $l ]
    then
        echo "String is not palindrome"
        exit
    fi
    
    i=`expr $i + 1`
    len=`expr $len - 1`
  done
  echo "String is palindrome"
  ;;

5)echo "Enter any string :"
      read s1

       t=`echo $s1|wc -c`
           t=`expr $t - 1`
           echo "length" $t
           while [ $t -ne 0 ]
       do
         temp=`echo $s1|cut -c $t`
         echo $temp
         temp2=`echo $temp2 $temp`
         t=`expr $t - 1`
      done
      echo $temp2;;


6) ;;

esac



