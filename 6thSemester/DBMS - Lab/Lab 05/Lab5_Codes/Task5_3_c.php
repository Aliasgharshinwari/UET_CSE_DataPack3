<?php
echo "<table border='1'>";
echo "<tr>";
echo "<th></th>";
for ($j = 1; $j <= 10; $j++) {
    echo "<th>{$j}</th>"; 
}
echo "</tr>";

for ($i = 1; $i <= 10; $i++) {
    echo "<tr>";
    echo "<th>{$i}</th>"; 

    foreach (range(1, 10) as $j) {
        $quotient = $i / $j;
        $is_composite = false;

        echo "<td>";
        echo number_format($quotient, 4) . "<br/>";
        settype($quotient, "integer");
        echo ($quotient % 2 == 0) ? "EVEN" : "ODD";
        echo "<br/>";

        if ($quotient > 1) {
            for ($k = 2; $k < $quotient; $k++) {
                if ($quotient % $k == 0) {
                    $is_composite = true;
                    break;
                }
            }
            echo ($is_composite == true) ? "COMPOSITE" : "PRIME";
        } else {
            echo "NEITHER";
        }
        echo "</td>";
    }
    echo "</tr>";
}
echo "</table>";
?>
