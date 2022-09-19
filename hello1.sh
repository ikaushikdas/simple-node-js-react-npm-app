#! /usr/bin/bash

#Take user input and store in a variable and in an array
#read -p  "Enter name: " name
#read -a name
#read -sp "Enter Password: " password
#echo ""
#echo "so the names are : ${name[0]} , ${name[1]}"
#echo $password

#--------------

#Pass arguments and retrieve as an array

#echo $0 $1 $2 $3 "> echo 0 1 2 3"
#args=("$@")
#echo $@
#echo $#

#-----------

#If else example
#if [[ $name == "kaushik" &&  $password -eq 12345 ]]
#then
#        echo "User verified $name"
#elif [[ $name == "kaushik1" && $password -eq 1234 ]]
#then
#	echo "User verified"
#else 
#	echo "Invalid login credentials"
#fi
#-----------

#Check the diles / directory exists or not
#-f = find regular file
#-d = find direntory
# -s = check the file empty or not

#echo -e "Enter the file or directort name : \c"
#read file_name

#if [ -d $file_name ]
#then
#        echo "$file_name exists"
#if [[ -s $file_name ]]; then
#        echo "$file_name not  empty"
#else
#        echo "$file_name empty"
#fi
#-------------------

#echo -e "enter file name \c "
#read my_file

#if [ -f $my_file ]
#then
#if [ -w $my_file ]
#then
#	echo "Enter SOme text to add and then type CTRL + d to exit"
#	cat >> $my_file
#else
#	echo "File does not have the execute permission"
#fi
#else
#	echo "file Does not exists"
#fi

#Dealing with Integet

#var1=24
#var2=12

#echo $(( var1 + var2 ))
#echo $(( var1 - var2 ))
#echo $(( var1 * var2 ))
#echo $(expr $var1 \* $var2 )
#echo $(expr $var1 / $var2 )

#------------------------------

#Dealing with floating Value

#var=20.4
#vars=4

#echo "scale=2;$var+$vars" | bc
#echo "scale=2;$var-$vars" | bc
#echo "scale=2;$var*$vars" | bc
#echo "scaler=2;$var/$vars" | bc
#echo "scaler=2;$var%$vars" | bc


#echo "scaler=2;sqrt($var)" | bc
#echo "scaler=2;$vars^3" | bc
#------------------------------

#Case
#cars=$1

#case $cars in
#	"bmw" )
#		echo "$cars is available" ;;
#	"mercedes" )
#		echo "$cars is available" ;;
#	"jaguar" )
#		echo "$cars is avilable" ;;
#	* )
#		echo "This $cars is not available" ;;
#esac
#-------------------

#Array
#var=('test1' 'test2' 'test3')
#unset $var[2]
#var[2]='test4'

#echo "${var[@]}"
#echo "${var[1]}"
#echo "${#var[@]}"
#echo "${!var[@]}"
#-----------------

#While Loop
#num=1

#while (( $num <= 2  ))
#while [ $num -le 20 ]
#do
#	echo "$num"
#	num=$(( num+1 ))
#	(( num++ ))
#	(( ++num ))
#	sleep 1
#	gnome-terminal &
#	xterm &
#done
#------

#Read file using loops
#1st way
#while read list
#do
#	echo $list
#done < hello1.sh

#2nd Way

#cat hello1.sh | while  read list
#do
#	echo $list
#done

#3rd Way

#while ifs='' read -r list
#do
#	echo $list
#done < hello1.sh
#-------------------

#until Loop check for flase

#var=1
#until (( $var > 10 ))
#do
#	echo $var
#	(( var++ ))
#done
#---------------

#for loops
#for i in {0..10..2} #{start..end..increment}
#for (( i=0; i<=10; i++ ))
#do
#	echo $i
#done
#-----------------

#for command in ls pwd date
#for item in *
#do
#	if [ -f $item ]
#	then
#		echo $item
#		
#	fi
#done
#-------------

#Select Loop With case

#select name in mark John kaushik Josh
#do
#	case $name in 
#		mark )
#			echo mark slected ;;
#		John )
#			echo john slectec ;;
#		kaushik )
#			echo Kaushik Selected ;;
#		Josh )
#			echo Josh Selected ;;
#		* )
#			echo "Error Please select 1-4 "
#		esac
#done

#-------------------------------
#Break and continue
#for (( i=0; i<=10; i++ ))
#do
#	if [ $i -gt 5 ]
#	if [ $i -eq 3 -o $i -eq 6 ]
#	then
#		break
#		continue
#	fi
#	echo $i
#done
#------------------

#function in Shell

#function name(){
#var=$1
#echo $var
#}

#name kaushik 
#----

function rebase(){
echo "enter proper file"
echo "entered file $0 "
}

function is_file_exits(){
local file=$1
#echo $file
[[ -f $file ]] &&  echo "1" ||  echo "2"
}
#echo $#
[[ $# -eq 0 ]] && rebase

is_file_exits $1 

var=($1 $2 $3 $4)

for  vars in $(( var ))
do
	echo $vars
done







