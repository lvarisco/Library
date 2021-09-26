<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="CSS/MyCss.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
    <title>Biblioteca - Login</title>
    <?php
        session_start();
        if(isset($_SESSION['username'])){
            header('location: pagine/home.php?ordine');
        }
        if ($_SERVER["REQUEST_METHOD"] == "POST"){
            $username = $_POST["username"];
            $password = $_POST["password"];
            $servername = "localhost";
            $db_name = "biblioteca";
            $db_username = "root";
            $db_password = "";
        } else {
            $username = "";
            $password = "";
        }
    ?>
</head>
<body>
    <!--<div class="right">
        <img src="immagini/libro.jpg" alt="libro">
    </div>-->
    <form action="<?php $_SERVER['PHP_SELF'] ?>" method="post">
        <div class="right">
            <img src="immagini/libro.png" alt="libro">
        </div>
        <div class="form">
            <div class="row" id="titolo">
                <div class="col-sm-2"></div>
                <div class="col-sm-3">
                    <h1><b>Login</b></h1>
                </div>
            </div>
            <div class="row" id="login">
                <div class="col-sm-2"></div>
                <div class="col-sm-3">
                    <input class="form-control" id="form" type="text" name="username" placeholder="Username">
                </div>
            </div>
            <div class="row" id="login">
                <div class="col-sm-2"></div>
                <div class="col-sm-3">
                    <input class="form-control" id="form" type="password" name="password" placeholder="Password">
                </div>
            </div>
            <div class="row" id="login">
                <div class="col-sm-2"></div>
                <div class="col-sm-3">
                    <input class="form-control" id="bottone" type="submit" value="Login">
                </div>
            </div>
            <div class="row" id="login">
                <div class="col-sm-2"></div>
                <div class="col-sm-3">
                    <a class="link" href="pagine/registrazione.php">Registrati</a>
                </div>
            </div>
        </div>
    </form>
    <?php
        if ($_SERVER["REQUEST_METHOD"] == "POST") {
            if( empty($_POST["username"]) or empty($_POST["password"])) {
                echo "<p>Campi lasciati vuoti</p>";
            } else {
                $conn = new mysqli($servername,$db_username,$db_password,$db_name);
                if($conn->connect_error){
                    die("<p>Connessione al server non riuscita: ".$conn->connect_error."</p>");
                }
                $sql = "	SELECT username, password 
                            FROM utenti 
                            WHERE username='$username'
                                AND password='$password'";
                $ris = $conn->query($sql) or die("<p>Query fallita! ".$conn->error."</p>");
                if($ris->num_rows == 0){
                    echo "<div class='row' style='margin-top: 30px;'>
                                <div class='col-sm-4'></div>
                                <div class='col-sm-4'>
                                    <div class='alert alert-danger'><strong>Errore!</strong> Utente non trovato o password errata.</div>
                                </div>
                            </div>";
                    $conn->close();
                } else {
                    $_SESSION["username"]=$username;
                    $_SESSION["servername"]=$servername;
                    $_SESSION["db_name"]=$db_name;
                    $_SESSION["db_username"]=$db_username;
                    $_SESSION["db_password"]=$db_password;

                    $conn->close();
                    header("location: pagine/home.php?ordine");
                }
            }
        }
    ?>
</body>
</html>