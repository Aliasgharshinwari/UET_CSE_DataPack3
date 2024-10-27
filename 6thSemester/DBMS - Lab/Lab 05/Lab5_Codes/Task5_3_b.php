<?php
$i = 0;
echo "<table border='1'>";

while ($i <= 10) {
    echo "<tr>";

    $j = 0;
    while ($j <= 10) {
        if ($i == 0 && $j == 0) {
            echo "<td></td>";
        } elseif ($i == 0) {
            echo "<td>" . ($j) . "</td>";
        } elseif ($j == 0) {
            echo "<td>" . $i . "</td>";
        } else {
            $quotient = $i / $j;
            $is_composite = false;

            echo "<td>" . number_format($quotient, 4) . "<br/>";
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
        $j++;
    }

    echo "</tr>";
    $i++;
}
echo "</table>";
?>
