<?php
    $nick = filter_input(INPUT_GET, 'nick', FILTER_DEFAULT);

    if(empty($nick)){
?>

        <center><span class="badge badge-danger">COLOQUE UM NICK</span></center>

<?php
    }else{

        include($_SERVER['DOCUMENT_ROOT'].'/system/global.php');

        $query_buscar_user = 'SELECT nome, situacao FROM users WHERE nome = :nome';
        $buscar_user = $cons->prepare($query_buscar_user);
        $buscar_user->bindParam(':nome', $nick, PDO::PARAM_STR);
        $buscar_user->execute();
        
        if(!$buscar_user->rowCount()){
?>

    <center><span class="badge badge-danger">SEM REGISTRO</span></center>

<?php
        }else{

            $user = $buscar_user->fetch(PDO::FETCH_ASSOC);
?>

<div class="row col-12 col-lg-12 dpi d-flex justify-content-center">
<div style="height: 50px; width: 55px;  background: url(https://www.habbo.com.br/habbo-imaging/avatarimage?&user=<?php echo $user['nome'] ;?>&action=&direction=4&head_direction=3&img_format=png&gesture=&headonly=0&size=2),  radial-gradient(circle, #fff, #f1f1f1); background-position: center top -20px; border-radius: 60px; "></div>
</div>
<div class="col-12 col-lg-12 mt-1 d-flex justify-content-center">
<?php

$select_situacao = "SELECT * FROM situacao WHERE id = {$user['situacao']}";
$query_situacao = $conn->query($select_situacao);
$fetch_situacao = $query_situacao->FETCH_ASSOC();
extract($fetch_situacao);


        if($user['situacao'] == 1 ){
            echo "
            {$user['nome']}
            </div>
            <div class='col-12 col-lg-12 mt-1 d-flex justify-content-center'>
            <span class='badge badge-pill badge-success'> ATIVO</span></div>";
        }else if( $user['situacao'] == $id ){
            echo "
            {$user['nome']}
            </div>
            <div class='col-12 col-lg-12 mt-1 d-flex justify-content-center'>
            <span class='badge badge-danger' >$nome</span></div>";
        }
    ?>
</div>

<?php
}}
?>