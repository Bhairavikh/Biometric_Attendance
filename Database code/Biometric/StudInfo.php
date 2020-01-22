 <?php
  include 'datasource1.php';
        $studname=$_GET['sname'];
        $rollno=$_GET['sroll'];
         $dpt=$_GET['sdpt'];
          $yr=$_GET['syr'];
          
//        $email=$_GET['et_email'];
       // $cont=$_POST['contact'];
        
        
        $servername = "localhost";
$username = "root";
$password = "";
$dbname = "biometric";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$sql = "INSERT INTO `studinfo`(`id`, `studname`, `rollno`, `dpt`, `yr` ) VALUES (null,'$studname','$rollno','$dpt','$yr')";
if ($conn->query($sql) === TRUE) {
    echo "1";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

$conn->close();
        
        
        ?>
   