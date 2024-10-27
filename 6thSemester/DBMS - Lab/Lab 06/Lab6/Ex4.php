<?php 
//step 1. Database Connection + Database Selection + Check Connection 
//server name, user, user's password, and database 
//must be provided. 
$username = 'root'; 
$password = ''; 
try 
{ 
$str = 'mysql:host=localhost;dbname=lab6_Ex2;charset=utf8'; 
$db = new PDO($str,$username, $password); 
$db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION); 
echo "Connected successfully"; 
echo "</br>"; 
echo "</br>"; 
} 
catch(PDOException $e) 
{ 
echo "Connection failed: " .$e->getMessage(); 
} 
?> 
<!DOCTYPE html> 
<html> 
<head> 
<title>Php-PDO Basics </title> 
</head> 
<body> 
<?php 
//step 2. Perform query or operation on database 
$q = $db->prepare("select * from department"); 
$q->execute(); 
//step 3. Show result 
$q_records = $q->fetchAll(); 
foreach ($q_records as $row){ 
printf ("%s %s\n",$row["dep_ID"],$row["dep_Name"]); 
echo "</br>"; 
} 
?> 
</body> 
</html> 
<?php 
//step 4. Close Database 
$db = null; 
?>