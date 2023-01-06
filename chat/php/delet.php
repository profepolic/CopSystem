<?php 
  session_start();
  include_once "config.php";
  if(!isset($_SESSION['unique_id'])){
    header("location: ../index");
  }else if(isset($_SESSION['usuario']) AND isset($_SESSION['unique_id']) ){
    $usuarioNome = $_SESSION['usuario'];
    $usuarioID =  $_SESSION['unique_id'];
    $user_id = mysqli_real_escape_string($conn, $_GET['user_id']);
  }


  $select_suporte = "SELECT * FROM prm_suporte WHERE nome = '$usuarioNome'";
  $select_suporte_query = $conn->query($select_suporte);
  if($select_suporte_query->num_rows > 0) {
    $sql2 = mysqli_query($conn, "UPDATE prm_suporte SET id_cliente = NULL WHERE nome = '$usuarioNome'");
    $sql2 = mysqli_query($conn, "DELETE FROM  aguardando WHERE unique_id = '$user_id' AND suporte_id = '$usuarioID'");
    header("Location: ../users");
    exit();
}else{
    $sql2 = mysqli_query($conn, "UPDATE prm_suporte SET id_cliente = NULL WHERE id_cliente = '$usuarioID'");
    $sql2 = mysqli_query($conn, "DELETE FROM  aguardando WHERE unique_id = '$usuarioID'");
    header("Location: ../users");
    exit();
}

?>