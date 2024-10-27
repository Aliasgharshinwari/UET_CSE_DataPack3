<!DOCTYPE html>
<html>
<head>
    <title>User Management</title>
</head>
<body>
    <?php if(isset($_SESSION['message'])): ?>
        <div><?php echo $_SESSION['message']; ?></div>
        <?php unset($_SESSION['message']); ?>
    <?php endif; ?>

    <h2>Add New User</h2>
<form method="post" action="">
    Name: <input type="text" name="name"><br>
    Email: <input type="email" name="email"><br>
    Phone: <input type="text" name="phone"><br>
    <input type="submit" name="submit" value="Add User">
</form>


    <h2>Update User</h2>
    <form method="post" action="">
		ID: <input type="text" name="id"><br>
        Name: <input type="text" name="name"><br>
        Email: <input type="email" name="email"><br>
        Phone: <input type="text" name="phone"><br>
        <input type="submit" name="update" value="Update User">
    </form>

    <h2>Delete User</h2>
    <form method="post" action="">
        ID: <input type="text" name="id"><br>
        <input type="submit" name="delete" value="Delete User">
    </form>
	
	 <h2>Select</h2>
    <form method="post" action="">
        ID: <input type="text" name="select_query"><br>
        <input type="submit" value="Submit">
    </form>
	<h2>Show All Entries</h2>
	<form method="post" action="">
    <input type="submit" name="show_all" value="Show All">
	</form>


</body>
</html>

<?php
$servername = "localhost";
$username = "root";
$password = "";
$database = "lab6";

try {
    $conn = new PDO("mysql:host=$servername;dbname=$database", $username, $password);
    // set the PDO error mode to exception
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    // Insert operation
    if (isset($_POST['submit'])) {
        $name = $_POST['name'];
        $email = $_POST['email'];
        $phone = $_POST['phone'];

        $stmt = $conn->prepare("INSERT INTO users (name, email, phone) VALUES (:name, :email, :phone)");
        $stmt->bindParam(':name', $name);
        $stmt->bindParam(':email', $email);
        $stmt->bindParam(':phone', $phone);

        $stmt->execute();
        echo "New record created successfully";
    }

    // Update operation
    if (isset($_POST['update'])) {
        $id = $_POST['id'];
        $name = $_POST['name'];
        $email = $_POST['email'];
        $phone = $_POST['phone'];

        $stmt = $conn->prepare("UPDATE users SET name=:name, email=:email, phone=:phone WHERE id=:id");
        $stmt->bindParam(':id', $id);
        $stmt->bindParam(':name', $name);
        $stmt->bindParam(':email', $email);
        $stmt->bindParam(':phone', $phone);

        $stmt->execute();
        echo "Record updated successfully";
    }

    // Delete operation
    if (isset($_POST['delete'])) {
        $id = $_POST['id'];

        $stmt = $conn->prepare("DELETE FROM users WHERE id=:id");
        $stmt->bindParam(':id', $id);

        $stmt->execute();
        echo "Record deleted successfully";
    }

    // Select operation
    if (isset($_POST['select_query'])) {
        $id = $_POST['select_query'];
        $stmt = $conn->prepare("SELECT * FROM users WHERE id=:id");
        $stmt->bindParam(':id', $id);

        $stmt->execute();

        $result = $stmt->fetchAll();
        if (count($result) > 0) {
            echo "<table border='1'>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Email</th>
                <th>Phone</th>
            </tr>";
            foreach ($result as $row) {
                echo "<tr>
                    <td>{$row['id']}</td>
                    <td>{$row['name']}</td>
                    <td>{$row['email']}</td>
                    <td>{$row['phone']}</td>
                </tr>";
            }
            echo "</table>";
        } else {
            echo "0 results";
        }
    }

    // Show all entries
    if (isset($_POST['show_all'])) {
        $stmt = $conn->prepare("SELECT * FROM users");
        $stmt->execute();

        $result = $stmt->fetchAll();
        if (count($result) > 0) {
            echo "<h2>All Entries</h2>";
            echo "<table border='1'>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Phone</th>
                </tr>";
            foreach ($result as $row) {
                echo "<tr>
                    <td>{$row['id']}</td>
                    <td>{$row['name']}</td>
                    <td>{$row['email']}</td>
                    <td>{$row['phone']}</td>
                </tr>";
            }
            echo "</table>";
        } else {
            echo "0 results";
        }
    }

} catch (PDOException $e) {
    echo "Connection failed: " . $e->getMessage();
}

$conn = null;
?>