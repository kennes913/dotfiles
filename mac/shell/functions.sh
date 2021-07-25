#!/usr/bin/env bash
# this shebang deviates from the google style guide in order to support mac os
# for which /bin/bash is stuck on bash 3
#
# Custom functions

what_have_I_done() {

    array=(
        ".CFUserTextEncoding"
        ".DS_Store"
        ".Trash"
        ".bash_history"
        ".bash_sessions"
        ".vim"
        ".viminfo"
        "Applications"
        "Desktop"
        "Documents"
        "Downloads"
        "Library"
        "Movies"
        "Music"
        "Pictures"
        "Public"
    )

    echo "Directories and files installed in $HOME :"
    cd "$HOME" || exit
    for file in {.*,*}; do
        print_file="True"
        for native_file in "${array[@]}"; do
            if [[ "$file" == "$native_file" ]]; then
                print_file="False"
                break
            fi
        done
        if [[ "$print_file" == "True" ]]; then
            echo "$file"
        fi
    done
}

unlock() {
    pbcopy < "$HOME"/.1pass/.pass/txt
}
