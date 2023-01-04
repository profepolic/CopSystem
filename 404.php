<?php
    // Verifica o método de requisição HTTP e o local de execução do script PHP
    if ( $_SERVER['REQUEST_METHOD']=='GET' && realpath(__FILE__) == realpath( $_SERVER['SCRIPT_FILENAME'] ) ) {
       // Quando entrar nessa condição, significa que o usuário tentou acessar o link diretamente
       header("LOCATION: index");
        die();    
    }
?>
<style>h1, h3, p{color: #fff;}body{margin: 0px;}.main-footer{background: #444;position: fixed;top: 72%;width: 100%;height: 18%;padding: 33px;box-shadow: 0 0 22px #000;color: #fff;}</style><center><h1 class='teste' style='color: #fff; font-size: 150px;'>404</h1><h3>Página não encontrada</h3><p>O recurso solicitado nao foi encontrado neste servidor!</p><center>