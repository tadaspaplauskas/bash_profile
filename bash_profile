# cheatsheet
# find text in all subdirectorie: grep -r "pattern"
# kill processes by name: pkill -9 "php"

# config
export EDITOR=vim
export CDPATH="~/Dropbox"
export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
alias ls='ls -GFh'
export LOLCOMMITS_DELAY=0

alias ssh-sandbox='ssh tadas@107.170.22.152'
alias ssh-mlapp='ssh mailerlite@mlapp2'
alias ssh-emailer='ssh mailerlite@mldev'
alias ssh-emailerapi='ssh liteapi@mlapidev'
alias ssh-mlcron='ssh mailerlite@mlcron2'
alias ssh-tadasdev='ssh tadas@mldev'
alias ssh-mlwww='ssh mailer@mlwww'
alias ssh-mailerlight='ssh mailerlight@mldev'
alias ssh-mailerlightapi='ssh mailerlight@mlapidev'
alias ssh-mlapiworkers='ssh liteapi@mlapi3'
alias ssh-mlupdater='ssh mlupdater@mlbg1'
alias c='php ~/Sites/mailerlite-api/app/console'
alias cc='./vendor/bin/codecept'
alias mlapp='cd ~/Sites/mailerlite-app'
alias mlapi='cd ~/Sites/mailerlite-api'
alias mlsdk='cd ~/Sites/mailerlite-api-v2-php-sdk'
alias mlwww='cd ~/Sites/mailerlite-www'
alias redis-flush='redis-cli flushall'
alias phinx='php vendor/bin/phinx'
alias artisan='php artisan'
# passion project
alias pp='cd /Users/tadas/Dropbox/Projects/crawler/app'
alias projects='cd /Users/tadas/Dropbox/Projects'

copy_to_clipboard() { cat $1 | pbcopy ; }
alias clipboard=copy_to_clipboard

today() {
    today=`date +%Y-%m-%d`
    path='/Users/tadas/Dropbox/Lifelog/'$today'.txt'
    # vim $path
    touch $path
    open -a TextEdit $path
}

g() {
    grep -r "$*" .;
}

merge_into() {
    cat * > $*
}
alias redis-prod='redis-cli -h 192.168.53.146'
alias redis-dev='redis-cli -h 192.168.53.205'

# git
alias gs='git status'
alias gstats='git shortlog -sn --since="4 weeks"'
alias gd='git diff -w'
alias gdw='git diff --word-diff'
alias grecap='git log --all --oneline --no-merges --author=tadaspaplauskas@gmail.com'
alias gtoday='git log --since=00:00:00 --all --no-merges --oneline --author=tadaspaplauskas@gmail.com'
alias grecent='git for-each-ref --count=10 --sort=-committerdate refs/heads/ --format="%(refname:short)"'
alias ggraph='git log --all --decorate --oneline --graph';
gp () {
    git add . ;
    git commit -m "$*";
    git push;
}
gc () {
    git add . ; 
    git commit -m "$*"; 
}
gt () { 
    git tag "$*"; 
    git push --tags; 
}
release () {
    git flow release start $*
    git flow release finish $*
    git push --follow-tags
}
