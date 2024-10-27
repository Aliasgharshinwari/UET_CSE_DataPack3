<?php
include 'Task6_3.php';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $account_id = $_POST['account_id'];
    $name = $_POST['name'];
    $balance = $_POST['balance'];

    try {
        $sql = "UPDATE accounts SET name=:name, balance=:balance WHERE account_number=:account_id";
        $stmt = $conn->prepare($sql);
        $stmt->bindParam(':account_id', $account_id);
        $stmt->bindParam(':name', $name);
        $stmt->bindParam(':balance', $balance);
        $stmt->execute();
        echo "Record updated successfully";
    } catch (PDOException $e) {
        echo "Error: " . $e->getMessage();
    }
}

$conn = null;
?>
