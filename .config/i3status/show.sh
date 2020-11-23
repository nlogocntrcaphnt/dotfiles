#!/bin/bash

i3status | while :
do
    read line
    echo $(date)
	sleep 1
done
