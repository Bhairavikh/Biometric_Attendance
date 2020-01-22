<?php



 include 'datasource1.php';
//    $servername = "localhost";
//$username = "root";
//$password = "";
//$dbname = "biometric";
//
//// Create connection
//$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
    
        $name=$_GET['signname'];
      //  $email=$_GET['signemail'];error because in android key name is signgmail;
        $email=$_GET['signgmail'];
         $username1=$_GET['signusername']; 
         $password1=$_GET['signpassword'];
         
    
        

$sql = "INSERT INTO `signup`(`id`, `name`, `email`, `username1`, `password1`) VALUES (null,'$name','$email','$username1','$password1')";
$sql1= "INSERT INTO `login`(`id`,`username`, `password`) VALUES (null,'$username1','$password1')";
if ($conn->query($sql) === TRUE) {
    echo '1';
} else {
    echo '0';
}
if ($conn->query($sql1) === TRUE)
{
    echo '1';
}
 else {
    echo '0';
}
     
$conn->close();
?>

