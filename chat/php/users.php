<?php
    session_start();
    include_once "config.php";
    $outgoing_id = $_SESSION['unique_id'];
    $sql = "SELECT * FROM prm_suporte WHERE NOT unique_id = {$outgoing_id}  AND id_cliente = {$outgoing_id} ORDER BY id DESC";
    $query = mysqli_query($conn, $sql);
    $output = "";
    if(mysqli_num_rows($query) == 0){
        $output .= "<center>Aguardando Atendente . . .</centet>";
    }elseif(mysqli_num_rows($query) > 0){
    if($query->num_rows > 0) { 
        include_once "data.php";
    }
    }
    echo $output;
?>