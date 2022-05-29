#enters line after last .zshrc entry
echo ''>> ~/.zshrc
echo 'User created aliases' >> ~/.zshrc
# adds alias for quick update via CLI
echo "alias update='apt update ; apt -y upgrade ; apt -y dist-upgrade ; apt -y autoremove ; apt -y autoclean'" >> ~/.zshrc
#shows external IP, VM IP, runs netstat, and pings google DNS
echo 'alias n="echo -n '"'External IP: '"' && curl ifconfig.me; echo; echo -n '"'Internal IP: '"'; hostname -I | awk '"'{print "'$1'"}'"'; echo; echo -n '"' MAC: '"':  cat /sys/class/net/eth0/address; 
echo -n '"'DNS: '"'; cat /etc/resolv.conf | awk '"'FNR ==2 {print "'$2'"}'"';echo; netstat -antp; echo; ping -c 3 8.8.8.8"' >> ~/.zshrc
#reloads .zshrc 
echo 'source ~/.zshrc'
