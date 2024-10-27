<?php
include 'Task6_3.php';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $account_id = $_POST['account_id'];

    try {
        $sql = "DELETE FROM accounts WHERE account_number=:account_id";
        $stmt = $conn->prepare($sql);
        $stmt->bindParam(':account_id', $account_id);
        $stmt->execute();
        echo "Record deleted successfully";
    } catch (PDOException $e) {
        echo "Error: " . $e->getMessage();
    }
}

$conn = null;
?>
