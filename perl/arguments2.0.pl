#!/usr/bin/perl

use v5.10;
use English;

my $i = 1;
say("Program name: $PROGRAM_NAME");
foreach $arg (@ARGV){
say("Arg $i: $arg");
$i++;
} 
#size of an array --> scalar @ --> access an array
say("Arguments supplied: ".scalar @ARGV);


