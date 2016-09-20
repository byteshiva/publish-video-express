#!/usr/bin/env bash

# Create a page in the current dir
echo "My Test Page" > test.html

# Start server
DEBUG=* PORT=9999 npm start &> /dev/null &
pid=$!

# Give server time to start up
sleep 1

# request page and print to stdout
wget -O - http://0.0.0.0:9999/test.html 2> /dev/null

# Stop server
#kill "${pid}"
echo "${pid}" > pid_file.txt 

# Output on running script:
# My Test Page
