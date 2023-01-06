<?php 
  session_start();
  include_once "php/config.php";
  if(!isset($_SESSION['unique_id'])){
    header("location: ../index");
  }else if(isset($_SESSION['usuario']) AND isset($_SESSION['unique_id']) ){
    $usuarioNome = $_SESSION['usuario'];
    $usuarioID =  $_SESSION['unique_id'];
  }
?>
<?php include_once "header.php"; ?>
<body>
<?php
$select_suporte = "SELECT * FROM prm_suporte WHERE nome = '$usuarioNome'";
$select_suporte_query = $conn->query($select_suporte);
if($select_suporte_query->num_rows > 0) { ?>

<div class="wrapper">
    <section class="users">
      <header>
        <div class="content">
          <?php 
            $sql = mysqli_query($conn, "SELECT * FROM users WHERE unique_id = {$_SESSION['unique_id']}");
            if(mysqli_num_rows($sql) > 0){
              $row = mysqli_fetch_assoc($sql);
            }
          ?>
          <div style="margin-right: 10px; height: 60px; width: 65px;  background: url(https://www.habbo.com.br/habbo-imaging/avatarimage?&user=<?php echo $row['nome'] ;?>&action=&direction=4&head_direction=3&img_format=png&gesture=&headonly=0&size=2),  radial-gradient(circle, #fff, #f1f1f1); background-position: center top -10px; border-radius: 60px; "></div>
          <div class="details">
            <span><?php echo $row['nome']?></span>
            <p><?php echo $row['status']; ?></p>
          </div>
        </div>
        <!-- <a href="#" class="logout">Sair</a> -->

      </header>
      <div class="search">
        <span class="text"><?php echo $usuarioNome?> - Suporte</span>
      </div>
      <div class="users-list">
      <?php
        		if(isset($_SESSION['msg'])){
        		echo $_SESSION['msg'];
        		unset($_SESSION['msg']);   
            }
        ?>  
      </div>
    </section>
  </div>
  <script src="javascript/atendente.js"></script>

<?php }else{ ?>
  <div class="wrapper">
    <section class="users">
      <header>
        <div class="content">
          <?php 
            $sql = mysqli_query($conn, "SELECT * FROM users WHERE unique_id = {$_SESSION['unique_id']}");
            if(mysqli_num_rows($sql) > 0){
              $row = mysqli_fetch_assoc($sql);
            }
          ?>
          <div style="margin-right: 10px; height: 60px; width: 65px;  background: url(https://www.habbo.com.br/habbo-imaging/avatarimage?&user=<?php echo $row['nome'] ;?>&action=&direction=4&head_direction=3&img_format=png&gesture=&headonly=0&size=2),  radial-gradient(circle, #fff, #f1f1f1); background-position: center top -10px; border-radius: 60px; "></div>
          <div class="details">
            <span><?php echo $row['nome']?></span>
            <p><?php echo $row['status']; ?></p>
          </div>
        </div>
        <!-- <a href="#" class="logout">Sair</a> -->
      </header>
      <div class="search">
        <span class="text">Bem-vindo (a) <?php echo $usuarioNome?></span>
      </div>
      <?php
      $select_suporte = "SELECT * FROM aguardando WHERE nome = '$usuarioNome'";
      $select_suporte_query = $conn->query($select_suporte);
      if($select_suporte_query->num_rows > 0) { ?>

      <div class="users-list">
      <?php
        		if(isset($_SESSION['msg'])){
        		echo $_SESSION['msg'];
        		unset($_SESSION['msg']);   
            }
        ?>  
      </div>

    <?php  }else{ ?>
      <div class="user_pedido">
      <span><center>Clique aqui para iniciar o suporte</center> <br> <a href="php/init.php"><button class="btn-aten">Iniciar</button></a></span>
      </div>
 <?php   } ?>

    </section>
  </div>
  <script src="javascript/users.js"></script>
<?php } ?>



</body>
</html>
