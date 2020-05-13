#!/usr/bin/python
import sys

count = len(sys.argv)
enter = ''

print("Script name: " + sys.argv[0])
print("Count: " + str(count))
if(count <= 1):
	enter = input("Enter something: ") 
elif(count > 1):
	enter = sys.argv[1];
	

log = open("./script.log","a") #opening a file in append mode
log.write(enter + "\n") # writing to a file
log.close() #closing the file
