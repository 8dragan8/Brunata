
 <?php
//  Ubacivanje racuna iz formulara


function InputIntoRacuni($conn, $unesiID, $unesiPeriod, $unesim2Ukup, $unesiIMPukup, $unesikWhukup, $unesikWhpoM2, $unesikWhpoIMP){
        
        $stmt = $conn->prepare( "INSERT INTO racun(idracun, period, ukupna_kvadratura, ukupno_imp, ukupno_kWh, ukupno_kWh_po_m2, ukupno_kWh_po_imp)"
        ." VALUES(:idracun, :period, :ukupna_kvadratura, :ukupno_imp, :ukupno_kWh, :ukupno_kWh_po_m2, :ukupno_kWh_po_imp);"
    );
    $stmt->bindParam(':idracun', $unesiID);
    $stmt->bindParam(':period', $unesiPeriod);
    $stmt->bindParam(':ukupna_kvadratura', $unesim2Ukup);
    $stmt->bindParam(':ukupno_imp', $unesiIMPukup);
    $stmt->bindParam(':ukupno_kWh', $unesikWhukup);
    $stmt->bindParam(':ukupno_kWh_po_m2', $unesikWhpoM2);
    $stmt->bindParam(':ukupno_kWh_po_imp', $unesikWhpoIMP);
    
    
    $stmt->execute();

}
    



function showAllData() {
    global $conn;
    $query = "use brunata; SELECT * FROM racun";
    $result = mysqli_query($conn, $query);
    if(!$result) {
        die('Query FAILED' . mysqli_error());
    }
    
    while($row = mysqli_fetch_assoc($result)) {
        $id = $row['id'];
        
        echo "<p>$id</p>";
        
    }
    
}


function Iscitavanje($conn) {

    $sql= "SELECT
                idracun,
                period,
                ukupna_kvadratura,
                ukupno_imp,
                ukupno_kWh,
                ukupno_kWh_po_m2,
                ukupno_kWh_po_imp

            from racun"
            ;

        foreach ($conn->query($sql) as $row) { 
                echo "<tr>
                <th scope='row'>" . $row["idracun"]."</th>
                <th scope='row'>" . $row["period"]."</th>
                <th scope='row'>" . $row["ukupna_kvadratura"]."</th>
                <th scope='row'>" . $row["ukupno_imp"]."</th>
                <th scope='row'>" . $row["ukupno_kWh"]."</th>
                <th scope='row'>" . $row["ukupno_kWh_po_m2"]."</th>
                <th scope='row'>" . $row["ukupno_kWh_po_imp"]."</th>
                </tr>";
            }

}

function IscitavanjeTabelaStaro ($conn, $unosTabela){

    try {
    
    $sql= "CALL Brunata.popuniTabele('$unosTabela');";
        
        
        $stmt = $conn->query($sql);

        // echo $sql . " >>>>>>>>>   " . " >>>>>>>>>   " . " >>>>>>>>>   " . $unosTabela;
        
          $stmt ->debugDumpParams();
            }
    catch(PDOException $e)
        {
        echo $sql . "<br>" . $e->getMessage();
        }


}


?>        