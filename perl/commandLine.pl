#!/usr/bin/perl

#in perl the conditions goest in the right hand side
exit(2) if scalar @ARGV < 1;
print("Hello $ARGV[0]\n") unless scalar @ARGV ==0;
