/**
 * Find the longest Collatz sequence between 2 limits
 */

function longest_Collatz(start_id, end_id){
	var start_txt = document.getElementById(start_id);
	var end_txt = document.getElementById(end_id);
	
    var start = start_txt.value;
    var end = end_txt.value;
    
	var longest = 0; // Length of longest Collatz sequence
	start_number = 0; // Number that longest chain starts from
	
	for(var i=start; i<=end; i++){
		var val = i;
		var length = 0;
		while(val != 1){
			length++;
			//document.write(length+" "+val+"<br>");
			if(val%2){
				val = 3*val+1;				
			}
			else{
				val *= 0.5;
			}
		}
		if(length>longest){
			longest = length;
			start_number = i;
		}
	}
	start_txt.value = start+"-"+end;
	end_txt.value = start_number;
}