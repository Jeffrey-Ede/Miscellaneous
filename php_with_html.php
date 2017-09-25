<?php
// Check if variables are set to avoid undefined index errors
if(isset($_POST['name']) && isset($_POST['age'])){
  // Check for a valid name
  if (preg_match("/[^A-Za-z'-]/",$_POST['name'] )) {
	 die ("Invalid name; name should be alpha.");
  }
  if (preg_match("/[^0-9.'-]/",$_POST['age'] )) {
	 die ("Invalid Age; age should be numeric.");
  }
  
  echo "Welcome ". $_POST['name']. ".<br />";
  echo "You are ". $_POST['age']. " years old.";
  
  exit();
}
?>

<html>
   <body>
   
	  <!-- $_PHP_SELF is the default variable for the PHP script name -->
      <form action = "<?php $_PHP_SELF ?>" method = "POST">
         Name: <input type = "text" name = "name" />
         Age: <input type = "text" name = "age" />
         <input type = "submit" />
      </form>
      
   </body>
</html>