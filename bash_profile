if [ -d "$HOME/platform-tools" ] ; then
     export PATH="$HOME/platform-tools:$PATH"
 fi

# scripts
# jump to any often visited directory
. ~/.bash/z/z.sh

# config
export EDITOR=vim
export CDPATH="~"
 export PS1="\[\033[33;1m\]\W\[\033[m\]$ "
# export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
export LC_ALL=en_US.UTF-8

# misc
alias ls='ls -halp'
alias ..='cd ..'
alias weather='curl wttr.in/'
alias rm='echo "rm is disabled, use trash"'
alias cp='cp -iv'
alias mv='mv -iv'
alias mkdir='mkdir -pv'
alias watch='watch --color'

# php, laravel
alias phpunit='php vendor/bin/phpunit'
alias redis-flush='redis-cli flushall'
alias phinx='php vendor/bin/phinx'
alias a='php artisan'
alias laralogs='tail -n 200 -f storage/logs/laravel.log'
alias v='./vessel'
alias rewrite-ssh='kubectl exec -n mailerlite -it mailerlite-app-85d5b9d596-gpjlz sh'
alias vssh='./vessel exec app bash'
alias vstopworkers='./vessel exec app supervisorctl stop queuework'

# find in current directory files (recursive)
g() {
    grep -r "$*" .;
}

# git
alias gstats='git shortlog -sn --since="4 weeks"'
alias grecap='git log --all --oneline --no-merges --author=tadas@paplauskas.lt'
alias gtoday='git log --since=00:00:00 --all --no-merges --oneline --author=tadas@paplauskas.lt'
alias grecent='git for-each-ref --count=10 --sort=-committerdate refs/heads/ --format="%(refname:short)"'
alias ggraph='git log --all --decorate --oneline --graph';
alias glast='git diff HEAD~ HEAD'
alias gd='git diff -M'
alias gbd='git checkout master && git branch -D ' # force
gc () {
    git add . ;
    git commit -m "$*";
}
gp () {
    git add . ;
    git commit -m "$*";
    git push;
}
gb () {
    git checkout -b "$*";
    git push --set-upstream origin "$*";
}

# personal knowledge management
alias about='~/Brain/brain.sh'

export PATH="/usr/local/sbin:$PATH"
