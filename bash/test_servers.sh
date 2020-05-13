#!/bin/bash
if [ ! -f "$1" ] ; then
echo "The first parameter to $0 must be a file"
exit 1
fi
echo "The following servers are available on $(date +%x)"> server.out
while IFS= read -r line 
do
ping -c1 "$line" >/dev/null 2>&1 && echo "UP: $line" >> server.out
done < "$1"
cat server.out
