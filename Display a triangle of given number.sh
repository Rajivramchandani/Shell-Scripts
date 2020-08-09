#Shell script to display triangle of nos 


echo -e "Enter the number :"

read n

for (( i=1; i<=n; i++ ))
do
	for (( j=1; j<=i; j++ ))
	do
		echo -e -n "$i \c"
	done
	echo -e "\n"
done