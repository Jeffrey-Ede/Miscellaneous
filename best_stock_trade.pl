#!/usr/bin/perl

# Generate 40 random numbers between 200 and 500
# representing stock prices over 40 min
@prices; $size =40;
for($i=0; $i<$size; $i++){
	push @prices, rand(300)+200;
}
print "@prices\n";


# Find best price difference
$m = $n = 0; $best = -~0;
for($i=0; $i<$size; $i++){
	for($j=$i+1; $j<$size; $j++){
		$diff = $prices[$j]-$prices[$i];
		$p = $prices[$j]; $q = $prices[$i];
		if($diff > $best){
			$best = $diff;
			$m = $i; $n = $j;		}		
	}}
print "$best, $m, $n\n";