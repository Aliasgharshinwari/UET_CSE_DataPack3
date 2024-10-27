<?php 
    // Define a floating-point variable
    $var = 8.23;

    // Define a binary string
    $binary_value = '0b1010';

    // Convert the binary string to an integer
    $int_from_binary = intval($binary_value, 2); 

    // Convert the floating-point variable to an integer
    $int_value = intval($var); 

    // Display the results
    echo "int value: {$int_value} <br/>";
    echo "int from binary: {$int_from_binary} <br/>";

    // Define some string values
    $float_str = '1234.56789';
    $non_numeric_str = 'The122.34343';

    // Convert the string to a floating-point value
    $float_value = floatval($float_str);

    // Convert a non-numeric string to a floating-point value
    $non_numeric_float = floatval($non_numeric_str); 

    // Display the results
    echo "float value: {$float_value} <br/>";
    echo "non-numeric float: {$non_numeric_float} <br/>";

    // Define integer and floating-point numbers
    $number = 1234;
    $float_number = 1234.56789;
    
    // Convert the numbers to string values
    $string_value = strval($number); 
    $float_string = strval($float_number);

    // Display the results
    echo "string value: {$float_value} <br/>";
    echo "float string: {$float_string} <br/>";
?> 