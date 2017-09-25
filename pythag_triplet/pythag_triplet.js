/**
 * Finds a pythagorean triplet that sums to a supplied number
 * and returns its product.
 */
function pythag_triplet_prod(sum_id){
	var txtbox = document.getElementById(sum_id);
    var sum = txtbox.value;
    
	/**
	 * Find the product of a triplet that sums to sum
	 * Sum is expected to be small so loops are used rather than
	 * using the sqrt function or other algebraic approach
	 */
	for(var i = 1; i <= sum-2; i++){
		for(var j = 1; i+j <= sum-1 && j < i; j++){
			var k = 1000-i-j;
			if(i*i == j*j+k*k){
				// Display the result in the textbox
				txtbox.value = i*j*k;
			}
		}
	}	
}