#!/bin/bash

clear

echo -e "\e[1;34m
 [+] Desktop Environment\e[1;32m

                         ....:-==..
                      ...===++++--.
         ...       ...--======+==-.
        .:=..   ..--=-===========:.
       ..+*:. .:##+=--=====-=-:..  
      ..*###..*###+=-------===:..  
      ..#%#*=%##*=-==----====...   
      ..#%%#%#**+=--:::---==...    
       .*%%%###*=-::-==-:::.       
..==-:..#%%%##**=-::---=+:.       \e[36m██████╗ ███████╗\e[32m
-#+=+##%%%%%###+-::------.       \e[36m██╔═══██╗██╔════╝\e[32m
.:%*-.*#%%%###*---------..       \e[36m██║   ██║███████╗\e[32m
.::..-*#%%%@%#--------...        \e[36m██║   ██║╚════██║\e[32m
     ..-#%%%@@@=-----..          \e[36m╚██████╔╝███████║\e[32m
       ..#%@@@@@+--:..           \e[36m ╚═════╝ ╚══════╝\e[32m
        ..#@#@@@@*..               
        .-*-=#:%@@=                
       .-*-#+: .%@@:               
               ..%@%..             
                ..#%%:.            
                  .*%#=..          
                   .-#+*..         
                    ..:+=-..       
                      ....:..      
\e[0m"

echo $logo
echo ""

read -p $'\e[1;33m [+] continue for press [y/n] : \e[0m' pms

if [[ $pms = "y" ]] || [[ $pms = "Y" ]] || [[ $pms = "" ]]; 
then
        clear
        echo ""
        echo -e "\e[1;34m [+] parrot os installing...\e[0m"
        pkg install wget openssl-tool proot -y && hash -r && wget https://raw.githubusercontent.com/EXALAB/AnLinux-Resources/master/Scripts/Installer/Parrot/parrot.sh && bash parrot.sh
        ./start-parrot.sh
        wget https://raw.githubusercontent.com/EXALAB/AnLinux-Resources/master/Scripts/DesktopEnvironment/Apt/Xfce4/de-apt-xfce4.sh --no-check-certificate && bash de-apt-xfce4.sh
        
        echo -e "\e[1;35m [*] open any vnc viewer and enter localhost:1 and password\e[0m"
        
elif [[ $pms = "n" ]] || [[ $pms = "N" ]];
then
        echo -e "\e[1;31m [!] program exit\e[0m"
        exit
else
        echo -e "\e[1;31m [!] enter valid value"
        exit
fi