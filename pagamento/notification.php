<?php
require_once 'vendor/autoload.php';
include("../global.php");

// if(isset($_REQUEST[ 'id'])){
// $colletion_id = $_REQUEST['id'];
// }


$access_token = "";

$colletion_id = "1308512590";

$curl = curl_init();

curl_setopt_array($curl, array(
    
    CURLOPT_URL => 'https://api.mercadopago.com/v1/payments/'.$colletion_id,
    CURLOPT_RETURNTRANSFER => true,
    CURLOPT_ENCODING => '',
    CURLOPT_MAXREDIRS => 10,
    CURLOPT_TIMEOUT => 0,
    CURLOPT_FOLLOWLOCATION => true,
    CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
    CURLOPT_CUSTOMREQUEST => 'GET',
    CURLOPT_HTTPHEADER => array(
    'Authorization: Bearer '.$access_token
  ),
));

$payment_info = json_decode(curl_exec($curl), true);
curl_close($curl);
/*
echo '<pre>';
var_dump($payment_info);

// Recebe os dados da API
*/

$cargo_id = json_decode($payment_info['external_reference'], true);

$stats = $payment_info['status'];


echo '<pre>';
echo $cargo_id[0];

?>