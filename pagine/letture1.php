<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="../CSS/MyCss.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
    <title>Biblioteca - Inizia lettura</title>
    <?php
        session_start();
        if(!isset($_SESSION['username'])){
            header('location: logout.php');
		}
		$username = $_SESSION["username"];
		$servername = $_SESSION["servername"];
		$db_name = $_SESSION["db_name"];
		$db_username = $_SESSION["db_username"];
		$db_password = $_SESSION["db_password"];
        $error = true;
    ?>
</head>
<body>
    <ul class="barra">
        <li class="barra"><a class="barra" href="home.php?ordine">Home</a></li>
        <li class="barra"><a class="barra" href="aggiungi.php">Aggiungi</a></li>
        <li class="barra"><a class="barra" href="letture.php">Letture</a></li>
        <li class="barra" style="float: right;"><a class="barra" href="logout.php">Logout</a></li>
    </ul>

    <?php
        if ($_SERVER["REQUEST_METHOD"] == "POST") {
            if(/*$_POST["titolo"] == "" or*/ $_POST["inizio"] == ""){
                //echo "Campi lasciati vuoti";
                echo "<div class='row' id='login'>
                            <div class='col-sm-4'></div>
                            <div class='alert alert-danger alert-dismissible fade in col-sm-4'>
                                <a href='#' class='close' data-dismiss='alert' aria-label='close'>&times;</a>
                                <strong>Danger!</strong> Campi lasciati vuoti.
                            </div>
                        </div>";
            } else {
                $titolo = $_POST["titolo"];
                $conn = new mysqli($servername,$db_username,$db_password,$db_name);

                $sql = "SELECT codice
                        FROM libri
                        WHERE titolo='$titolo'";
                $ris = $conn->query($sql) or die("<p>Query fallita! ".$conn->error."</p>");
                $row = $ris->fetch_assoc();

                $sql1 = "INSERT INTO letture (codice, utente, inizio)
                        VALUES ('".$row["codice"]."',
                            '".$username."', 
                            '".$_POST["inizio"]."')";
                if($conn->query($sql1) === true) {
                    header("location: letture2.php");
                } else {
                    //echo "Registrazione non riuscita: " . $conn->error;
                    $error = false;
                }
            }           
        }
    ?>

    <form action="<?php $_SERVER['PHP_SELF'] ?>" method="post">
        <div class="form1">
            <div id="titolo1">
                <h1 class="aggiungi"><b>Inizia lettura</b></h1>
            </div>
            <div class="btn-group btn-group-justified" style="width: 500px; margin: auto;">
                <a href="letture1.php" class="btn btn-primary">Inizia lettura</a>
                <a href="letture2.php" class="btn btn-primary">Letture in corso</a>
                <a href="letture3.php" class="btn btn-primary">Elenco letture</a>
            </div>
            <div class="row" id="login">
                <div class="col-sm-4"></div>
                <div class="col-sm-4" style="text-align: left; margin-top: 50px;">
                    <label for="sel1">Titolo:</label>
                    <select class="form-control" id="sel1" name="titolo">
                        <?php
                            $conn = new mysqli($servername,$db_username,$db_password,$db_name);
                            $sql = "SELECT titolo
                                    FROM libri
                                    ORDER BY titolo";
                
                            $ris = $conn->query($sql) or die("<p>Query fallita! ".$conn->error."</p>");
                            if ($ris->num_rows > 0) {
                                while($row = $ris->fetch_assoc()) {
                                    echo "<option>".$row["titolo"]."</option>";
                                }
                            }
                        ?>
                    </select>
                </div>
            </div>
            <div class="row" id="login">
                <div class="col-sm-4"></div>
                <div class="col-sm-4">
                    <input class="form-control" id="aggiungi" type="date" name="inizio">
                </div>
            </div>
            <div class="row" id="login">
                <div class="col-sm-4"></div>
                <div class="col-sm-4">
                    <input class="btn btn-primary" id ="bottone1" type="submit" value="Inizia lettura">
                </div>
            </div>
        </div>
    </form>

    <?php
        if($error == false) {
            echo "<div class='row' id='login'>
                                <div class='col-sm-4'></div>
                                <div class='alert alert-danger alert-dismissible fade in col-sm-4'>
                                    <a href='#' class='close' data-dismiss='alert' aria-label='close'>&times;</a>
                                    <strong>Danger!</strong> Registrazione non riuscita.
                                </div>
                            </div>";
        }
    ?>
    
</body>
</html>