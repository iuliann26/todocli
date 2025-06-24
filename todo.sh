#!/bin/bash

case "$1" in
  add)
    echo "$2" >> tasks.txt
    echo "Task salvat cu succes!"
    ;;
  list)
    nl -w2 -s'. ' tasks.txt | sed 's/^.*$/\x1b[32m& ✅\x1b[0m/'
    ;;
  remove)
    sed -i "${2}d" tasks.txt
    echo "Task șters de tot!TEST!!"
    ;;
  *)
    echo "Comenzi: add \"task\", list, remove [nr]"
    ;;
esac
