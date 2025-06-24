#!/bin/bash

case "$1" in
  add)
    echo "$2" >> tasks.txt
    echo "Task adăugat!"
    ;;
  list)
    nl -w2 -s'. ' tasks.txt | sed 's/^.*$/\x1b[32m& ✅\x1b[0m/'
    ;;
  remove)
    sed -i "${2}d" tasks.txt
    echo "Task șters!"
    ;;
  *)
    echo "Comenzi: add \"task\", list, remove [nr]"
    ;;
esac
