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
    <title>Biblioteca - Aggiungi</title>
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
    ?>
</head>
<body>
    <ul class="barra">
        <li class="barra"><a class="barra" href="home.php?ordine">Home</a></li>
        <li class="barra"><a class="barra" href="aggiungi.php">Aggiungi</a></li>
        <li class="barra"><a class="barra" href="letture.php">Letture</a></li>
        <li class="barra" style="float: right;"><a class="barra" href="logout.php">Logout</a></li>
    </ul>
    <form action="<?php $_SERVER['PHP_SELF'] ?>" method="post">
        <div class="form1">
            <div id="titolo1">
                <h1 class="aggiungi"><b>Aggiungi un libro alla biblioteca</b></h1>
            </div>
            <div class="row" id="login">
                <div class="col-sm-4"></div>
                <div class="col-sm-4">
                    <input class="form-control" id="aggiungi" type="text" name="titolo" placeholder="Titolo">
                </div>
            </div>
            <div class="row" id="login">
                <div class="col-sm-4"></div>
                <div class="col-sm-4">
                    <input class="form-control" id="aggiungi" type="text" name="autore" placeholder="Autore">
                </div>
            </div>
            <div class="row" id="login">
                <div class="col-sm-4"></div>
                <div class="col-sm-4">
                    <input class="form-control" id="aggiungi" type="text" name="genere" placeholder="Genere">
                </div>
            </div>
            <div class="row" id="login">
                <div class="col-sm-3"></div>
                <div class="form-check-inline">
                    <label class="form-check-label col-sm-2" for="radio1">
                        <input type="radio" class="form-check-input" id="radio1" name="posizione" value="Camera Lorenzo"> Camera Lorenzo
                    </label>
                </div>
                <div class="form-check-inline">
                    <label class="form-check-label col-sm-2" for="radio2">
                        <input type="radio" class="form-check-input" id="radio2" name="posizione" value="Camera Matteo"> Camera Matteo
                    </label>
                </div>
                <div class="form-check-inline">
                    <label class="form-check-label col-sm-2" for="radio3">
                        <input type="radio" class="form-check-input" id="radio3" name="posizione" value="Kobo"> Kobo
                    </label>
                </div>
            </div>
            <div class="row" id="login">
                <div class="col-sm-4"></div>
                <div class="col-sm-4">
                    <input class="btn btn-primary" id ="bottone1" type="submit" value="Aggiungi">
                </div>
            </div>
        </div>
    </form>
    <?php
        if ($_SERVER["REQUEST_METHOD"] == "POST") {
            if($_POST["titolo"] == "" or $_POST["autore"] == "" or $_POST["genere"] == ""){
                //echo "Campi lasciati vuoti";
                echo "<div class='row' id='login'>
                            <div class='col-sm-4'></div>
                            <div class='alert alert-danger alert-dismissible fade in col-sm-4'>
                                <a href='#' class='close' data-dismiss='alert' aria-label='close'>&times;</a>
                                <strong>Danger!</strong> Campi lasciati vuoti.
                            </div>
                        </div>";
            } else {
                //$cod1 = trim($_POST["titolo"]);
                $cod1 = str_replace(" ", "", $_POST["titolo"]);
                $cod1 = substr($cod1, 0, 3);
                $cod1 = strtoupper($cod1);
                $tmp = explode(" ", $_POST["autore"]);
                $cod2 = substr($tmp[1], 0, 3);
                $cod2 = strtolower($cod2);
                $cod = $cod1;
                $cod .=$cod2;

                $conn = new mysqli($servername,$db_username,$db_password,$db_name);
                $sql = "INSERT INTO libri (codice, titolo, autore, genere, posizione)
                        VALUES ('".$cod."',
                            '".$_POST["titolo"]."', 
                            '".$_POST["autore"]."', 
                            '".$_POST["genere"]."', 
                            '".$_POST["posizione"]."')";
                if($conn->query($sql) === true) {
                    //echo "Registrazione effettuata con successo";
                    echo "<div class='row' id='login'>
                                <div class='col-sm-4'></div>
                                <div class='alert alert-success alert-dismissible fade in col-sm-4'>
                                    <a href='#' class='close' data-dismiss='alert' aria-label='close'>&times;</a>
                                    <strong>Success!</strong> Registrazione effettuata con successo.
                                </div>
                            </div>";
                } else {
                    //echo "Registrazione non riuscita: " . $conn->error;
                    echo "<div class='row' id='login'>
                                <div class='col-sm-4'></div>
                                <div class='alert alert-danger alert-dismissible fade in col-sm-4'>
                                    <a href='#' class='close' data-dismiss='alert' aria-label='close'>&times;</a>
                                    <strong>Danger!</strong> Registrazione non riuscita.
                                </div>
                            </div>";
                }
            }           
        }
    ?>
</body>
</html>