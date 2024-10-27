<?php
include 'Task6_2.php';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
     $account_number = null;
    $name = $_POST['name'];
    $balance = $_POST['balance'];

    $sql = "INSERT INTO accounts (account_number, name, balance) VALUES ('$account_number', '$name', '$balance')";

    if ($conn->query($sql) === TRUE) {
        echo "New record created successfully";
    } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
    }
}

$conn->close();
?>
