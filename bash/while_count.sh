#!/bin/bash

count=10
while (( count >=0 )) ; do
echo -e "$count \c"
(( count-- ))
done; echo
