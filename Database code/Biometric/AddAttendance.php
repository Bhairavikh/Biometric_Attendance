 <?php
  include 'datasource1.php';
        $studname=$_GET['sname'];
         $sub=$_GET['sub'];
        $rollno=$_GET['pre'];
//         $dpt=$_GET['sdpt'];
//          $yr=$_GET['syr'];
//          
//        $email=$_GET['et_email'];
       // $cont=$_POST['contact'];
        
//        
//        $servername = "localhost";
//$username = "root";
//$password = "";
//$dbname = "biometric";
//
//// Create connection
//$conn = new mysqli($servername, $username, $password, $dbname);
//// Check connection
//if ($conn->connect_error) {
//    die("Connection failed: " . $conn->connect_error);

        
        

$sql = "INSERT INTO `attendance`(`s_id`,`ss_id`, `ss_avi` ,`sub`) VALUES (null,'$studname','$rollno','$sub')";
if ($conn->query($sql) === TRUE) {
    echo "1";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

$conn->close();
        
        
        ?>
   