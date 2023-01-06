<?php 
  session_start();
  include_once "config.php";
  if(!isset($_SESSION['unique_id'])){
    header("location: ../index");
  }else if(isset($_SESSION['usuario']) AND isset($_SESSION['unique_id']) ){
    $usuarioNome = $_SESSION['usuario'];
    $usuarioID =  $_SESSION['unique_id'];
  }


  $select_suporte = "SELECT * FROM aguardando WHERE nome = '$usuarioNome'";
  $select_suporte_query = $conn->query($select_suporte);
  if($select_suporte_query->num_rows > 0) {
    $_SESSION['msg'] = '<div id="tostalertds" class="ds">Suporte iniciado, aguarde . . .</div>';
    header("Location: users");
    exit();
  }else{
    $sql = mysqli_query($conn, "INSERT INTO aguardando (nome, unique_id)
    VALUES ('$usuarioNome', {$usuarioID})") or die();
    header("Location: ../users");
    exit();
  }

?>