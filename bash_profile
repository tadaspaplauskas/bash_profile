if [ -d "$HOME/platform-tools" ] ; then
     export PATH="$HOME/platform-tools:$PATH"
 fi

# scripts
# jump to any often visited directory
. ~/Config/bash/z/z.sh

# config
export EDITOR=vim
export CDPATH="~"
export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

# misc
alias ls='ls -halp'
alias ..='cd ..'
alias weather='curl wttr.in/'
alias rm='echo "rm is disabled, use trash"'

# php, laravel
alias phpunit='php vendor/bin/phpunit'
alias redis-flush='redis-cli flushall'
alias phinx='php vendor/bin/phinx'
alias artisan='php artisan'
alias laralogs='tail -n 200 -f storage/logs/laravel.log'

# not using it anymore, but might in the future
today() {
    today=`date +%Y-%m-%d`
    path='~/Notes/'$today'.txt'
    # you can just use vim $path here, I'm using TextEdit instead
    touch $path
    open -a TextEdit $path
}

# find in current directory files (recursive)
g() {
    grep -r "$*" .;
}

# git
alias gstats='git shortlog -sn --since="4 weeks"'
alias grecap='git log --all --oneline --no-merges --author=tadaspaplauskas@gmail.com'
alias gtoday='git log --since=00:00:00 --all --no-merges --oneline --author=tadaspaplauskas@gmail.com'
alias grecent='git for-each-ref --count=10 --sort=-committerdate refs/heads/ --format="%(refname:short)"'
alias ggraph='git log --all --decorate --oneline --graph';
alias glast='git diff HEAD~ HEAD'
alias gd='git diff'
gc () {
    git add . ; 
    git commit -m "$*"; 
}
gp () {
    git add . ;
    git commit -m "$*";
    git push;
}

