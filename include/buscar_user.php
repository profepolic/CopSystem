<?php
    $nick = filter_input(INPUT_GET, 'nick', FILTER_DEFAULT);

    if(empty($nick)){
?>

        <center><span class="badge badge-danger">COLOQUE UM NICK</span></center>

<?php
    }else{

        include($_SERVER['DOCUMENT_ROOT'].'/system/global.php');

        $nick_like = '%'. $nick .'%';

        $query_buscar_user = 'SELECT nome, situacao FROM users WHERE nome LIKE :nome';
        $buscar_user = $cons->prepare($query_buscar_user);
        $buscar_user->bindParam(':nome', $nick_like, PDO::PARAM_STR);
        $buscar_user->execute();
        
        if(!$buscar_user->rowCount()){
?>

    <center><span class="badge badge-danger">SEM REGISTRO</span></center>

<?php
        }else{

            while($user = $buscar_user->fetch(PDO::FETCH_ASSOC)){
?>

<div class="row col-4 col-lg-4 dp1">
<div style="margin-right: 10px; height: 60px; width: 65px;  background: url(https://www.habbo.com.br/habbo-imaging/avatarimage?&user=<?php echo $user['nome'] ;?>&action=&direction=4&head_direction=3&img_format=png&gesture=&headonly=0&size=2),  radial-gradient(circle, #fff, #f1f1f1); background-position: center top -10px; border-radius: 60px; "></div>
<div class="col-2 col-lg-2 mt-1">
<?php

$select_situacao = "SELECT * FROM situacao WHERE id = {$user['situacao']}";
$query_situacao = $conn->query($select_situacao);
$fetch_situacao = $query_situacao->FETCH_ASSOC();
extract($fetch_situacao);


        if($user['situacao'] == 1 ){
            echo "
            {$user['nome']} <br>
            <span class='badge badge-pill badge-success'> ATIVO</span>";
        }else if( $user['situacao'] == $id ){
            echo "
            {$user['nome']} <br>
            <span class='badge badge-danger' >$nome</span>";
        }
    ?>
</div>
</div>

<?php
}}}
?>