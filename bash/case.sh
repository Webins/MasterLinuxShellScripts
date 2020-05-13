#!/bin/bash

if [ ! $# -eq 2 ]; then
echo "you must supply two argument"
echo "<student> <grade>"
exit 2 
fi

case $2 in 
[A-C]|[a-c]) echo "$1 Is a pupil student"
;;
[Dd]) echo "$1 needs to try a little harder"
;;
[E-F]|[e-f]) echo "$1 needs to prepare better to the next year "
;;
*) echo "grade could't be evaluated"
esac

