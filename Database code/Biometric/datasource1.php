<?php
$servername = "localhost";

$susername = "root";

$password = "";

$dbname="biometric";
// Create connection

$conn = new mysqli($servername, $susername, $password,$dbname);

// Check connection

if ($conn->connect_error)
 {
    die("Connection failed: " . $conn->connect_error);

} 
//

echo "Connected successfully";


return $conn;

?>