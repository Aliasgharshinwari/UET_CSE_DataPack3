<?php
include 'Task6_3.php';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $account_number = $_POST['account_number'];
    $name = $_POST['name'];
    $balance = $_POST['balance'];

    try {
        $sql = "INSERT INTO accounts (account_number, name, balance) VALUES (:account_number, :name, :balance)";
        $stmt = $conn->prepare($sql);
        $stmt->bindParam(':account_number', $account_number);
        $stmt->bindParam(':name', $name);
        $stmt->bindParam(':balance', $balance);
        $stmt->execute();
        echo "New record created successfully";
    } catch (PDOException $e) {
        echo "Error: " . $e->getMessage();
    }
}

$conn = null;
?>
