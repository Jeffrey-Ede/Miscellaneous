#!/usr/bin/perl
open(DATA, "<file.txt") or die "couldn't open file.txt, $!"; # $! gets the error string

# Display dataprint "Data:\n";
while(<DATA>){
	print "$_";
}
print "\n";
print "Fizz Buzz\n";
# Go to start of file
seek DATA, 0, 0;
# Store data in an array
@data = <DATA>;
# Play "Fizz Buzz". If numbers are divisible by 3, print fizz;
# If they are divisible by 5 print buzz; if both print fizz buzz
foreach $datum (@data){
	if($datum % 3 == 0 && $datum % 5 == 0){
		print "fizz buzz\n";
	}
	elsif($datum % 3 == 0){
		print "fizz\n";
	}
	elsif($datum % 5 == 0){
		print "buzz\n";
	}
	else{
		print "flat\n";
	}
}
print "\n";
close(DATA) || die "Couldn't close file properly, $!";