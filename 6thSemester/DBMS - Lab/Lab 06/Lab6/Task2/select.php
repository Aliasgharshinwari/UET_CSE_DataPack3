<?php
include 'Task6_2.php';

if ($_SERVER["REQUEST_METHOD"] == "GET") {
    $account_id = $_GET['account_id'];

    $sql = "SELECT * FROM accounts WHERE account_number=$account_id";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        echo "<h2>Account Details</h2>";
        while($row = $result->fetch_assoc()) {
            echo "ID: " . $row["account_number"]. " - Account Number: " . $row["account_number"]. " - Name: " . $row["name"]. " - Balance: " . $row["balance"]. "<br>";
        }
    } else {
        echo "0 results";
    }
}

$conn->close();
?>
