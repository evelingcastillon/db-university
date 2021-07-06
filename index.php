<?php

define("DB_SERVERNAME", "localhost");
define("DB_USERNAME", "root");
define('DB_PASSWORD', 'root');
define('DB_NAME', 'university');
define('DB_PORT', '3306');


$connection = new mysqli(DB_SERVERNAME, DB_USERNAME, DB_PASSWORD, DB_NAME, DB_PORT);


/* VERIFICA LA CONNESSIONE */
if ($connection && $connection->connect_error) {
    echo 'Connection failed: ' . $connection->connect_error;
    
}
echo 'Connection Successful, Go!';

$sql = "SELECT * FROM `students`";
$result = $connection->query($sql);
var_dump($result);


/* VERIFICARE SE CI SONO RISULTATI NELLE QUERY */
if ($result && $result->num_rows > 0) {
    var_dump($result->fetch_assoc()); //singolo valore - 1 riga
    
    //Cicliamo i nostri risultati
    while ($student = $result->fetch_array()) {
?>
    <span> <strong>Nome: </strong>  <?= $student['name'] ?></span>
    <span> <strong>Cognome: </strong>  <?= $student['surname'] ?></span>
     
  <?php      
    }

} elseif ($result) {
    echo 'Nessun Risultato';
} else {
    echo 'Errore nella query';
}
/* Chiusura della connessione */
$connection->close();