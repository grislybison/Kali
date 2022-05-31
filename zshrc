dns = 'echo -n "DNS: " cat /etc/resolv.conf | awk 'FNR ==2 {print $2}''
external ="echo -n 'External IP: ' && curl ifconfig.me"
internal ="echo -n 'Internal IP: '; hostname -I | awk '{print $1}'"
mac ="echo -n 'MAC: ';  cat /sys/class/net/eth0/address"

#network check
alias n="external; echo; internal; echo; dns; echo; echo; mac; echo; netstat -antp; echo; ping -c 3 8.8.8.8"

# adds alias for quick update via CLI
alias update='apt update ; apt -y upgrade ; apt -y dist-upgrade ; apt -y autoremove ; apt -y autoclean'
