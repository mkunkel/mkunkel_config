txtblk='\[\e[0;30m\]' # Black
txtred='\[\e[0;31m\]' # Red
txtgrn='\[\e[0;32m\]' # Green
txtylw='\[\e[0;33m\]' # Yellow
txtblu='\[\e[0;34m\]' # Blue
txtpur='\[\e[0;35m\]' # Purple
txtcyn='\[\e[0;36m\]' # Cyan
txtwht='\[\e[0;37m\]' # White
txtrst='\[\e[0m\]'    # Text Reset

alias prod-kubectl='ax-lp-prod kubectl --kubeconfig ~/.kube/config-eks-prod'
alias nonprod-kubectl='ax-lp-nonprod kubectl --kubeconfig ~/.kube/config-eks-nonprod'
alias failover-kubectl='kubectl --kubeconfig ${HOME}/.kube/config-failover'
alias zk-kubectl='ax-planningbooking kubectl --kubeconfig ${HOME}/.kube/config-zk-sandbox'
alias lp-prod-kubectl='ax-lp-prod kubectl --kubeconfig ${HOME}/.kube/config-eks-prod-old'
alias local-kubectl='kubectl --kubeconfig ${HOME}/.kube/config'



alias wiz='wizcli auth --id q3oa3oxx3jct7oz735idom453bwreg3wjlxv5e4qm72yzu2gfpzq --secret tceyireDukt1sfLBOFZd8mbP8WdAUzUYufKk9b5Wa1SR03UnTKRJWb8enqxF3Cjg && wizcli docker scan --policy rv-ignore-unfixed-vuln-policy --policy-hits-only --image'

alias kops='/home/mikek/kops/1.24.1/kops'
alias axl='aws-okta login'
alias ax='aws-vault exec lpo -- '
alias ax-lp-prod='aws-vault exec lp-prod -- '
alias ax-lp-nonprod='aws-vault exec lp-nonprod -- '
alias ax-rvmain='aws-vault exec rvmain -- '
alias ax-sandbox='aws-vault exec rv-lp-sandbox -- '
alias ax-spp='aws-vault exec spp -- '
alias ax-planningbooking='aws-vault exec planning-booking -- '
alias login-ecr='ax aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 089022728777.dkr.ecr.us-east-1.amazonaws.com'


#alias aws-mfa='aws-okta exec lp -- '

