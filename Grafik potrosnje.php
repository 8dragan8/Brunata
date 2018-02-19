<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Page Title</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" media="screen" href="css/main.css" />
    <!-- <script src="main.js"></script> -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.4.0/Chart.min.js"></script>



</head>
<body>
    
<?php
        include "Pripremljene funkcije.php";
        include "konekcija.php";

        global $conn;

        $param_1='ukupno_kWh';
        $param_2='ukupn0_kWh_po_imp';
        $param_3='ukupno_kWh';


        // $sql_1="SELECT ukupno_kWh, period from racun;";
        $sql_1="SELECT $param_1, date_format(period, '%M %Y') as period from racun;";
        $sql_2="SELECT $param_2, date_format(period, '%M %Y') as period from racun;";
        $sql_3="SELECT $param_3 / ukupna_kvadratura as $param_3, date_format(period, '%M %Y') as period from racun;";

        function generisiPeriod($conn, $sql, $param) {

            foreach ($conn->query($sql) as $row) { 
                echo "'" . $row["period"] . "', ";

            };
        }
        function generisiPotrosnju($conn, $sql, $param) {
            
            $i=1;
            
            foreach ($conn->query($sql) as $row) { 

            //    echo $row["ukupno_kWh"] . ", ";
               echo "{ x: " . $i++ . ", y:".intval($row[$param]) . "}, ";
            //    echo "{ x: " . $row["period"] . ", y:".$row["ukupno_kWh"] . "}, ";

            

            };
        }

        function generisiPotrosnjuPO_m2($conn, $sql, $param) {
            
            $i=1;
            
            foreach ($conn->query($sql) as $row) { 

            //    echo $row["ukupno_kWh"] . ", ";
               echo "{ x: " . $i++ . ", y:". intval($row[$param]) . "}, ";
            //    echo "{ x: " . $row["period"] . ", y:". intval($row[$param]) . "}, ";

            

            };
        }


//     echo $sql_1;
//     echo $sql_2;
    // echo $sql_3;

// generisiPeriod($conn, $sql_1, $param_1);
// generisiPotrosnju($conn, $sql_1, $param_1);
// generisiPeriod($conn, $sql_2, $param_2);
// generisiPotrosnju($conn, $sql_2, $param_2);
// generisiPotrosnjuPO_m2($conn, $sql_3, $param_3);

        
        
?>




    
    <div class="container">

        
        <div class="row">
            
            
            <canvas id="myChart"></canvas>
            
            
            <script>

                var ctx = document.getElementById('myChart').getContext('2d');
                var chart = new Chart(ctx, {
                    // The type of chart we want to create
                    type: 'line',

                    // The data for our dataset
                    data: {
                        labels: [<?php generisiPeriod($conn, $sql_1, $param_1); ?>],
                        datasets: [

                                    {
                                        label: 'Potrosnja po Mesecima var',
                                        backgroundColor: 'rgba(255, 99, 0, 0.8)',
                                            // borderColor: 'rgba(0, 0, 0, 0.1)',
                                        data:[<?php generisiPotrosnju($conn, $sql_2, $param_2); ?>],
                                    },
                                    {
                                        label: 'Potrosnja po Mesecima',
                                        backgroundColor: 'rgba(12, 99, 0, 0.8)',
                                        // borderColor: 'rgba(22,34, 5, 0.7)',
                                        data:[<?php generisiPotrosnju($conn, $sql_1, $param_1); ?>],
                                    }
                                    
                                    ]   

                    },

                    // Configuration options go here

                    options: {
                            // scales: {
                            //     yAxes: [{
                            //         ticks: {
                            //             Min: 0,
                            //             Max: 10
                            //             }
                            //         }],
                            //     xAxes: [{
                            //         time: {
                            //             unit: 'month'
                            //         }
                            //     }]
                            // }
            

                    }

                });

            
            </script>
        </div>

    

        
    
            <canvas id="myChart2"></canvas>
            
            
            <script>

                var ctx = document.getElementById('myChart2').getContext('2d');
                var chart = new Chart(ctx, {
                    // The type of chart we want to create
                    type: 'line',

                    // The data for our dataset
                    data: {
                        labels: [<?php generisiPeriod($conn, $sql_1, $param_1); ?>],
                        datasets: [

                                    {
                                        label: 'Potrosnja po Mesecima kWh/m2',
                                        backgroundColor: 'rgba(255, 99, 0, 0.8)',
                                            // borderColor: 'rgba(0, 0, 0, 0.1)',
                                        data:[<?php generisiPotrosnjuPO_m2($conn, $sql_3, $param_3); ?>],
                                    }
                                    
                                    ]   

                    },

                    // Configuration options go here

                    options: {
           

                    }

                });


            
            </script>

    
    </div>
    
</body>
</html>


