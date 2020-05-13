#!/usr/bin/perl

use strict;
use v5.10;
use English;

my $name = prompt_user("Name");
my $last_name = prompt_user("Last name");
my $age = prompt_user("Age");


say("User");
say("=================================");
say("Name: $name");
say("Last name: $last_name");
say("Age: $age");
say("=================================");

sub prompt_user(){
	my $var;
	print("Enter your @_: ");
	chomp( $var = <STDIN> );
	return $var;
}






