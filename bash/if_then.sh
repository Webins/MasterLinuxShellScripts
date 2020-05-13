#!/bin/bash

if [ $# -lt 1 ]; then
echo "usage : $0 <name>"
exit 1
fi
echo "hello $1"
exit 0
