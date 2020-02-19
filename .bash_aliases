#Git
alias glog='git log --oneline --abbrev-commit --all --graph --decorate --color'

#Wordpress
alias fix-wordpress-perms='chmod -R a=r,u+w,a+X '

#Fluff
alias flag='sudo bash /home/zach/.dotfiles/fixlag'
alias gameon='xinput --set-prop "Logitech Gaming Mouse G502" "Device Accel Constant Deceleration" 1.3'
alias pauto='sudo powertop --auto-tune'
alias apt-get='sudo apt-get'
alias apt="sudo apt"
alias untar="tar xvf"
alias sourcenode="source ~/node/bin/activate"
alias cd..="cd .."
alias fhere="find . -name "
alias psg="ps aux | rg -v rg | rg -i -e VSZ -e"
alias myIP="curl http://ipecho.net/plain"
alias reconfCompton="pkill -USR1 compton"
alias duf="du -ch | sort -h"
alias gcan="git commit --amend --no-edit --verbose"

#Improvements
alias mv="mv -i"
alias df="df -Tha --total"
alias free="free -mt"
alias ps="ps auxf"
alias mkdir="mkdir -p"
alias wget="wget -c"
alias cat="bat"
alias grep="rg"
alias fd="fdfind"

#Docker 
#remove all exited containers
alias dockerRemoveAllExited="sudo docker ps -a | grep Exit | cut -d ' ' -f 1 | xargs sudo docker rm"
#get container IP
alias dockerContainerIP="docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}'"


#infiot shortcuts
source /infiot/bash-shortcuts