alias pip='python3 -m pip'
alias adr='_(){ docker run --rm -it -v "/etc/passwd:/etc/passwd" -v "/etc/groups:/etc/groups" -v "$(pwd)":/docs --user "$(id -u):$(id -g)" extenda/adr-tools "$@"; }; _'
alias bigfiles='sudo du -ch / | sort -h | tail -n 30'
alias btfix='sudo rmmod btusb && sleep 2 && sudo modprobe btusb'
alias sonicwall='yes | ~/ne2/netExtenderClient/netExtender -u mikek -p "&9D09L$FvYty^@n4xr0^c" -d LPWORLD 208.104.199.169:4433'
alias dispatch-versions='knife ssh role:dispatch_production -a ipaddress "sudo dpkg -l dispatch-canary | grep amd" | awk '"'"'{ printf "%-12s - %s\n", $1, $4 }'"'"''
alias locklab='ssh majorwood@zebrahuddle.com "tail -n 20 /home/majorwood/bin/locklab.log"'
alias CAPS='xdotool key Caps_Lock'
alias caps='xdotool key Caps_Lock'
alias bdubs_bomb='wmctrl -a "Lonely Planet" && cat /home/mikek/bdubs.macro | xmacroplay ":0.0"'
alias kubeval='_(){ docker run -it -v `pwd`:/tmp garethr/kubeval /tmp/$1 --strict; }; _'
alias lp='_(){ cd /home/mikek/lp/$1; }; _'
alias insult='curl -s -XGET http://insult-bot.herokuapp.com/plain | xclip -selection c && xclip -selection c -o && echo'
alias listen='netcat -ul'
alias webbrowser-app='google-chrome'
alias vpn='sudo openvpn --config ~/openvpn/client.ovpn'
alias lpx='sudo openvpn --config ~/openvpn/lpxclient.ovpn'
alias clip='xclip -o -selection c'
alias rebase='gcom && gpom && git checkout - && git rebase $(main_branch)'
alias push='rebase && git push --force-with-lease origin "$(git rev-parse --abbrev-ref HEAD)"'
alias force-push='rebase && git push --force-with-lease origin "$(git rev-parse --abbrev-ref HEAD)"'
alias hibernate='amixer -q -D pulse sset Master mute;sudo pm-hibernate; gnome-screensaver-command -l'
alias docker-ip="docker inspect --format '{{ .NetworkSettings.IPAddress }}' `docker ps | grep 3000/tcp | awk '{print $1}'`"
alias docker-stop-all='docker stop $(docker ps -a -q)'
alias docker-destroy-all='docker stop $(docker ps -a -q) && docker rm $(docker ps -a -q) && docker volume prune -f && docker rmi $(docker images -q)'
alias main_branch='git remote show origin | grep "HEAD branch: " | sed -e s/"HEAD branch: "/""/g'
alias mkcd='_(){ mkdir $1; cd $1; }; _'
alias ls="ls --color=auto"
alias  l='ls -a'
alias la='ls -a'
alias ll='ls -al'
alias  b='cd ..'
alias  s='subl .'
alias  c='clear'
alias fix-touchpad='synclient TouchpadOff=0'
alias exity='exit'
alias gt='gnome-terminal'
alias sass!='sass --watch public/scss:public/css'
alias haml!='ruby ~/Code/Scripts/watch_haml.rb'
alias dcp='. ~/bin/dcp'
alias cpcd='. ~/bin/cpcd'
alias pss='python -m SimpleHTTPServer'
alias rss='~/Code/Scripts/ruby_server.rb'
alias tools='~/bin/tools.sh'
alias deploy='~/bin/deploy'
alias exp='. ~/bin/exp'
alias prj='ruby ~/Code/Scripts/copy_template.rb'
alias startmongo='cd ~ && mongod --config ~/Code/Scripts/mongodb.conf'
alias log='git logg'
alias ga='git add'
alias gap='git add -p'
alias gb='git branch'
alias gc='git commit -v'
alias gc-amend='git commit --amend -C HEAD'
alias gca='git commit --amend --no-edit'
alias gci='git commit -v --interactive'
alias gco='git checkout'
alias gcom='git checkout $(main_branch)'
alias gcod='git checkout develop'
alias gcp='git cherry-pick'
alias gd='git diff'
alias gdc='git diff --cached'
alias gl='git log --name-status'
alias gls='git log --graph --pretty=format:'\''%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr)%Creset'\'' --abbrev-commit --date=relative'
alias glo='git log --oneline'
alias gpl='git pull --rebase'
alias gpom='git pull origin $(main_branch)'
alias gpod='git pull origin develop'
alias gpl-with-stash='gss && gpl && gsp'
alias gps='git push'
alias gpsu='git push -u origin HEAD'
alias grm='git rebase master'
alias gromh='git reset origin/master --hard'
alias gs='git status'
alias gsa='git stash apply'
alias gsd='git svn dcommit'
alias gsl='git stash list'
alias gsu='git stash -u'
alias gsp='git stash pop'
alias gss='git stash save'

source ~/.profile

function branch
{
  git status 2> /dev/null | ruby ~/Scripts/branch.rb
}

function google {
     Q="$@";
     GOOG_URL='https://www.google.com/search?q=';
     stream=$(exo-open "${GOOG_URL}${Q//\ /+}" | grep -oP '\/url\?q=.+?&amp' | sed 's|/url?q=||; s|&amp||');
     echo -e "${stream//\%/\x}";
}

_lp () { local cur; cur=${COMP_WORDS[$COMP_CWORD]}; COMPREPLY=( $( compgen -d -- $HOME/lp/ | grep $cur | xargs --no-run-if-empty -l1 basename ) ); return 0; }
complete -F _lp lp

if grep -q "microsoft" /proc/version > /dev/null 2>&1; then
    if service docker status 2>&1 | grep -q "is not running"; then
        wsl.exe --distribution "${WSL_DISTRO_NAME}" --user root \
            --exec /usr/sbin/service docker start > /dev/null 2>&1
    fi
fi

export DISPLAY=:0
#export BROWSER=/mnt/c/Program\ Files/Google/Chrome/Application/chrome.exe
source /home/mikek/.awsvault/envvars

PS1="$txtcyn\u@\h$txtpur|$txtylw\W$txtgrn\$(branch)$txtcyn:$txtrst"
export PATH=$PATH:/usr/local/bin/redis-stable/src
export GEM_HOME=$HOME/.gem
export GEM_PATH=$HOME/.gem

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

[[ -f ~/.bash-preexec.sh ]] && source ~/.bash-preexec.sh
preexec() { /home/mikek/bin/alias-warning $1; }

export PATH="/bin:/usr/bin:/usr/local/bin:$HOME/.local/bin:$HOME/.cargo/bin:$HOME/.bin:/home/mikek/.krew/bin:/home/mikek/go/bin:$PATH"
export EDITOR=nano
#export BROWSER="/mnt/c/Program\ Files/Google/Chrome/Application/chrome.exe"
export PATH="$HOME/.tfenv/bin:$PATH"
