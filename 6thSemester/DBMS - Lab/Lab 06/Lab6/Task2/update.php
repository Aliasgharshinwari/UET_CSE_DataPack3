<?php
include 'Task6_2.php';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $account_id = $_POST['account_id'];
    $name = $_POST['name'];
    $balance = $_POST['balance'];

    $sql = "UPDATE accounts SET name='$name', balance='$balance' WHERE account_number=$account_id";

    if ($conn->query($sql) === TRUE) {
        echo "Record updated successfully";
    } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
    }
}

$conn->close();
?>
