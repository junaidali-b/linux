#! /bin/bash

pid=$(ps -ef | grep "$1" | head -n 1 | awk '{print $2}')
kill -9 "$pid"
