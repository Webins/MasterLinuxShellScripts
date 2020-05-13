#!/usr/bin/python
import sys

count = len(sys.argv)
if(count > 1):
	print("Script name: " + sys.argv[0])
	print("First argument: " + sys.argv[1])
else:
	print("No arguments provided")
print("Exiting...")
