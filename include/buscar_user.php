<?php
    $nick = filter_input(INPUT_GET, 'nick', FILTER_DEFAULT);

    if(empty($nick)){
?>

        <span style="color: red">COLOQUE UM NICK</span>

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

    <span style="color: red">SEM REGISTRO</span>

<?php
        }else{

            while($user = $buscar_user->fetch(PDO::FETCH_ASSOC)){
?>

<div class="row col-12 col-lg-12">
<div class="img-user col-2 col-lg-2">
<div style="margin-right: 10px; height: 60px; width: 65px;  background: url(https://www.habbo.com.br/habbo-imaging/avatarimage?&user=<?php echo $user['nome'] ;?>&action=&direction=4&head_direction=3&img_format=png&gesture=&headonly=0&size=2),  radial-gradient(circle, #fff, #f1f1f1); background-position: center top -10px; border-radius: 60px; "></div>
    <img src="http://www.habbo.com.br/habbo-imaging/avatarimage?&user=<?php echo $user['nome']; ?>&action=std&direction=2&head_direction=2&img_format=png&gesture=std&headonly=0&size=b">
</div>
<div class="col-2 col-lg-2 mt-5">
<?php
        if($user['situacao'] == 1){
            echo "<span class='badge badge-pill badge-success'>ATIVO</span>";
        }else{
            echo "<span class='badge badge-danger' >DESATIVADO</span>";
        }
    ?>
</div>
</div>

<?php
}}}
?>