#!/bin/bash

# setup
title="Knowledge base" # you can change this

function main()
{   
    goback=`pwd`

    cd "$HOME/kb"

    # no arguments supplied, so list all tags
    if [ -z "$1" ]
    then
        list
    # `publish` command supplied - rebuild static page
    elif [ "$1" = "publish" ]
    then
        generate
        publish "Publishing"
    # only first argument is supplied - meaning a specific tag
    elif [ -z "$2" ]
    then
        dump "$1"
    # two arguments supplied and first one is search command
    elif [ "$1" = "search" ]
    then
        search "$2"
   # add new entry
    else
        add "$1" "$2"
        generate
        publish "$1"
    fi

    # restore position
    cd $goback
}

function list()
{
    \ls -1 data # bypass aliases with \
}

function dump()
{
    cat "data/$1"
}

function search()
{
    cd data
    grep -i $1 *
    cd ..
}

function add()
{
    cd data

    today=`date +%Y-%m-%d`
    echo "$today $2" >> $1

    cd ..
}

function publish()
{
    cd data

    git add -A
    git commit -m $1
    git push

    cd ..
}

function generate()
{
    cd data

    # start template
    echo "<html>
<head>
    <title>$title</title>
    <link rel='stylesheet' href='https://cdn.jsdelivr.net/gh/kognise/water.css@latest/dist/light.css'>
</head>
<body>" > ../index.html

    # generate index
    for file in *; do
        echo "<a href=\"#$file\">$file</a> " >> ../index.html
    done

    # generate content
    for file in *; do
        # heading
        echo "<h2 id=\"$file\">$file</h2>" >> ../index.html

        # format the line
        cat $file | sed "s/^...........//" | sed "s/^/<p>/" | sed "s/$/<\/p>/" >> ../index.html
    done

    echo "</body>
</html>" >> ../index.html

    cd ..
}

main "$1" "$2"

