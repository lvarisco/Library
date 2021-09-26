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
    <title>Biblioteca - Registrazione</title>
    <?php
		$servername = "localhost";
		$db_name = "biblioteca";
    	$db_username = "root";
		$db_password = "";
	?>
</head>
<body>
    <form action="<?php $_SERVER['PHP_SELF'] ?>" method="post">
        <div class="form1">
            <div id="titolo1">
                <h1 class="aggiungi"><b>Registrati</b></h1>
            </div>
            <div class="row" id="login">
                <div class="col-sm-4"></div>
                <div class="col-sm-4">
                    <input class="form-control" id="aggiungi" type="text" name="username" placeholder="Username">
                </div>
            </div>
            <div class="row" id="login">
                <div class="col-sm-4"></div>
                <div class="col-sm-4">
                    <input class="form-control" id="aggiungi" type="text" name="password" placeholder="Password">
                </div>
            </div>
            <div class="row" id="login">
                <div class="col-sm-4"></div>
                <div class="col-sm-4">
                    <input class="form-control" id="aggiungi" type="text" name="nome" placeholder="Nome">
                </div>
            </div>
            <div class="row" id="login">
                <div class="col-sm-4"></div>
                <div class="col-sm-4">
                    <input class="form-control" id="aggiungi" type="text" name="cognome" placeholder="Cognome">
                </div>
            </div>
            <div class="row" id="login">
                <div class="col-sm-4"></div>
                <div class="col-sm-4">
                    <input class="btn btn-primary" id ="bottone1" type="submit" value="Registrati">
                </div>
            </div>
        </div>
    </form>
    <?php
        if ($_SERVER["REQUEST_METHOD"] == "POST") {
            if($_POST["username"] == "" or $_POST["password"] == ""){
                echo "username e password non possono essere vuoti!";
            } else {
                $conn = new mysqli($servername,$db_username,$db_password,$db_name);
                $sql = "SELECT Username 
                    FROM utenti 
                    WHERE Username='".$_POST["username"]."'";
                //echo $sql;

                $ris = $conn->query($sql) or die("<p>Query fallita!</p>");
                if($ris->num_rows > 0){
                    echo "<div class='row' style='margin-top: 30px;'>
                                <div class='col-sm-3'></div>
                                <div class='col-sm-6'>
                                    <div class='alert alert-danger'><strong>Errore!</strong> Lo username scelto non è disponibile.</div>
                                </div>
                            </div>";
                } else {
                    $sql = "INSERT INTO utenti (Username, Password, Nome, Cognome)
                            VALUES ('".$_POST["username"]."', 
                                '".$_POST["password"]."', 
                                '".$_POST["nome"]."', 
                                '".$_POST["cognome"]."')";
                    if($conn->query($sql) === true) {
                        $conn->close();
                        header("location: home.php");
                    } else {
                        echo "Registrazione non riuscita: " . $conn->error;
                    }
                }
            }
            
                    
        }
    ?>
</body>
</html>