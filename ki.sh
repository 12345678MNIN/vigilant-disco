#!/bin/bash

echo "Welcome to the Linux command simulator!"
PS3='Please enter your choice: '
options=("List files" "Show date" "Check disk usage" "Exit")
select opt in "${options[@]}"
do
    case $opt in
        "List files")
            ls -al
            ;;
        "Show date")
            date
            ;;
        "Check disk usage")
            df -h
            ;;
        "Exit")
            break
            ;;
        *) echo "Invalid option $REPLY";;
    esac
done
