echo "alias update='apt update ; apt -y upgrade ; apt -y dist-upgrade ; apt -y autoremove ; apt -y autoclean'" >> ~/.zshrc
echo "alias n='curl ifconfig.me; echo; hostname -I | awk "{print $1}"; echo; ping -c 3 8.8.8.8'" >> ~/.zshrc
source ~/.zshrc
