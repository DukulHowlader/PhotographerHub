<?php  
 include "config.php";
 if(isset($_POST["email"]))  
 {  
      $output = '';    
      $query = "SELECT * FROM photographer WHERE Email = '".$_POST["email"]."'";  
      $result = mysqli_query($conn, $query);  
      $output .= '  
      <div class="table-responsive">  
           <table class="table table-bordered">';  
      $row = mysqli_fetch_array($result);
      $email = $row["Email"];
      $name = $row["Name"];
      $rating = mysqli_query($conn,"SELECT ROUND(AVG(Rating),1) as Rate FROM feedback WHERE Photographer_Name = '".$row["Name"]."' ");
      $outcome = mysqli_fetch_array($rating);
       
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
                     <td width="30%"><label>Pricing</label></td>  
                     <td width="70%">
                     '.$row["Pricing1"].' <br>
                     '.$row["Pricing2"].' <br>
                     '.$row["Pricing3"].' <br>
                     '.$row["Pricing4"].' 
                     </td> 
                      
                </tr> 

                <tr>  
                     <td width="30%"><label>Weekly Schedule</label></td>  
                     <td width="70%">
                     '.$row["Day1"].' <br>
                     '.$row["Day2"].' <br>
                     '.$row["Day3"].' <br>
                     '.$row["Day4"].' <br>
                     '.$row["Day5"].' <br>
                     '.$row["Day6"].' <br>
                     '.$row["Day7"].' 
                     </td> 
                      
                </tr> 

                <tr>  
                     <td width="30%"><label>Rating</label></td>  
                     <td width="70%">'.$outcome["Rate"].' out of 5.0</td> 
                      
                </tr>
                <tr>  
                     <td width="30%"><label>Photo Book</label></td>  
                     <td width="70%">
                         <form action="photo_book.php" method="POST">
                              <input type="hidden" name="text1" value='.$name.'>
                              <input type="hidden" name="text2" value='.$email.'>
                              <button class="btn btn-info" type="submit" >View</button>
                         </form>
                     </td> 
                      
                </tr>
                ';  
       
      $output .= "</table></div>";  
      echo $output;  
 }  
 ?>