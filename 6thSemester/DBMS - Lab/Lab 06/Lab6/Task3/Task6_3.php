<?php

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "task6_2";

try {
    $conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
    // Set the PDO error mode to exception
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $e) {
    echo "Connection failed: " . $e->getMessage();
}
?>

<!DOCTYPE html>
<html>
<head>
    <title>DBMS Lab Project</title>
</head>
<body>

<h2>Insert Data into Accounts</h2>
<form action="insert.php" method="POST">
    Name: <input type="text" name="name"><br>
    Balance: <input type="text" name="balance"><br>
    <input type="submit" value="Insert">
</form>

<h2>Update Data in Accounts</h2>
<form action="update.php" method="POST">
    Account ID to Update: <input type="text" name="account_id"><br>
    New Name: <input type="text" name="name"><br>
    New Balance: <input type="text" name="balance"><br>
    <input type="submit" value="Update">
</form>

<h2>Delete Data from Accounts</h2>
<form action="delete.php" method="POST">
    Account ID to Delete: <input type="text" name="account_id"><br>
    <input type="submit" value="Delete">
</form>

<h2>Select Data from Accounts</h2>
<form action="select.php" method="GET">
    Account ID to Select: <input type="text" name="account_id"><br>
    <input type="submit" value="Select">
</form>

</body>
</html>
