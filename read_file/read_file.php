<?php
	$handle = fopen("some_numbers.txt", "r");
	if ($handle) {
		while (($line = fgets($handle)) !== false) {
			// process the line read. Here it is printed
			print $line;
		}
		print"<br />";
		
		// Rewind repositions the handle at the start of the file stream
		rewind($handle);
		while (($line = fgets($handle)) !== false) {
			// Square the line reads
			print pow(floatval($line), 2);
			print"<br />";
		}

		fclose($handle);
	} else {
		// error opening the file.
		print "Error opening file...";
	}
?>