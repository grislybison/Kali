# Creates space above new aliases in .zshrc file and labels section
#!/bin/bash
cat zshrc >> ~/.zshrc

echo ''>> ~/.zshrc
echo 'User created aliases' >> ~/.zshrc
# adds alias for quick update via CLI
echo "alias update='apt update ; apt -y upgrade ; apt -y dist-upgrade ; apt -y autoremove ; apt -y autoclean'" >> ~/.zshrc
#shows external IP, VM IP, runs netstat, and pings google DNS
echo 'alias n="echo -n '"'External IP: '"' && curl ifconfig.me; echo; echo -n '"'Internal IP: '"'; echo; echo cat /etc/resolv.conf | awk '"'FNR ==2 {print "'$2'"}'"';
hostname -I | awk '"'{print "'$1'"}'"';echo; netstat -antp; echo; ping -c 3 8.8.8.8"' >> ~/.zshrc
#reloads .zshrc 
echo 'source ~/.zshrc'
