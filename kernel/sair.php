<?php
@session_start();
    include_once("config.php");
    $status = "Offline agora";
    $usuarioNome = $_SESSION["usuario"];
    $sql = mysqli_query($conn, "UPDATE users SET status = '{$status}' WHERE nome = '$usuarioNome' ");
    session_unset();
    session_destroy();
header("LOCATION: ../index");
exit();
?>