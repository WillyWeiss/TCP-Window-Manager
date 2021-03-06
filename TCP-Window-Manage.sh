

#!/bin/bash

## BBR Algorithm Method
bbr(){
clear
  printf "BBR stands for Bottleneck Bandwidth and RTT.\nTCP BBR is a TCP congestion control algorithm developed by Google. \nIt tackles shortcomings of traditional TCP congestion control algorithms (Reno or CUBIC).\nIt can achieve orders of magnitude higher bandwidth and lower latency. \n\n"
echo -n "Are you sure you whant to use BBR now(y/n)? "
old_stty_cfg=$(stty -g)
stty raw -echo
answer=$( while ! head -c 1 | grep -i '[ny]' ;do true ;done )
stty $old_stty_cfg
if echo "$answer" | grep -iq "^y" ;then
    cp /etc/sysctl.conf sysctl.conf
    fq="net.core.default_qdisc=fq"
    bbr="net.ipv4.tcp_congestion_control=bbr"
    echo "$fq" >> sysctl.conf
    echo "$bbr" >> sysctl.conf
    printf "YOU NEED SUDO ACCESS FOR THIS OPERATION.\n Please input your password\n"
    sudo cp sysctl.conf /etc/sysctl.conf
    rm sysctl.conf
    sudo sysctl -p
    MainMenu
else
    echo "NO CHANGES HAVE BEEN MADE."
    echo "Returning to MainMenu"
    sleep 2
    MainMenu
fi
}
## CUBIC Algorithm Method
Cubic(){
clear
  printf "One of the best, most recommended TCP options available. Less aggressive, works according to the event. Used in Linux.\n\n"
echo -n "Are you sure you whant to use CUBIC now(y/n)? "
old_stty_cfg=$(stty -g)
stty raw -echo
answer=$( while ! head -c 1 | grep -i '[ny]' ;do true ;done )
stty $old_stty_cfg
if echo "$answer" | grep -iq "^y" ;then
    touch tcp_congestion_control
    cubic="cubic"
    sed -i "1s/.*/$cubic/" tcp_congestion_control 
    printf "YOU NEED SUDO ACCESS FOR THIS OPERATION.\n Please input your password\n"
    sudo cp tcp_congestion_control /proc/sys/net/ipv4/tcp_congestion_control
    rm tcp_congestion_control
    MainMenu
else
     echo "NO CHANGES HAVE BEEN MADE."
    echo "Returning to MainMenu"
    sleep 2
    MainMenu
fi
}
## RENO Algorithm Method
Reno(){
clear
  printf "Limits unknown packets being receive but if 3 of the same packets are received, it will halve the window, instead of reducing it to one.\n It changes the slow start threshold equal to that of the congestion window.\n\n"
echo -n "Are you sure you whant to use Reno now(y/n)? "
old_stty_cfg=$(stty -g)
stty raw -echo
answer=$( while ! head -c 1 | grep -i '[ny]' ;do true ;done )
stty $old_stty_cfg
if echo "$answer" | grep -iq "^y" ;then
    touch tcp_congestion_control
    reno="reno"
    sed -i "1s/.*/$reno/" tcp_congestion_control 
   printf "YOU NEED SUDO ACCESS FOR THIS OPERATION.\n Please input your password\n"
    sudo cp tcp_congestion_control /proc/sys/net/ipv4/tcp_congestion_control
    sudo rm tcp_congestion_control
    MainMenu
else
      echo "NO CHANGES HAVE BEEN MADE."
    echo "Returning to MainMenu"
    sleep 2
    MainMenu
fi
}
## VEGAS Algorithm Method
Vegas(){
clear
  printf "One of the smoothest TCP algorithms(next to cubic), it increases the timeout delay for packets, which allows more to be received, but at a higher rate.\n It also has set timeouts, which helps with speed because it’s constantly being refreshed.\n\n"
echo -n "Are you sure you whant to use Reno now(y/n)? "
old_stty_cfg=$(stty -g)
stty raw -echo
answer=$( while ! head -c 1 | grep -i '[ny]' ;do true ;done )
stty $old_stty_cfg
if echo "$answer" | grep -iq "^y" ;then
    touch tcp_congestion_control
    vegas="vegas"
    sed -i "1s/.*/$vegas/" tcp_congestion_control 
   printf "YOU NEED SUDO ACCESS FOR THIS OPERATION.\n Please input your password\n"
    sudo cp tcp_congestion_control /proc/sys/net/ipv4/tcp_congestion_control
    sudo rm tcp_congestion_control
    MainMenu
else
   echo "NO CHANGES HAVE BEEN MADE."
    echo "Returning to MainMenu"
    sleep 2
    MainMenu
fi
}

