#!/usr/bin/perl

use strict;
use v5.10;
use English;

my $name;
say("Using: $PROGRAM_NAME ");
print("Enter your name: ");
chomp( $name = <STDIN> ); #Chomp read the input. In this case from STDIN
say("Hello $name")
