<?php

 include 'datasource1.php';
          session_start();
//        $conn= getConnection();
        $username=$_GET['username'];
        $password=$_GET['password'];
//        $email=$_GET['email'];
//        $contact=$_GET['contact'];
//        
        
        

$sql1="SELECT * FROM login WHERE username='$username' and password='$password'";
//echo  $sql1;
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