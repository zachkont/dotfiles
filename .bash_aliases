#Git
alias glog='git log --oneline --abbrev-commit --all --graph --decorate --color'

#Wordpress
alias fix-wordpress-perms='chmod -R a=r,u+w,a+X '

#Fluff
alias checklag='sudo rdmsr -a 0x19a'
alias fixlag='sudo wrmsr -a 0x19a 0x0'
alias prelag='sudo modprobe msr'
alias gameon='xinput --set-prop "Logitech Gaming Mouse G502" "Device Accel Constant Deceleration" 1.3'
alias pauto='sudo powertop --auto-tune'
alias apt-get='sudo apt-get'
alias apt="sudo apt"
alias untar="tar xvf"
alias sourcenode="source ~/node/bin/activate"
alias cd..="cd .."
alias fhere="find . -name "
alias psg="ps aux | grep -v grep | grep -i -e VSZ -e"
alias myIP="curl http://ipecho.net/plain"

#Improvements
alias mv="mv -i"
alias df="df -Tha --total"
alias du="du -ach | sort -h"
alias free="free -mt"
alias ps="ps auxf"
alias mkdir="mkdir -p"
alias wget="wget -c"

#Docker 
#remove all exited containers
alias dockerRemoveAllExited="sudo docker ps -a | grep Exit | cut -d ' ' -f 1 | xargs sudo docker rm"
#get container IP
alias dockerContainerIP="docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}'"
