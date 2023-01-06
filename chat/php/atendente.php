<?php
    session_start();
    include_once "config.php";
    if(isset($_SESSION['usuario']) AND isset($_SESSION['unique_id']) ){
        $usuarioNome = $_SESSION['usuario'];
        $outgoing_id = $_SESSION['unique_id'];
      }
      $select_perm2s = "SELECT * FROM aguardando WHERE suporte_id = '$outgoing_id'";
      $select_perm_query2s = $conn->query($select_perm2s);
    if($select_perm_query2s->num_rows > 0) {
        $sql = "SELECT * FROM aguardando WHERE NOT unique_id = {$outgoing_id}  AND suporte_id = '$outgoing_id' ORDER BY id ASC";
    }else{
        $sql = "SELECT * FROM aguardando WHERE NOT unique_id = {$outgoing_id}  AND status = '1' ORDER BY id ASC";
    } 
    $query = mysqli_query($conn, $sql);
    $output = "";
    if(mysqli_num_rows($query) == 0){
        $output .= "<center>Nenhuma Solicitação . . .</centet>";
    }elseif(mysqli_num_rows($query) > 0){
    if($query->num_rows > 0) { 
        include_once "dataAten.php";
    }
    }
    echo $output;


?>