#!/bin/bash

# Welcome to the core of the file. Sorry, but my aim was not to make it neat for you to read... so just get over it.
# This script can either be run in headless mode or with a menu. Use -m for menu or type menu.

# Clear the sceen so nothing else is in the way.
clear

# Lets start the colors.
red=$'\e[1;31m'
grn=$'\e[1;32m'
yel=$'\e[1;33m'
blu=$'\e[1;34m'
mag=$'\e[1;35m'
cyn=$'\e[1;36m'
end=$'\e[0m'

# Progression bars.
dot(){
    for ((i = 0; i < $1; i++)); do echo -n "."; sleep 0.02; done; echo -e '[\033[00;32mCOMPLETE\033[00;0m]';sleep 0.6
}
doterror(){
    for ((i = 0; i < $1; i++)); do echo -n "."; sleep 0.02; done; echo -e "[${red}ERROR${end}]";sleep 0.6
}

# Print our logo.
logo(){
cat <<'END'
          .                                                      .
        .n                   .                 .                  n.
  .   .dP                  dP                   9b                 9b.    .
 4    qXb         .       dX                     Xb       .        dXp     t
dX.    9Xb      .dXb    __                         __    dXb.     dXP     .Xb
9XXb._       _.dXXXXb dXXXXbo.                 .odXXXXb dXXXXb._       _.dXXP
 9XXXXXXXXXXXXXXXXXXXVXXXXXXXXOo.           .oOXXXXXXXXVXXXXXXXXXXXXXXXXXXXP
  `9XXXXXXXXXXXXXXXXXXXXX'~   ~`OOO8b   d8OOO'~   ~`XXXXXXXXXXXXXXXXXXXXXP'
    `9XXXXXXXXXXXP' `9XX'          `98v8P'          `XXP' `9XXXXXXXXXXXP'
        ~~~~~~~       9X.          .db|db.          .XP       ~~~~~~~
                        )b.  .dbo.dP'`v'`9b.odb.  .dX(
                      ,dXXXXXXXXXXXb     dXXXXXXXXXXXb.
                     dXXXXXXXXXXXP'   .   `9XXXXXXXXXXXb
                    dXXXXXXXXXXXXb   d|b   dXXXXXXXXXXXXb
                    9XXb'   `XXXXXb.dX|Xb.dXXXXX'   `dXXP
                     `'      9XXXXXX(   )XXXXXXP      `'
                              XXXX X.`v'.X XXXX
                              XP^X'`b   d'`X^XX
                              X. 9  `   '  P )X
                              `b  `       '  d'
                               `             '
END
}

# Now the fun shit begins.
logo
menu(){

echo "<========================================>"
echo "    Tasks"
echo "<========================================>"
echo "[1] Install Backdoor"
echo "[2] Run Backdoor"
echo
echo "[3] Run Project - Desktop"
echo "[4] Run Project - Android"
echo
echo "[5] Assemble Project"
echo "[6] Build Project"
echo "[7] Distribute to Zip"
echo
echo "[8] Network check"
echo "[9] Status"
echo
echo "[0] exit"
echo "<========================================>"

read -p "Please Select A Number: " mc
return $mc
}

showmenu(){
while [[ "$m" != "0" ]]
do
    if [[ "$m" == "1" ]]; then
        backdoor
    elif [[ "$m" == "2" ]]; then
        runbackdoor
    elif [[ "$m" == "3" ]]; then
        run_program
    elif [[ "$m" == "4" ]]; then
        run_android
    elif [[ "$m" == "5" ]]; then
        assemble_project
    elif [[ "$m" == "6" ]]; then
        build_prtoject
    elif [[ "$m" == "7" ]]; then
        dist_project
    elif [[ "$m" == "8" ]]; then
        header
        networkcheck
    elif [[ "$m" == "9" ]]; then
        header
        status
    fi
    echo
    echo
    logo
    menu
    m=$?
done

exit 0;
}
header(){
    echo -n "Collecting INFO"
  dot 43
  echo -e " [+] Instruction: ${mag}$1${end}"
}
backdoor(){
    echo -n "Collecting INFO"
  dot 43
  echo -e " [+] Instruction: ${mag}$1${end}"
}
runbackdoor(){
    echo -n "Collecting INFO"
  dot 43
  echo -e " [+] Instruction: ${mag}$1${end}"
}
networkcheck(){
    echo -n "Collecting INFO"
  dot 43
  echo -e " [+] Instruction: ${mag}$1${end}"
}
status(){
    echo -n "Collecting INFO"
  dot 43
  echo -e " [+] Instruction: ${mag}$1${end}"
}


# The different arguements that can be used.
if  [ $1 == "-m" ]; then
    header
    showmenu
elif [ $1 == "menu" ]; then
    header
    showmenu
elif [ $1 == "-b" ]; then
    header
    backdoor
elif [ $1 == "backdoor" ]; then
    header
    backdoor
elif [ $1 == "-rb" ]; then
    header
    runbackdoor
elif [ $1 == "runbackdoor" ]; then
    header
    runbackdoor
elif [ $1 == "-n" ]; then
    header
    networkcheck
elif [ $1 == "networkcheck" ];
    header
    networkcheck
elif [ $1 == "-s" ]; then
    header
    status
elif [ $1 == "status" ]; then
    header
    status
else
    #Clearly the user doesnt have a command... so... give them the menu.
    showmenu.