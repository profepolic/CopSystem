<?php
include("../global.php");
if(isset($_SESSION["usuario"])){
$usuarioNome = $_SESSION["usuario"];
}

$myArr = array("$usuarioNome", "Mary", "Peter", "Sally");

$json = json_encode($myArr);
        
    
    $access_token = "";
    
    require_once 'vendor/autoload.php';

    MercadoPago\SDK::setAccessToken($access_token);

    $preference = new MercadoPago\Preference();

    $item = new MercadoPago\Item();
    $item->title = 'Produtos';
    $item->quantity = 1;
    $item->unit_price = (double)10.00;
    $preference->items = array($item);

    $preference->back_urls = array(
        "success" => 'seusite.com',
        "failure" => 'seusite.com',
        "pending" => 'seusite.com'
    );
    $preference->notification_url = 'notification.php';
    $preference->external_reference = $json;
    $preference->save();

    $link = $preference->init_point;

    header("Location: $link");
    

?>