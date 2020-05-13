#!/usr/bin/perl

use v5.10;
use English;
say("Program name: $PROGRAM_NAME");

my $count = scalar @ARGV;
my $i = 1;
if($count > 0){
	foreach $arg (@ARGV){
		say("Argument $i: $arg");
		$i++;	
	}
}else{
	say("No arguments provided");
	exit(2);
}

say("You have supplied $count Arguments");


