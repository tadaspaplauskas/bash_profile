# What's included
- `Z` to effortlessly jump between often user directories (https://github.com/rupa/z)
- `kb` script by yours truly. Stores little tidbits of wisdom a generates a simple static page. You have to configure a git repository with a remote in ~/kb to be able to use it.
- various aliases for git, php, laravel and general workflows.

# Setup

Read through setup.sh, it's only 3 lines. After you understand what it's doing, just run:
```
curl https://raw.githubusercontent.com/tadaspaplauskas/shell_profile/master/setup.sh | bash
```

# Cheat sheet

* find text in all subdirectories: `grep -r "pattern"`
* kill processes by name: `pkill -9 "php"`
* copy a file or anything to clipboard: `cat file.log | pbcopy`
* find files matching a pattern and delete them recursively: `find . -type f -name '*.txt' -delete`

