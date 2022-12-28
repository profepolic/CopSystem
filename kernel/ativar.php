<?php

include($_SERVER['DOCUMENT_ROOT'].'/system/global.php');

$dados = filter_input_array(INPUT_POST, FILTER_DEFAULT);

if(!empty($dados['nick'])){
    $HabboAPI = "https://www.habbo.com.br/api/public/users?name=".$dados['nick'];
    $ch = curl_init();
    $options = array(
        CURLOPT_URL => $HabboAPI,
        CURLOPT_HEADER => false,
        CURLOPT_POST => 0,
        CURLOPT_SSL_VERIFYPEER => false,
        CURLOPT_SSL_VERIFYHOST => false,
        CURLOPT_RETURNTRANSFER => true,
    );
    curl_setopt($ch,CURLOPT_USERAGENT,'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.8.1.13) Gecko/20080311 Firefox/2.0.0.13');
    curl_setopt_array($ch, $options);
    $saida = curl_exec($ch);
    /* Decoda o JSON e exibe a missão */
    if(isset(json_decode($saida)->motto)){
        $nick = $dados['nick'];
        $erro_nick = 'vazio';

        if(json_decode($saida)->motto != $_SESSION['cod_secreto']){
            $erro_validacao = 'Por favor, coloque o código correto na missão';
        }
    }else{
        $erro_nick = 'Nick não existe';
    }
    curl_close($ch);
}else{
    $erro_nick = 'Por favor, preencha este campo';
}

if(!empty($dados['email'])){
    $erro_email = 'Vazio';
    $email = $dados['email'];
}else{
    $erro_email = "Por favor, preencha este campo";
}

if(!empty($dados['senha'])){

        $uppercase = preg_match('@[A-Z]@', $dados['senha']);
        $lowercase = preg_match('@[a-z]@', $dados['senha']);
        $number    = preg_match('@[0-9]@', $dados['senha']);
        $specialChars = preg_match('@[^\w]@', $dados['senha']);

        if($dados['senha'] !==  $dados['confirmar_senha']){

                $erro_senha =  "Senhas não são iguais!";
                $erro_confirmar_senha =  "Senhas não são iguais!";

            }elseif((!$uppercase || !$lowercase || !$number || !$specialChars || strlen($dados['senha']) < 8)){

                $erro_senha =  "Coloque uma senha forte!";
            }else{
                $erro_senha = 'vazio';
                $senha = $dados['senha'];
            }
}else{
    $erro_senha = "Por favor, preencha este campo";
}



if(!empty($dados['confirmar_senha'])){

    if(!isset($erro_confirmar_senha)){
        $erro_confirmar_senha = "vazio";
    }

}else{
$erro_confirmar_senha = "Por favor, preencha este campo";
}

$dados_json = ['erro_nick' => $erro_nick, 'erro_email' => $erro_email, 'erro_senha' => $erro_senha, 
'erro_confirmar_senha' => $erro_confirmar_senha];

echo json_encode($dados_json);