<?php
    $path_sem = substr($_SERVER["REQUEST_URI"], strpos($_SERVER["REQUEST_URI"], '/')+1);
    
    if(mb_strpos($path_sem, '.php') !== false){
      header("LOCATION: " . substr($path_sem, 0, -4));
    }else{
    }

?>