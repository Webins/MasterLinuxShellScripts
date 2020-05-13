#!/bin/bash

if [ $# -lt 1 ]; then
read -p "enter the name: " name
echo "hello $name"
else
echo "hello $1"
fi
