#!/bin/sh
echo 1 >> /tmp/test1
urxvtc "$@"
if [ $? -eq 2 ]; then
    echo 2 >> /tmp/test1
    urxvtd -q -o -f
    echo $? >> /tmp/test1
    urxvtc "$@"
    echo $? >> /tmp/test1
fi
