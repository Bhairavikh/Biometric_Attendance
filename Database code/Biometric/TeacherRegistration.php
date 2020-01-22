 <?php
 
  include 'datasource1.php';
  
        $subname=$_GET['et_subname'];
        $branch=$_GET['et_BC'];
        $semester=$_GET['et_semcreate'];
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

        


$sql = "INSERT INTO `teacher_registration`(`id`, `subname`, `branch`, `semester`)  VALUES (null,'.$subname.','.$branch.','.$semester.')";
if ($conn->query($sql) === TRUE) {
    echo "New record created successfully";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}


      $conn->close();  
        
        ?>
 
