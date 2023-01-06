<?php 
  session_start();
  include_once "php/config.php";
  if(!isset($_SESSION['unique_id'])){
    header("location: ../index");
  }else if(isset($_SESSION['usuario']) AND isset($_SESSION['unique_id']) ){
    $usuarioNome = $_SESSION['usuario'];
    $usuarioID =  $_SESSION['unique_id'];
  }
  $user_id = mysqli_real_escape_string($conn, $_GET['user_id']);
?>
<?php include_once "header.php"; ?>
<body>
  <?php
$select_suporte = "SELECT * FROM prm_suporte WHERE nome = '$usuarioNome'";
$select_suporte_query = $conn->query($select_suporte);
if($select_suporte_query->num_rows > 0) { 

$select_perm2 = "SELECT * FROM aguardando WHERE unique_id = '$user_id' AND status = '1' ";
$select_perm_query2 = $conn->query($select_perm2);
if($select_perm_query2->num_rows > 0) { 
$sql2 = mysqli_query($conn, "UPDATE aguardando SET status = '2', suporte_id = '$usuarioID' WHERE unique_id = '$user_id' ");
$sql2 = mysqli_query($conn, "UPDATE prm_suporte SET id_cliente = '$user_id' WHERE unique_id = '$usuarioID' ");
}
$select_perm = "SELECT * FROM aguardando WHERE unique_id = '$user_id' AND suporte_id = '$usuarioID' ";
$select_perm_query = $conn->query($select_perm);
if($select_perm_query->num_rows > 0) { 
}else{
  $_SESSION['msg'] = '<div id="tostalertds" class="ds">O usuário já foi Atendido.</div>';
  header("Location: users");
  exit();
}
  ?>
<div class="wrapper">
    <section class="chat-area">
      <header>
        <?php 
          $sql = mysqli_query($conn, "SELECT * FROM users WHERE unique_id = {$user_id}");
          if(mysqli_num_rows($sql) > 0){
            $row = mysqli_fetch_assoc($sql);
          }else{
            header("location: users.php");
          }
        ?>
        <a href="users.php" class="back-icon"><i class="fas fa-arrow-left"></i></a>
        <div style="margin-right: 10px; height: 60px; width: 65px;  background: url(https://www.habbo.com.br/habbo-imaging/avatarimage?&user=<?php echo $row['nome'] ;?>&action=&direction=4&head_direction=3&img_format=png&gesture=&headonly=0&size=2),  radial-gradient(circle, #fff, #f1f1f1); background-position: center top -10px; border-radius: 60px; "></div>
        <div class="details">
          <span><?php echo $row['nome'] ?></span>
          <p><?php echo $row['status']; ?></p>
        </div>
      </header>
      <div class="chat-box">

      </div>
      <form action="#" class="typing-area">
        <input type="text" class="incoming_id" name="incoming_id" value="<?php echo $user_id; ?>" hidden>
        <input type="text" name="message" class="input-field" placeholder="Digite uma mensagem aqui..." autocomplete="off">
        <button><i class="fab fa-telegram-plane"></i></button>
      </form>
    </section>
  </div>

<?php }else{ 
  $select_suporte3 = "SELECT * FROM prm_suporte WHERE unique_id = {$user_id} AND id_cliente = '$usuarioID' ";
  $select_suporte_query3 = $conn->query($select_suporte3);
  if($select_suporte_query3->num_rows > 0) { 
  }else{
    $_SESSION['msg'] = '<div id="tostalertds" class="ds">Sem permissão!</div>';
    header("Location: users");
    exit();
  }
  
  ?>

  <div class="wrapper">
    <section class="chat-area">
      <header>
        <?php 
          $user_id = mysqli_real_escape_string($conn, $_GET['user_id']);
          $sql = mysqli_query($conn, "SELECT * FROM users WHERE unique_id = {$user_id}");
          if(mysqli_num_rows($sql) > 0){
            $row = mysqli_fetch_assoc($sql);
          }else{
            header("location: users.php");
          }
        ?>
        <a href="users.php" class="back-icon"><i class="fas fa-arrow-left"></i></a>
        <div style="margin-right: 10px; height: 60px; width: 65px;  background: url(https://www.habbo.com.br/habbo-imaging/avatarimage?&user=<?php echo $row['nome'] ;?>&action=&direction=4&head_direction=3&img_format=png&gesture=&headonly=0&size=2),  radial-gradient(circle, #fff, #f1f1f1); background-position: center top -10px; border-radius: 60px; "></div>
        <div class="details">
          <span><?php echo $row['nome'] ?></span>
          <p><?php echo $row['status']; ?></p>
        </div>
      </header>
      <div class="chat-box">

      </div>
      <form action="#" class="typing-area">
        <input type="text" class="incoming_id" name="incoming_id" value="<?php echo $user_id; ?>" hidden>
        <input type="text" name="message" class="input-field" placeholder="Type a message here..." autocomplete="off">
        <button><i class="fab fa-telegram-plane"></i></button>
      </form>
    </section>
  </div>

<?php } ?>
  <script src="javascript/chat.js"></script>

</body>
</html>
