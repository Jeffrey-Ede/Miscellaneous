#!/usr/bin/perl

# Converts a hash of times to s
sub Time_in_s{
	my (%times) = @_;
	
	#Convert the time to s
	$times{'Hours'}*3600+$times{'Min'}*60+$times{'s'}
}

%times = ('Hours' => 43, 'Min' => 19, 's' => 53);
$time_s = Time_in_s(%times);

print "The time in s is: $time_s\n";