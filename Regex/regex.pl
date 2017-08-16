#!/usr/bin/perl

=begin comment
Lists all expressions starting and ending with the given character sets,
once per line, between 2 line numbers and outputs them to temp.py
The function accepts natural 1,...,n numbers and converts them to 0,...,n-1
=cut
sub list_start_ends{
	my $filename = @_[0];
	my $start_line = @_[1]-1; # -1 because lines are indexed from 0
	my $end_line = @_[2]-1; # -1 because lines are indexed from 0
	my $start = @_[3];
	my $end = @_[4];
	
	open(CODE, "<" . "$filename") or die "Couldn't open file, $!";
	open(TEMP, ">temp.py") or die "Couldn't open file, $!";
	
	use Tie::File qw();
	tie my @file, 'Tie::File', "$filename" or die $!;
	print $file[2];
	
	foreach (@file){
		$prev_match = $match;
		$match = $1 if /(self.*.Entry )/;
		unless(match == prev_match){
			print "$match\n";
		}
		# print TEMP "$match\n";
		# print "@expressions\n";
	}
	# print "@expressions\n";
	
	close(CODE) || die "Couldn't close file properly, $!";
	close(TEMP) || die "Couldn't close file properly, $!";
}

list_start_ends('hystGUI_excerpt.py', 2, 3, 'self.', 'Entry');
