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
    <script src="https://kit.fontawesome.com/bb4d7bec8d.js" crossorigin="anonymous"></script>
    <title>Biblioteca - Elenco letture</title>
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
    <div id="titolo2">
        <h1 class="aggiungi"><b>Elenco letture</b></h1>
    </div>
    <div class="btn-group btn-group-justified" style="width: 500px; margin: auto;">
        <a href="letture1.php" class="btn btn-primary">Inizia lettura</a>
        <a href="letture2.php" class="btn btn-primary">Letture in corso</a>
        <a href="letture3.php" class="btn btn-primary">Elenco letture</a>
    </div>
    
    <div class="tabella">
        <table class="table table-striped">
            <thead>
                <tr>
                    <th>Codice</th>
                    <th>Titolo</th>
                    <th>Autore</th>
                    <th>Genere</th>
                    <th style='text-align: center;'>Data di inizio</th>
                    <th style='text-align: center;'>Data di fine</th>
                    <th style='text-align: center;'>Preferiti</th>
                </tr>
            </thead>
            <tbody>
                <?php
                    $conn = new mysqli($servername,$db_username,$db_password,$db_name);

                    if ($_SERVER["REQUEST_METHOD"] == "POST") {
                        if(isset($_POST['0'])) {
                            $sql = "UPDATE letture
                                SET preferiti= '1'
                                WHERE codice='".$_POST["cod"]."'";
                            $ris = $conn->query($sql) or die("<p>Query fallita! ".$conn->error."</p>");
                            header("Refresh:1");
                        } else if(isset($_POST['1'])) {
                            $sql = "UPDATE letture
                                SET preferiti= '0'
                                WHERE codice='".$_POST["cod"]."'";
                            $ris = $conn->query($sql) or die("<p>Query fallita! ".$conn->error."</p>");
                            //header('location: letture3.php');
                        }
                    }

                    $sql = "SELECT libri.codice, titolo, autore, genere, DATE_FORMAT(inizio, '%d/%m/%Y') as inizio, DATE_FORMAT(fine, '%d/%m/%Y') as fine, preferiti
                            FROM libri JOIN letture
                            ON libri.codice=letture.codice
                            WHERE inizio IS NOT NULL AND fine IS NOT NULL AND utente='$username'
                            ORDER BY DATE_FORMAT(fine, '%Y/%m/%d') DESC";

                    $ris = $conn->query($sql) or die("<p>Query fallita! ".$conn->error."</p>");

                    if ($ris->num_rows > 0) {
                        $x=0;
                        while($row = $ris->fetch_assoc()) {
                            $x += 1;
                            echo "<tr>
                                    <td>".$row["codice"]."</td>
                                    <td>".$row["titolo"]."</td>
                                    <td>".$row["autore"]."</td>
                                    <td>".$row["genere"]."</td>
                                    <td style='text-align: center;'>".$row["inizio"]."</td>
                                    <td style='text-align: center;'>".$row["fine"]."</td>";
                            if($row["preferiti"] != 1){
                                echo "<td style='text-align: center;'>
                                        <form class='form-inline' action=".$_SERVER['PHP_SELF']." method='post'>
                                            <input class='hidden' type='text' name='cod' value=".$row["codice"].">
                                            <button type='submit' name='0' style='border: none; background: none; outline: 0;'><i id='".$x."' onmouseover='active(".$x.")' onmouseout='un_active(".$x.")' onclick='active(".$x.")' class='far fa-star' style='color: #ffce00;'></i></button>
                                        </form>
                                        </td>
                                    </tr>";
                            } else{
                                echo "<td style='text-align: center;'>
                                        <form class='form-inline' action=".$_SERVER['PHP_SELF']." method='post'>
                                            <input class='hidden' type='text' name='cod' value=".$row["codice"].">
                                            <button type='submit' name='1' style='border: none; background: none; outline: 0;'><i id='".$x."' onmouseover='un_active(".$x.")' onmouseout='active(".$x.")' class='fas fa-star' style='color: #ffce00;'></i></button>
                                        </form>
                                        </td>
                                    </tr>";
                            }
                        }
                    }
                ?>
            </tbody>
        </table>
    </div>
    <script type="text/javascript">
        function active(x) {
            document.getElementById(x).className = 'fas fa-star';
        }
        function un_active(x) {
            document.getElementById(x).className = 'far fa-star';
        }
    </script>
</body>
</html>