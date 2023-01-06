<?php 
  session_start();
  if(isset($_SESSION['unique_id'])){
    header("location: users.php");
  }else{?>
<?php include_once "header.php"; ?>
<body>
  <div class="wrapper">
    <section class="users">
      <div class="search" style="padding: 15px;">
          <h6>Faça login para poder utilizar o Suporte</h6>
      </div>
      <div class="users-list">
      </div>
    </section>
  </div>
</body>
</html>
<?php  }
?>