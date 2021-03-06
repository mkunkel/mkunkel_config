txtblk='\[\e[0;30m\]' # Black
txtred='\[\e[0;31m\]' # Red
txtgrn='\[\e[0;32m\]' # Green
txtylw='\[\e[0;33m\]' # Yellow
txtblu='\[\e[0;34m\]' # Blue
txtpur='\[\e[0;35m\]' # Purple
txtcyn='\[\e[0;36m\]' # Cyan
txtwht='\[\e[0;37m\]' # White
txtrst='\[\e[0m\]'    # Text Reset

alias qa-kubectl='kubectl --kubeconfig ${HOME}/.kube/config-qa'
alias staging-kubectl='kubectl --kubeconfig ${HOME}/.kube/config-staging'
alias prod-kubectl='kubectl --kubeconfig ${HOME}/.kube/config-production'

alias lp='_(){ cd /home/mikek/lp/$1; }; _'
alias insult='curl -s -XGET http://insult-bot.herokuapp.com/plain | xclip -selection c && xclip -selection c -o && echo'
alias listen='netcat -ul'
alias webbrowser-app='google-chrome'
alias vpn='sudo openvpn --config ~/openvpn/client.ovpn'
alias clip='xclip -o -selection c'
alias rebase='git checkout master && git pull origin master && git checkout - && git rebase master'
alias push='rebase && git push -f origin HEAD'
alias force-push='rebase && git push -f origin HEAD'
alias hibernate='amixer -q -D pulse sset Master mute;sudo pm-hibernate; gnome-screensaver-command -l'
alias docker-ip="docker inspect --format '{{ .NetworkSettings.IPAddress }}' `docker ps | grep 3000/tcp | awk '{print $1}'`"
alias docker-stop-all='docker stop $(docker ps -a -q)'
alias docker-destroy-all='docker stop $(docker ps -a -q) && docker rm $(docker ps -a -q) && docker rmi $(docker images -q)'
alias mkcd='_(){ mkdir $1; cd $1; }; _'
alias ls="ls --color=auto"
alias  l='ls -a'
alias la='ls -a'
alias ll='ls -al'
alias  b='cd ..'
alias  s='subl .'
alias  c='clear'
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
alias gca='git commit --amend'
alias gci='git commit -v --interactive'
alias gco='git checkout'
alias gcom='git checkout master'
alias gcp='git cherry-pick'
alias gd='git diff'
alias gdc='git diff --cached'
alias git='hub'
alias gl='git log --name-status'
alias gls='git log --graph --pretty=format:'\''%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr)%Creset'\'' --abbrev-commit --date=relative'
alias glo='git log --oneline'
alias gpl='git pull --rebase'
alias gpom='git pull origin master'
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

PS1="$txtcyn\u@\h$txtpur|$txtylw\W$txtgrn\$(branch)$txtcyn:$txtrst"
export PATH=$PATH:/usr/local/bin/redis-stable/src


[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

[[ -f ~/.bash-preexec.sh ]] && source ~/.bash-preexec.sh
preexec() { /home/mikek/bin/alias-warning $1; }
