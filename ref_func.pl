#!/usr/bin/perl

use feature 'state';

sub Counter{
	state $count = 0; # Counts number of times function is called
	$count++;
}

$ref = \&Counter;

# Use the reference to call the function 5 times
for($i=0; $i<=5; $i++){
	$count = &$ref;
	print "$count\n";}
