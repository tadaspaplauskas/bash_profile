if [ -d "$HOME/platform-tools" ] ; then
     export PATH="$HOME/platform-tools:$PATH"
 fi

# scripts
# jump to any often visited directory
. ~/.bash/z/z.sh

# config
export EDITOR=vim
export CDPATH="~"
export PS1="\[\033[33;1m\]\W\[\033[m\]\$ "
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
alias k='kubectl'
alias vt='v test --order-by=defects --stop-on-defect'

ssh-rewrite() {
    container=`kubectl get pods -n mailerlite | grep mailerlite-app | head -n 1 |  awk '{print $1;}'`
    kubectl exec -n mailerlite -it "$container" sh
}
     
# find files which contain a phrase in current directory (recursive)
containts() {
    grep -r "$*" .;
}

# find files with a phrase in the name
somethinglike() {
    find . -type f -name "*$**"    
}

# git
alias s='git status'
alias stats='git shortlog -sn --since="4 weeks"'
alias recap='git log --all --oneline --no-merges --author=tadas@paplauskas.lt'
alias today='git log --since=00:00:00 --all --no-merges --oneline --author=tadas@paplauskas.lt'
alias graph='git log --all --decorate --oneline --graph';
alias last='git diff HEAD~ HEAD'
alias d='git add . && git diff --ignore-all-space --find-renames HEAD'
alias b='git branch'
c () {
    git add . ;
    git commit -m "$*";
}
p () {
    # fix formatting errors if phpcs is setup for the project
    [ -f vendor/bin/phpcbf ] && vendor/bin/phpcbf app;
    git add . ;
    git commit -m "$*";
    git push;
}

# personal knowledge base
alias kb='~/KB/kb.sh'

export PATH="/usr/local/sbin:$PATH"
