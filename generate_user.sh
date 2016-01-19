#!/bin/bash

# default options: can be overriden with corresponding arguments.
host=${1-localhost}
port=${2-9500}

actions=("login" "logout")
users=("alice" "bob")

while true
do
  # Generate a random IP address from a pool of 16
  srcip=10.0.0.$((RANDOM%16))
  user=${users[$RANDOM % ${#users[@]} ]}
  action=${actions[$RANDOM % ${#actions[@]} ]}
  echo "user,srcip=$srcip,user=$user action=\"$action\"" > /dev/udp/$host/$port
  sleep 0.1
done
