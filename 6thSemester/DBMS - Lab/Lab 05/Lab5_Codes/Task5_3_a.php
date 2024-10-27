<table border="1">
<?php 

   for ($i=0; $i <=10 ; $i++) {  
       echo "<tr>";
      //  echo "<td>".$i."</td>";
        for ($j=0; $j <=10 ; $j++) {   
            if ($i == 0 && $j == 0) {
                echo "<td></td>";
            }
            else if ($i == 0) {
                echo "<td>".($j) ."</td>";
            }
            else if($j == 0){
                echo "<td>".$i ."</td>";
            }
            else{                
                $qoutient = $i/$j; 
                $is_composite = false;
                echo "<td>".number_format($qoutient, 4)."<br/>";
                settype( $qoutient, "integer" );
                echo ( $qoutient % 2 == 0) ? "EVEN" : "ODD";
                echo "<br/>";
                if($qoutient > 1){
                    for ($k=2; $k < $qoutient; $k++) { 
                        if($qoutient % $k == 0) {
                            $is_composite = true;
                            break;
                        }
                    }
                    echo ( $is_composite == true) ? "COMPOSITE" : "PRIME";   
                }
                else {
                    echo "NEITHER";   
                }
                echo "</td>";
        }
    }            
    echo "</tr>";
   }
?> 
</table>
