<?php
include "config.php";
if(isset($_POST["email"]))
{
 $query = "DELETE FROM feedback WHERE Registered_Email = '".$_POST["email"]."'";
 if(mysqli_query($conn, $query))
 {  
	echo "";
 }
}
?>