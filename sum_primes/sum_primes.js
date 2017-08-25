// Finds the sum of all the prime numbers less than a supplied limit
function sum_primes(limit_id){
	var txtbox = document.getElementById(limit_id);
    var limit = txtbox.value;  
    
    // For every number below the limit
    var sum = 0;
	for(var i = 2; i<limit; i++){
		// Check if it is prime
		var prime = true;
		for(var j=2; j<=Math.sqrt(i); j++){
			if(i%j == 0){
				prime = false;
				break;
			}
		}
		if(prime){
			sum += i;
		}
	}
	txtbox.value = sum;
}