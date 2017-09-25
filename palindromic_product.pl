#!/usr/bin/perl

# Returns the highest palindromic product of 2 numbers with the same number of digits
# e.g. for 2 digit numbers 9009 = 91 × 99
sub Palindromic_product{
	(my $digits) = @_;
	
	my $largest_palindrome = 0;
	for($i=10**($digits-1); $i<10**$digits; $i++){
		for($j=10**($digits-1); $j<10**$digits; $j++){
			my $product = $i*$j;
			my @numbers = split //, $product;
			
			my $length = @numbers;
			my $palindrome = 1; # Assume the product is a palindrome, then check
			if($length > 1){
				for($k=0; $k < ($length/2); $k++){
					if($numbers[$k] != $numbers[$#numbers-$k]){
						$palindrome = 0;
						last;
					}
				}
			}
			if($palindrome == 1 and $product>$largest_palindrome){
				$largest_palindrome = $product;
			}
		}
	}
	return $largest_palindrome;
}

#Find the largest palindromic product of 2 2-digit numbers
$result = Palindromic_product(3);
print "$result\n";