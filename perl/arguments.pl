#!/usr/bin/perl

use v5.10;
use English;


say("Program name: $PROGRAM_NAME");
say("Arg 1: $ARGV[0]"); 
say("Arg 2: $ARGV[1]");
#size of an array --> scalar @ --> access an array
say("Arguments supplied: ".scalar @ARGV);


