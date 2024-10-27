<?php 
    //step 1. Database Connection + Database Selection 
    //server name, user, user's password, and database 
    //must be provided. 
    $db = mysqli_connect("localhost", "root", "", "lab6_Ex2"); 
    //step 2. Check Connection 
    if(mysqli_connect_errno()) 
    { 
        echo "Failed to connect to MySql: ".mysqli_connect_error(); 
    } 
    ?> 
<!DOCTYPE html> 
<html> 
<head> 
<title>PHP MySqli (Procedural) Basics</title> 
</head> 
<body> 

    <?php 
        //step 3. Perform query or operation on database 
        $sql = "SELECT * FROM department"; 
        $result = mysqli_query($db, $sql); 
        //step 4. Show result 
        while($row = mysqli_fetch_array($result, MYSQLI_ASSOC)){ 
            printf ("%s %s\n",$row["dep_ID"],$row["dep_Name"]); 
    ?> 
    <br/> 
<?php } 
    //step 5. Free result set 
    mysqli_free_result($result); 
    ?> 
</body> 
</html> 
<?php 
    //step 6. Close Database Connection 
    mysqli_close($db); 
?> 