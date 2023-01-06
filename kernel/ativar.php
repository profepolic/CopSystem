<?php

include($_SERVER['DOCUMENT_ROOT'].'/system/global.php');

$dados = filter_input_array(INPUT_POST, FILTER_DEFAULT);
$validacao = filter_input_array(INPUT_GET, FILTER_DEFAULT);

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

        if(json_decode($saida)->motto != $validacao['validacao']){
            $erro_validacao = 'Por favor, coloque o código correto na missão';
        }else{
            $erro_validacao = 'vazio';
        }
    }else{
        $erro_nick = 'Nick não existe';
        $erro_validacao = 'vazio';
    }
    curl_close($ch);
}else{
    $erro_validacao = 'vazio';
    $erro_nick = 'Por favor, preencha este campo';
}

if(!empty($dados['email'])){
    $erro_email = 'vazio';
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
                $senha = password_hash($dados['senha'], PASSWORD_DEFAULT);
            }
}else{
    $erro_senha = "Por favor, preencha este campo";
}



if(!empty($dados['confirmar_senha'])){

    if(!isset($erro_confirmar_senha)){
        $erro_confirmar_senha = "vazio";

        $confirmar_senha = $dados['confirmar_senha'];
    }

}else{
$erro_confirmar_senha = "Por favor, preencha este campo";
}

$dados_json = ['erro_nick' => $erro_nick, 'erro_email' => $erro_email, 'erro_senha' => $erro_senha, 
'erro_confirmar_senha' => $erro_confirmar_senha, 'erro_validacao' => $erro_validacao];

if(isset($nick) && isset($email) && isset($senha) && isset($confirmar_senha) && ($erro_validacao == 'vazio')){

    $query_verificar = 'SELECT nome, senha, email FROM users WHERE nome=:nome';
    $verificar = $cons->prepare($query_verificar);
    $verificar->bindParam(':nome', $nick, PDO::PARAM_STR);
    $verificar->execute();

    if($verificar->rowCount()){

        $verificar_itens = $verificar->fetch(PDO::FETCH_ASSOC);

        if(($verificar_itens['senha'] !='') || ($verificar_itens['email'] !='')){
            $dados_json = ['erro' => 'Usuário já existente!'];
        }else{
            $query_atualizar = "UPDATE users SET senha=:senha, email=:email WHERE nome=:nome";
            $atualizar = $conn->prepare($query_atualizar);
            $atualizar->bindParam(':senha', $senha, PDO::PARAM_STR);
            $atualizar->bindParam(':email', $email, PDO::PARAM_STR);

            if($atualizar->execute()){
                $dados_json = ['status' => 'Usuário criado com sucesso!'];
            }
        }
    }else{
        $query = 'INSERT INTO users (nome, senha, email, permissao, situacao) VALUES(:nome, :senha, :email, :permissao, :situacao)';
        $adicionar_usuario = $cons->prepare($query);
        $adicionar_usuario->bindParam(':nome', $nick, PDO::PARAM_STR);
        $adicionar_usuario->bindParam(':senha', $senha, PDO::PARAM_STR);
        $adicionar_usuario->bindParam(':email', $email, PDO::PARAM_STR);
        $adicionar_usuario->bindValue(':permissao', 1, PDO::PARAM_STR);
        $adicionar_usuario->bindValue(':situacao', 0, PDO::PARAM_STR);
    
        if($adicionar_usuario->execute()){
            $select = "SELECT * FROM users WHERE nome ='$nick' ";
            $query_teste = $conn->query($select);
            $user = $query_teste->FETCH_ASSOC();
            $sql2 = mysqli_query($conn, "UPDATE users SET unique_id = '{$user['id']}' WHERE id = {$user['id']}");
            $dados_json = ['status' => 'Usuário criado com sucesso!'];
        }
    
    }
}

echo json_encode($dados_json);