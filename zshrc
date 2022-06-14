

# -----------------------------------------------------------------------------------------------

dhcp=$(ip r | grep dhcp | awk '{print $3}')
dns=$(grep 'nameserver' /etc/resolv.conf | awk '{print $2}')
extip=$(curl -s http://ifconfig.me)
ip=$(hostname -I | awk '{print $1}')
mac=$(ip a | grep ether | awk '{print $2}')

alias n='echo;
echo -n "External IP: "$extip ; echo ;
echo -n "Internal IP: "$ip ; echo ;
echo -n "MAC address: "$mac ; echo ;
echo -n "DNS:         "$dns ; echo ;
echo -n "DCHP:        "$dhcp; echo; 
echo ; netstat -antp; echo ;
ping -c3 google.com'

alias update='apt update ; apt -y upgrade ; apt -y dist-upgrade ; apt -y autoremove ; apt -y autoclean'
alias www='python -m http.server 80'
