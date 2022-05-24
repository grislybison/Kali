echo "alias update='apt update ; apt -y upgrade ; apt -y dist-upgrade ; apt -y autoremove ; apt -y autoclean'" >> ~/.zshrc
echo "alias n="echo -n 'External IP: '  && curl ifconfig.me ; echo; echo -n 'VM IP: ' && hostname -I | awk '{print $1}'; echo; netstat -antp; echo; ping -c 3 8.8.8.8"" >> ~/.zshrc
echo "source ~/.zshrc"


