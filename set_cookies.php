<?php
   // Cookies to store my name and age. They expire after 5 min
   setcookie("name", "Jeffrey Ede", time()+300, "/","", 0);
   setcookie("age", "22", time()+300, "/", "",  0);
?>
<html>
   
   <head>
      <title>Setting Cookies with PHP</title>
   </head>
   
   <body>
      <?php echo "Cookies set."?>
   </body>
   
</html>

