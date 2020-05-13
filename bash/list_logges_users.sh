#!/bin/bash

for users in $(who | cut -f1 -d " "); do
lsof -u "$users" -a -c bash | grep cwd
done 
