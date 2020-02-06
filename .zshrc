# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000000
SAVEHIST=10000000
unsetopt beep
unsetopt sharehistory
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '~/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

autoload -U promptinit
fpath=(~/.zsh/gradle-completion $fpath)
promptinit
prompt redhat

zstyle ':completion:*'  matcher-list 'm:{a-z}={A-Z}'

# kill jetty
killserver() {
   pid=`jps -l | grep -m1 jetty | awk '{print $1}'`

   if [[ $pid ]]; then
      echo killing $pid
      kill -9 $pid
   else
      echo 'process not found'
   fi
}

# don't nest ranger multi level
ranger() {
   if [ -z $RANGER_LEVEL ]; then
      /usr/bin/ranger "$@"
   else
      exit
   fi
}

ulimit -n 4096
source /usr/share/nvm/init-nvm.sh
