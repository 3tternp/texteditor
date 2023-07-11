#!/bin/bash

while true ;
do
echo -e "\033[34m"
echo -e "Choose the operation you want to  perform ? ""\033[34m"
echo -e "\e[32m""1. Install Sublime Text editor" 
echo -e "\e[31m""2. Remove Sublime Text editor " 
echo -e "\e[32m""3. Install visual code editor"
echo -e "\e[31m""4. Remove visual code editor " 
echo -e "\e[32m""5. Install atom code editor" 
echo -e "\e[31m""6. Remove atom code editor " 
echo -e "\e[92m"

read count
if [ $count -eq 1 ]
then
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get update && 
sudo apt-get install sublime-text -y 
exit 

elif [ $count -eq 2 ]
then
sudo apt-get remove sublime-text -y 
exit
elif [ $count -eq 3 ]
then
sudo apt update -y
sudo apt-get dist-upgrade -y
sudo apt install software-properties-common apt-transport-https wget -y
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
sudo apt update -y 
sudo apt install code -y
exit
elif [ $count -eq 4 ]
then
sudo apt-get remove code -y 
exit
elif [ $count -eq 5 ]
then
sudo wget https://github.com/atom/atom/releases/download/v1.60.0/atom-amd64.deb -O atom.deb
sudo dpkg -i atom.deb
sudo apt-get install -f -y
exit
elif [ $count -eq 6 ]
then
sudo apt-get autoremove atom -y 
exit
else
 
exit

fi
done

