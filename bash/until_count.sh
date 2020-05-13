#!/bin/bash

count=10
until (( count < 0 )) ; do
echo -e "$count \c"
(( count-- ))
done; echo
