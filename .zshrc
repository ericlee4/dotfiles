# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000000
SAVEHIST=10000000
setopt extendedglob
unsetopt beep
unsetopt sharehistory
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/eric/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

autoload -U promptinit
promptinit
prompt redhat
alias ls='ls -hF --color=auto'                 # classify files in colour
alias ll='ls -la'                              # long list
alias la='ls -A'                              # all but . and ..
alias tmux='tmux -2'

zstyle ':completion:*'  matcher-list 'm:{a-z}={A-Z}'

precmd() {
   print -Pn "\e]0; %d\a";
}

killserver() {
   pid=`jps -l | grep -m1 jetty | awk '{print $1}'`

   if [[ $pid ]]; then
      echo killing $pid
      kill -9 $pid
   else
      echo 'process not found'
   fi
}

ulimit -n 4096
source /usr/share/nvm/init-nvm.sh

# powerline config
powerline-daemon -q
source /usr/lib/python3.7/site-packages/powerline/bindings/zsh/powerline.zsh

# has to be at end of file
# https://github.com/zsh-users/zsh-syntax-highlighting#why-must-zsh-syntax-highlightingzsh-be-sourced-at-the-end-of-the-zshrc-file
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
