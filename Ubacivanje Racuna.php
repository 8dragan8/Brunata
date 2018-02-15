
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Page Title</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- <link rel="stylesheet" type="text/css" media="screen" href="main.css" />
    <script src="main.js"></script> -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>


</head>
<body>

    <?php

    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "brunata";

    try {
        $conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
        // set the PDO error mode to exception
        $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

        $unesiPeriod = trim($_POST["period"]);
        $unesim2Ukup = trim($_POST["m2Ukup"]);
        $unesiIMPukup = trim($_POST["IMPukup"]);
        $unesikWhukup = trim($_POST["kWhukup"]);
        $unesikWhpoM2 = trim($_POST["kwhpoM2"]);
        $unesikWhpoIMP = trim($_POST["kWhpoIMP"]);

        // $stmt = $dbname->prepare()
        
    
        }
    catch(PDOException $e)
        {
        echo $sql . "<br>" . $e->getMessage();
        }

    



    ?>

    
    <div class="container">

    
        
        <div class="row">
            
            <div class="col-xs-6 col-sm-8 col-md-8 col-lg-12">
                
               
               <ul class="list-group">
                   <li class="list-group-item"><?php echo $unesiPeriod;  ?></li>
                   <li class="list-group-item"><?php echo $unesim2Ukup;  ?></li>
                   <li class="list-group-item"><?php echo $unesiIMPukup;  ?></li>
                   <li class="list-group-item"><?php echo $unesikWhukup;  ?></li>
                   <li class="list-group-item"><?php echo $unesikWhpoM2;  ?></li>
                   <li class="list-group-item"><?php echo $unesikWhpoIMP;  ?></li>
               </ul>
               
                
                
            </div>
            
        </div>
        
    </div>
    

</body>
</html>