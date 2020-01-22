<?php

 include './datasource.php';
          session_start();
        $conn= getConnection();
        $name=$_GET['name'];
         $email=$_GET['email'];
          $username=$_GET['username'];
           $pass=$_GET['password'];
      
//        $contact=$_GET['contact'];
//        
        
        

$sql1="SELECT * FROM `signup` WHERE username='$username' and pass='$password'";
echo  $sql1;
$result = $conn->query($sql1);
//if ($conn->query($sql1)) {
//    
    if ($result->num_rows > 0) {

    while ($row = $result->fetch_assoc()) {
    echo $row["id"];
                                    
    
    }
} else {
    
    echo '0';
}

$conn->close();
        
        
        
  
?>

