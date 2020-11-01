#!/bin/bash





cat dj.txt









echo "EMAIL"
read email
echo "NAME"
read name
echo "MACHINE NAME !"
read id1
echo "You Are Done !"


echo "-------------------------------------------------------------------"
echo Conform The Details !!!
echo "Email : $email "
echo "Name : $name"
echo "ID : $id1"
echo "Press y To Cont . "
read yn
VAR="y"

tocken=($(shuf -i 1000000000-9999999999 -n 1))

echo "--------------------------------------------------------------------"
echo "Performing Scan On $id1"
echo "$name ,Don't Worry :) We Will Mail You The Results To $email"
echo "--------------------------------------------------------------------"
if [ "$yn" = "$VAR" ];
then
    
    

     cat comp.txt




    echo "$id1 , $tocken" > temp.txt
    cat universal.txt temp.txt > universal.txt
    rm temp.txt

    echo -e "Subject: Successfully Scan Completed !! \nDear $name ,\n\nYour $id1  scan has completed with ID 22331\n\nYour Unique Token Id is $tocken (Token is very important when you are cross checking )\n\nFeel free to contact us if you have any problem ! \n\n\nWith Regards\nManasa Vemuri\nVIT-AP\nwww.manasa.com\n\nSCAN_RESULTS OF $id1\n\n " > $id1.txt
    sudo clamscan > $tocken.txt
    
    sudo cat $id1.txt $tocken.txt | ssmtp $email
    
 
    sudo cat $tocken.txt | grep FOUND > noninfect.txt
    sudo wc noninfect.txt > noninfect.txt
    value=$(<noninfect.txt)
    value1="0 0 0 noninfect.txt"
    if [ "$value" = "$value1" ];
    then
         echo -e "Subject:[URGENT] You $id1 is Fully Safe!! \nDear $name ,\n\nYour $id1  scan has completed ,\n\nYOUR SYSTEM SCAN RESULTS ARE VERIFIED WITH OUR DATA , YOU SYSTEM IS TOTALLY SAFE AND NO MALWARE FOUND ! \n\n\nWith Regards\nManasa Vemuri\nVIT-AP\nwww.manasa.com\n\n " > mail2.txt
          sudo cat mail2.txt  | ssmtp $email

    else
        echo -e "Subject: [URGENT] Your $id1 Has Some Malware Please Take Action!! \nDear $name ,\n\nYour $id1  scan has completed ,\n\nYOUR SYSTEM SCAN RESULTS ARE VERIFIED WITH OUR DATA , YOU SYSTEM IS NOT SAFE PLEASE TAKE ANI MALWARE ACTION TO GET RID OF DATA LOSS ! \n\n\nWith Regards\nManasa Vemuri\nVIT-AP\nwww.manasa.com\n\n " > mail2.txt
          sudo cat mail2.txt  | ssmtp $email
    fi
    echo "$id1.txt $tocken.txt ate two aditional files are created , it has sca results for further ref. press "y" to remove all aditional files"
    read dj123
    if [ "dj123" = "y" ];
    then
        sudo rm -f $id1.txt
        sudo rm -f $tocken.txt
    fi
    echo "File Created ! and Email Sent ! "
fi
