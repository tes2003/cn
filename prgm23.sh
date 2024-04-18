#!/bin/bash
while true
do
clear
echo "Menu:"
echo "1.List current directory"
echo "2.print working directory"
echo "3.display date"
echo "4.display users logged in"
echo "5.exit"
read -p "Enter your choice:" choice
case $choice in
1)
ls -l
read -p "press enter to continue"
;;
2)
pwd
read -p "Press enter to continue"
;;
3)
date
read -p"press enter to continue"
;;
4)
who
read -p"press enter to continue"
;;
5)
exit 0
;;
*)
echo "Invalidchoice.press enter to try again"
read
;;
esac
done
