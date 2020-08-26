if [ -d "$HOME/platform-tools" ] ; then
     export PATH="$HOME/platform-tools:$PATH"
 fi

# scripts
# jump to any often visited directory
source ~/.sh/z/z.sh

# personal knowledge base
alias kb='~/.sh/kb.sh'

# config
export PATH="/usr/local/sbin:$PATH"
export EDITOR=vim
export CDPATH="~"
export LC_ALL=en_US.UTF-8

# prompt
PROMPT="%B%F{blue}%1~%f%b %# "

# misc
alias ls='ls -halp'
alias ..='cd ..'
alias rm='echo "rm is disabled, use trash"'
alias cp='cp -iv'
alias mv='mv -iv'
alias mkdir='mkdir -pv'
alias download='curl -O'
# make watch show color and recognize aliases
alias watch='watch --color --interval 2 '
# better repeater which doesnt crash with vessel tests
r() {
    while true
    do
        eval $*;
        sleep 2;
    done
}

# php, laravel
alias phpunit='php vendor/bin/phpunit'
alias redis-flush='redis-cli flushall'
alias phinx='php vendor/bin/phinx'
alias art='php artisan'
alias laralogs='tail -n 200 -f storage/logs/laravel.log'
alias v='./vessel'

# find files which contain a phrase in current directory (recursive)
containts() {
    grep -r "$*" .;
}

# find files with a phrase in the name
somethinglike() {
    find . -type f -name "*$**"
}

# git
# Load version control information
autoload -Uz vcs_info
precmd() { vcs_info }

# Format the vcs_info_msg_0_ variable
zstyle ':vcs_info:git:*' formats '%b'

# Set up the prompt (with git branch name)
setopt PROMPT_SUBST
RPROMPT=\$vcs_info_msg_0_

alias s='git status'
alias stats='git shortlog -sn --since="4 weeks"'
alias recap='git log --all --oneline --no-merges --author=tadas@paplauskas.lt'
alias today='git log --since=00:00:00 --all --no-merges --oneline --author=tadas@paplauskas.lt'
alias graph='git log --all --decorate --oneline --graph';
alias last='git diff HEAD~ HEAD'
alias d='git add . && git diff --ignore-all-space --find-renames HEAD'
alias b='git branch'
c () {
    # fix formatting errors if phpcs is setup for the project
    # [ -f vendor/bin/phpcbf ] && vendor/bin/phpcbf app;
    git add . ;
    git commit;
}
p () {
    git push;
}

