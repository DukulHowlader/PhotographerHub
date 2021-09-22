<?php
include "config.php";
if(isset($_POST["email"]))
{
 $query = "DELETE FROM contact WHERE Email = '".$_POST["email"]."'";
 if(mysqli_query($conn, $query))
 {  
	echo "";
 }
}
?>