## HYBLA Algorithm Method
Hybla(){
clear
  echo "Penalizes connections that use satellite radio. Not usually used with phones.\n\n"
echo -n "Are you sure you whant to use Reno now(y/n)? "
old_stty_cfg=$(stty -g)
stty raw -echo
answer=$( while ! head -c 1 | grep -i '[ny]' ;do true ;done )
stty $old_stty_cfg
if echo "$answer" | grep -iq "^y" ;then
    touch tcp_congestion_control
    hybla="hybla"
    sed -i "1s/.*/$hybla/" tcp_congestion_control 
   printf "YOU NEED SUDO ACCESS FOR THIS OPERATION.\n Please input your password\n"
    sudo cp tcp_congestion_control /proc/sys/net/ipv4/tcp_congestion_control
    rm tcp_congestion_control
    MainMenu
else
     echo "NO CHANGES HAVE BEEN MADE."
    echo "Returning to MainMenu"
    sleep 2
    MainMenu
fi
}
## Westwood Algorithm Method
Westwood(){
clear
   printf "A newer version of Reno, and another commonly used one. \nIt controls parameters better, helping out streaming and overall quality of browsing the internet.\n One of the most fair algorithms out there, and is one of the most efficient algorithms to date.\n\n"
echo -n "Are you sure you whant to use Reno now(y/n)? "
old_stty_cfg=$(stty -g)
stty raw -echo
answer=$( while ! head -c 1 | grep -i '[ny]' ;do true ;done )
stty $old_stty_cfg
if echo "$answer" | grep -iq "^y" ;then
    touch tcp_congestion_control
    west="westwood"
    sed -i "1s/.*/$west/" tcp_congestion_control 
   printf "YOU NEED SUDO ACCESS FOR THIS OPERATION.\n Please input your password\n"
    sudo cp tcp_congestion_control /proc/sys/net/ipv4/tcp_congestion_control
    rm tcp_congestion_control
    MainMenu
else
     echo "NO CHANGES HAVE BEEN MADE."
    echo "Returning to MainMenu"
    sleep 2
    MainMenu
fi
}
## LowPriority Algorithm Method
LowPriority(){
clear
   printf "A distributed algorithm whose goal is to utilize only the excess network bandwidth as compared to the “fair share” of bandwidth as targeted by TCP.\n The key mechanisms unique to TCP-LP congestion control are the use of one-way packet delays for early congestion indications and a TCP-transparent congestion avoidance policy.\n\n"
echo -n "Are you sure you whant to use Reno now(y/n)? "
old_stty_cfg=$(stty -g)
stty raw -echo
answer=$( while ! head -c 1 | grep -i '[ny]' ;do true ;done )
stty $old_stty_cfg
if echo "$answer" | grep -iq "^y" ;then
    lowp="low priority"
    sed -i "1s/.*/$lowp/" tcp_congestion_control 
   printf "YOU NEED SUDO ACCESS FOR THIS OPERATION.\n Please input your password\n"
    sudo cp tcp_congestion_control /proc/sys/net/ipv4/tcp_congestion_control
    MainMenu
else
      echo "NO CHANGES HAVE BEEN MADE."
    echo "Returning to MainMenu"
    sleep 2
    MainMenu
fi
}
## BIC Algorithm Method
BIC(){
clear
    printf "BIC is optimized for high speed networks with high latency: so-called “long fat networks”.\n It has a unique congestion window (cwnd) algorithm.\n This algorithm tries to find the maximum where to keep the window at for a long period of time, by using a binary search algorithm.\n\n"
echo -n "Are you sure you whant to use Reno now(y/n)? "
old_stty_cfg=$(stty -g)
stty raw -echo
answer=$( while ! head -c 1 | grep -i '[ny]' ;do true ;done )
stty $old_stty_cfg
if echo "$answer" | grep -iq "^y" ;then
    touch tcp_congestion_control
    bic="bic"
    sed -i "1s/.*/$bic/" tcp_congestion_control 
   printf "YOU NEED SUDO ACCESS FOR THIS OPERATION.\n Please input your password\n"
    sudo cp tcp_congestion_control /proc/sys/net/ipv4/tcp_congestion_control
    rm tcp_congestion_control
    MainMenu
else
    MainMenu
fi
}

## Main Menu Method
MainMenu(){
clear
active_congestion=$(sysctl net.ipv4.tcp_congestion_control | grep -o =.*
)
echo "Welcome to  Linux TCP Congestion Control-Panel"
echo ""
echo "The current Congestion Control is set to $active_congestion"
printf ">>>MAIN MENU<<<\n"
PS3='Please enter your choice: '
options=("BBR" "CUBIC" "Reno" "Vegas" "Hybla" "Westwood" "Low Priority" "Binary Increase Congestion control (BIC)" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "BBR")
            bbr
            ;;
         "CUBIC")
           Cubic
            ;;
        "Reno")
            Reno
            ;;
        "Vegas")
          Vegas
            ;;
        "Hybla")
            Hybla
            ;;
        "Westwood")
          Westwood
            ;;   
        "Low Priority")
            LowPriority
            ;;
        "Binary Increase Congestion control (BIC)")
            BIC
            ;;    
        "Quit")
            exit
            ;;
        *) echo "invalid option $REPLY";;
    esac

done
}
## Start the program
MainMenu
## End of File
