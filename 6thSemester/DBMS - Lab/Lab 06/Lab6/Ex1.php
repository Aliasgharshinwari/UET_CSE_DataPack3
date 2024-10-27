<?php
// Step 1: Database Connection
// Replace 'localhost', 'username', and 'password' with your actual database credentials
$mysqli = new mysqli('localhost', 'root', '', 'lab6');

// Check connection
if ($mysqli->connect_error) {
    die("Connection failed: " . $mysqli->connect_error);
}

// Step 2: Perform Query
$query = "SELECT * FROM department";
$result = $mysqli->query($query);

// Step 3: Display Query Results
if ($result) {
    while ($row = $result->fetch_assoc()) {
        echo $row['d_id'] . " " . $row['name'] . "<br>";
    }
    $result->free(); // Free the result set
} else {
    echo "Error executing query: " . $mysqli->error;
}

// Step 4: Close Database Connection
$mysqli->close();
?>
