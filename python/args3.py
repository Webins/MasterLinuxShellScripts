#!/usr/bin/python
import sys

count = len(sys.argv)
name = ''

print("Script name: " + sys.argv[0])
print("Count: " + str(count))
if(count <=1 ):
	name = input("Enter a name: ") #read the input
else:
	name = sys.argv[1];
	

print("Hello " + name)
