<?php
include("include/url_amigavel.php");
include("global.php");

$paginas = ['home', 'registrar', 'suporte', 'cargo', 'login'];

$pagina = filter_input(INPUT_GET, 'pagina', FILTER_DEFAULT);

?>
<!DOCTYPE html>
<html lang="pt-br">
  <?php include("include/head.php") ?>
<body class="body-principal">

<?php /* <header> */ include("include/nav_bar.php"); /*<header-end> */ ?>

<div class="col-lg-1 lateral">
<a id="user" class="linklateral" href="#"><i class="fas fa-user"></i></a>
<a id="config" class="linklateral" href="#"><i class="fas fa-cog"></i></a>
</div> 
<?php
if(!isset($pagina)){
  include("home.php");
}elseif(!in_array($pagina, $paginas)){
    include("404.php");
  }else{
    include($pagina.".php");
  }
?>


<?php 
/* <botaosuporte> */ include("include/botaosuporte.php"); /*<End - botaosuporte> */ 

/* <Footer> */ include("include/footer2.php"); /*<End - Footer> */ 

?>

<?php
include("include/scripts.php");

?>

<script src="js/menu_celular.js"></script>
<script src="js/modal_inicio.js"></script>
</body>
</html>