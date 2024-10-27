<html>

<head>
    <title> This is Example 10 </title>
</head>

<?php 
    $myBook = array( "title" => "The Grapes of Wrath", 
    "author" => "John Steinbeck", 
    "pubYear" => 1939 ); 
    
    foreach ( $myBook as $key => $value ) { 
        echo "<dt>$key</dt>"; 
        echo "<dd>$value</dd>"; 
    } 
?> 


</html>

