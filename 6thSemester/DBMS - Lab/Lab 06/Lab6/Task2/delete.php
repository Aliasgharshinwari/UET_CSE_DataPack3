<?php
include 'Task6_2.php';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $account_id = $_POST['account_id'];

    $sql = "DELETE FROM accounts WHERE account_number=$account_id";

    if ($conn->query($sql) === TRUE) {
        echo "Record deleted successfully";
    } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
    }
}

$conn->close();
?>
