#export PS1="\e[1;33m[\u@\h \w]\$ \[\e[0;32m\]"
export PS1='\[\e[1;33m\]\u\[\e[m\]\[\e[0;35m\]|\[\e[m\]\[\e[0;33m\]\h\[\e[m\] \[\e[m\]\[\e[0;35m\]\w \$ \[\e[m\]'
export ANDROID_SDK_ROOT=/usr/local/opt/android-sdk
export CLICOLOR=1
export EDITOR=vim
export HISTFILESIZE=10000
export HISTSIZE=10000
export LC_ALL=C
export LESS="-# 60 -i -X -R"
export LSCOLORS=dxfxcxdxbxegedabagacad
export LS_COLORS='di=1;35:ln=35:ex=31:su=30;43:sg=30;43:tw=30;43:ow=30;43:'
export PAGER=less
export PATH=$HOME/bin:$PATH
export TERM=xterm-256color
export VISUAL=vim
export PYTHONPATH=$PTHONPATH:/usr/local/lib/python2.7/site-packages/

alias l='ls'
alias ll='ls -l'
alias j='jobs'
alias full='sudo xrandr --output default --mode 1920x1080'
alias small='sudo xrandr --output default --mode 800x600'
alias irssi='TERM=screen-256color irssi'
alias sbcl='rlwrap sbcl'
alias git-tracking-branch="git rev-parse --symbolic-full-name --abbrev-ref @{upstream}"

set show-all-if-ambiguous on

bind "\C-p":history-search-backward
bind "\C-n":history-search-forward


PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
PATH=$PATH:/Applications # NETHACK
PATH=$PATH:/usr/local/lib/python2.7/site-packages/django/bin/ #DJANGO

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

function ff {
    find . -iname "*$1*"
}
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
