
ans='y'
while [ $ans == 'y' ]				#the spaces are important DO NOT TRY TO CHANGE THE LAYOUT!
do
	echo -e "\n\n\t\t\n1. create file and put some stuff in it\n2. Display contents\n3. display in caps cause why not!\n4. Display the wordcount\n5. Append new content\n6. perform search on file\n7. cut certain content and display the same\n8. display content in rev order\n9. change file permissions\n10. delete the file\n11.Exit\n\nPlease enter your choice: "
	read sel
	
	case $sel in
	1) echo "enter filename"
	read filename
	touch $filename
	echo -e "What should i write to it?: "
	cat>$filename
	;;
	   
	2) 
	echo "enter filename"
	read filename
	echo -e "The OG contents are:\n\n"
	chmod 666 $filename
	cat $filename
	;;

	3)
	echo "enter filename"
	read filename
	cat $filename | tr 'a-z' 'A-Z'
	;;

	4)
	echo "enter the filename: "
	read filename
	wc $filename
	;;

	5)
	echo "enter the filename: "
	read filename
	echo -e "\nEnter what you want to enter, DUH! : "
	cat >> $filename
	;;

	6)
	echo "Enter what you want to search: "
	read query
	echo -e "\nEnter filename: "
	read filename
	grep $query $filename
	;;

	7)
	echo "Enter what you position you want to cut: "
	read query
	echo -e "\nEnter filename: "
	read filename
	cut -c$query $filename
	;;


	8)
	echo "enter filename"
	read filename
	tac $filename
	;;


	9)
	echo "enter the filename: "
	read filename
	echo "Heres how it is currently: "
	ls -l | grep $filename
	echo "Please enter new permission number(3 digit/ Absolute mode):"
	read fperm
	chmod $fperm $filename 
	echo "Heres how it is NOW: "
	ls -l | grep $filename
	;;

	 
	10)
	ls -l
	echo -e "What should i delete?:"
	read filename
	rm $filename
	;;   
	   
	   
	11) echo -e 
	    ;;   

	esac   

	echo -e "Do you want to continue? (y/n): "
	read ans

done
