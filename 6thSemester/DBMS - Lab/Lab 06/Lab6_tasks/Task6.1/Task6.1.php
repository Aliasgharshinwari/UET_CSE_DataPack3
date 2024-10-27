<?php 
//step 1. Database Connection + Database Selection 
//server name, user, user's password, and database 
//must be provided. 
$servername = "localhost"; 
$username = "root"; 
$password = ""; 
$database = "testproject"; 
 // Create Connection 
 $conn = new mysqli($servername, $username, $password, $database); 

 //step 2. Check Connection 
 if ($conn->connect_error) { 
 die("Connection failed: " . $conn->connect_error); 
 } 
 echo "Connected successfully"."<br/>"; 
 ?> 

 <!DOCTYPE html> 
 <html> 
 <head> 
 <title>PHP MySqli (Object-Oriented) Basics</title> 
 </head> 
 <body> 
 <?php 

//Step 3: Perform Query
$query = "SELECT * FROM departments";
$result = $conn->query($query);

// Step 4: Display Query Results
if ($result) {
    while ($row = $result->fetch_assoc()) {
        echo $row['depID'] . " " . $row['depName'] . "<br>";
    }
    $result->free(); //Step 5:Free the result set
} else {
    echo "Error executing query: " . $conn->error;
}
 
 ?> 
 </body> 
 </html> 

 <?php 
 //step 6. Close Database Connection 
 $conn->close(); 
 ?>