#!/bin/bash

case "$1" in
  add)
    echo "$2" >> tasks.txt
    echo "Task adăugat!"
    ;;
  list)
    nl -w2 -s'. ' tasks.txt
    ;;
  remove)
    sed -i "${2}d" tasks.txt
    echo "Task șters!"
    ;;
  *)
    echo "Comenzi: add \"task\", list, remove [nr]"
    ;;
esac
