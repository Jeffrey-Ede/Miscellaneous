<html>
<head><title>Multiplication Tables Cubed</title></head>
<body>

<?php
	# operator
	print "Multiplication tables; however, all the values are cubed.<br />";
		for($i=1; $i<10; $i++){
			for($j=1; $j<10; $j++){
				echo $val = pow($i*$j, 3);
				if ($j<9)
					echo " ";
				else
					echo "<br />";
			}
		}
?>

</body>
</html>
