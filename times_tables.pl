# Print times tables up to max*max
$max = 12;
for($i=0; $i<=$max; $i=$i+1){
	$line = "";
	for($j=0; $j<=$max; $j=$j+1){
		$line = $line . $i*$j . " ";
	}
	$line = $line . "\n";
	print "$line";
}