<?php
include "config.php";
if(isset($_POST["email"]))
{
 $query = "DELETE FROM client WHERE Email = '".$_POST["email"]."'";
 if(mysqli_query($conn, $query))
 {  
	echo "";
 }
}
?>