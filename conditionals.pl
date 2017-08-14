# Perl doesn't know how great chocolate is...
# The result is "interesting..."
# Need to use special operators like lt or gt for stringwise comparisonif("Cookies">"Chocolate"){
	print "But I like chocolate...\n";
}
elsif("Cookies"<"Chocolate"){
	print "Good. I like chocolate!\n";
}
else{
	print "Interesting...\n"
}

$check = 1 > 2 ? "Something has gone wrong...\n" : "Correct\n";print "$check";