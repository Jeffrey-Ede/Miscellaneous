<html>
<head>
	<title>Triangle Number Factors</title>
</head>
<body>
<p>Find the first triangular number with more than a certain number of factors.</p>
<?php
	ini_set('max_execution_time', 300000);
	$num_factors = "";
	if ($_SERVER["REQUEST_METHOD"] == "POST"){
		$num_factors = $_POST["num_factors"];
		
		if($num_factors == 0){
			$num = 1;
		}
		elseif($num_factors == 1){
			$num = 3;
		}
		elseif($num_factors > 1){
			
			$num = 3;
			$factors = 1;
			
			for($i=3; $factors<=$num_factors; $i++){
				$num += $i;
				$factors = 2;
				for($j=2; $j<=0.5*$num; $j++){
					if($num%$j == 0){
						$factors++;
					}
				}
			}
		}
		
		echo "The first tiangular number with more than $num_factors divisors is $num.\n";
	}
?>

<form method = "post" action = "">
	<tr>
	   <td>Number of factors:</td> 
	   <td><input type = "text" name = "num_factors"></td>
	</tr>
</form>
<body>
<html>