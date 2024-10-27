<?php
include 'Task6_3.php';
if ($_SERVER["REQUEST_METHOD"] == "GET") {
    $account_id = $_GET['account_id'];
    try {
        $sql = "SELECT * FROM accounts WHERE account_number=:account_id";
        $stmt = $conn->prepare($sql);
        $stmt->bindParam(':account_id', $account_id);
        $stmt->execute();
        $result = $stmt->fetchAll();

        if (count($result) > 0) {
            echo "<h2>Account Details</h2>";
            foreach ($result as $row) {
                echo "ID: " . $row["account_number"]. " - Account Number: " . $row["account_number"]. " - Name: " . $row["name"]. " - Balance: " . $row["balance"]. "<br>";
            }
        } else {
            echo "0 results";
        }
    } catch (PDOException $e) {
        echo "Error: " . $e->getMessage();
    }
}
$conn = null;
?>
