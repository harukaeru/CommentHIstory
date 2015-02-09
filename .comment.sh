#! /usr/sh
#
# ReadMe:
#   This case is when you put this file to $HOME
#   If you don't like to alias to Octothorpe, you may change.
#
# Usage:
#   alias \#='sh ~/.comment.sh'         # You can write with .bashrc or .zshrc
#
#   # COMMENT [COMMAND]
#

comment()
{
    if [ $# -le 1 ]; then
        echo "There is only 0 or 1 arugment. Input the command."
        return 0
    fi

    strall=""
    i=0
    for str in $*
    do
        if [ $i -eq 0 ]; then
            i=1
        else
            strall="$strall $str"
        fi
    done

    eval $strall
    return 1
}

comment $*
