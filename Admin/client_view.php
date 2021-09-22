<?php
include "config.php";
 session_start();
 if (isset($_SESSION['is_log'])) {
?>
<?php  
 if(isset($_POST["email"]))  
 {  
      $output = '';    
      $query = "SELECT * FROM client WHERE Email = '".$_POST["email"]."'";  
      $result = mysqli_query($conn, $query);  
      $output .= '  
      <div class="table-responsive">  
           <table class="table table-bordered">';  
      $row = mysqli_fetch_array($result);
       
           $output .= '  
                <tr>  
                     <td width="30%"><label>Name</label></td>  
                     <td width="70%">'.$row["Name"].'</td>  
                </tr>  
                <tr>  
                     <td width="30%"><label>Email</label></td>  
                     <td width="70%">'.$row["Email"].'</td>  
                </tr>  
                
                <tr>  
                     <td width="30%"><label>Contact</label></td>  
                     <td width="70%">'.$row["Contact"].'</td> 
                      
                </tr>  
                
                <tr>  
                     <td width="30%"><label>About</label></td>  
                     <td width="70%">'.$row["About"].'</td> 
                      
                </tr>
               
                ';  
        
      $output .= "</table></div>";  
      echo $output;  
 }  
 ?>

<?php
}
else {
    header('location:index.php');
}

?>