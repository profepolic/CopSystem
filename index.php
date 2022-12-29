<?php
include("include/url_amigavel.php");
include("global.php");

$paginas = ['home', 'criar', 'suporte', 'cargo'];

$pagina = filter_input(INPUT_GET, 'pagina', FILTER_DEFAULT);

?>
<!DOCTYPE html>
<html lang="pt-br">
  <?php include("include/head.php") ?>
<body class="body-principal">

<?php /* <header> */ include("include/nav_bar.php"); /*<header-end> */ ?>

<div class="col-lg-1 lateral">
<a class="linklateral" href="#"><i class="fas fa-user"></i></a>
<a class="linklateral" href="#"><i class="fas fa-cog"></i></a>
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

<div class="modal fade" id="modal" tabindex="-1" role="dialog" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 id='titulo_modal' class="modal-title"></h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Fechar">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div id="body_modal" class="modal-body">



      </div>
    </div>
  </div>
</div>

<?php
include("include/scripts.php");

?>

<script src="js/menu_celular.js"></script>
<script src="js/atualizacoes.js"></script>
</body>
</html>