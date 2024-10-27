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

// Create connection
$conn = new mysqli($servername, $username, $password, $database);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Insert operation
if (isset($_POST['submit'])) {
    $name = $_POST['name'];
    $email = $_POST['email'];
    $phone = $_POST['phone'];

    $sql = "INSERT INTO users (name, email, phone) VALUES ('$name', '$email', '$phone')";
    if ($conn->query($sql) === TRUE) {
        echo "New record created successfully";
    } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
    }
}

// Update operation
if (isset($_POST['update'])) {
    $id = $_POST['id'];
    $name = $_POST['name'];
    $email = $_POST['email'];
    $phone = $_POST['phone'];

    $sql = "UPDATE users SET name='$name', email='$email', phone='$phone' WHERE id=$id";
    if ($conn->query($sql) === TRUE) {
        echo "Record updated successfully";
    } else {
        echo "Error updating record: " . $conn->error;
    }
}

// Delete operation
if (isset($_POST['delete'])) {
    $id = $_POST['id'];

    $sql = "DELETE FROM users WHERE id=$id";
    if ($conn->query($sql) === TRUE) {
        echo "Record deleted successfully";
    } else {
        echo "Error deleting record: " . $conn->error;
    }
}

// Select operation
if (isset($_POST['select_query'])) {
    $id = $_POST['select_query'];
	$id_query = "select * from users where id=$id";
    $result = $conn->query($id_query);

    if ($result->num_rows > 0) {
        echo "<table border='1'>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Email</th>
            <th>Phone</th>
        </tr>";
        while ($row = $result->fetch_assoc()) {
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
    $sql = "SELECT * FROM users";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        echo "<h2>All Entries</h2>";
        echo "<table border='1'>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Email</th>
                <th>Phone</th>
            </tr>";
        while ($row = $result->fetch_assoc()) {
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

$conn->close();
?>

