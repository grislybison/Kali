

# -----------------------------------------------------------------------------------------------

export dns="echo -n 'DNS: '; cat /etc/resolv.conf | awk '"'FNR ==2 {print $2}'"'"
export extip="echo -n 'External IP: ' && curl ifconfig.me"
export ip="echo -n 'Internal IP: '; hostname -I | awk '{print $1}'"
export mac="echo -n 'MAC: ';  cat /sys/class/net/eth0/address"

#network check
alias n="$external; echo; $internal; $dns; $mac; echo; netstat -antp; echo; ping -c 3 8.8.8.8"

# adds alias for quick update via CLI
alias update='apt update ; apt -y upgrade ; apt -y dist-upgrade ; apt -y autoremove ; apt -y autoclean'
