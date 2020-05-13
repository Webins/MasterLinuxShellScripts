#!/usr/bin/perl

use v5.10;
use English;

say("Program name: $PROGRAM_NAME");

@user= ("Fred","Bloggs", 24); #Creation of the array user
			      #An array in perl can hold any data type

foreach $arg (@user){
	print("$arg ")
}
say("");
