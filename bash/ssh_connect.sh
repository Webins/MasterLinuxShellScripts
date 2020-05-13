#!/bin/bash

read -p "Enter the server or host name: " add
read -p "Enter the to log in: " user

ssh ${add}@${user}
