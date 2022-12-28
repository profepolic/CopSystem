<?php
define("HOST", "localhost");
define("USER", "root");
define("PASS", "@ssiS90341528");
define("DB", "copsystem");

$conn = mysqli_connect(HOST, USER, PASS, DB) or die("Não é possível conectar-se ao banco de dados.");
$cons = new PDO('mysql:host=' . HOST . ';dbname=' . DB . ';', USER, PASS);	
?>
