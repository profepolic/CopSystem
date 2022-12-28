<?php
session_start();
?>
<style>
.chat{
    margin: auto;
    background: #fff;
    padding: 20px;
}

.form-control.chat {
    padding: 20px;
}
.fot{
    display: table;
    width: 100%;
}

.balao-atentente {
    background: #f1f1f1;
    border-radius: 1rem;
    padding: 14px;
    display: table;
    font-size: 15px;
    font-weight: bolder;
    margin-top: 10px;
    margin-bottom: 10px;
}

.balao-cliente {
    float: right;
    background: dodgerblue;
    color: #fff;
    border-radius: 1rem;
    padding: 14px;
    display: table;
    font-size: 15px;
    font-weight: bolder;
    margin-top: 10px;
    margin-bottom: 10px;
}
.suporte-action {
    float: right;
    text-align: right;
}
</style>

<?php
$personagem = "profepolicban";
$cargo = "Conselheiro";
$status = "On-line";
$chat = '
<div class="card-header">
    <div class="col-md-6 mt-2 suporte-action">
        <a href="#" class="badge badge-pill badge-danger"> <i class="fas fa-door-closed"> Encerrar </i></a>
    </div>
    <div class="row">
        <div style="margin-right: 10px; height: 60px; width: 65px;  background: url(https://www.habbo.com.br/habbo-imaging/avatarimage?&user='.$personagem.'&action=&direction=4&head_direction=3&img_format=png&gesture=&headonly=0&size=2),  radial-gradient(circle, #fff, #f1f1f1); background-position: center top -10px; border-radius: 60px; "></div>
        <div class="mt-1">
            <span class="badge badge-secondary">COP Live Chat</span>
             <span class="badge badge-secondary">'.$cargo.'  '.$personagem.'</span><br>
             <h6 class="badge badge-pill badge-success">'.$status.'</h6>
        </div>
    </div>
</div>
<div class="card-body">
    <div class="col-md-3 balao-atentente">
        <p>Teste visutal</p>
    </div>
    <div class="col-md-3 balao-cliente">
        <p>Teste visutal2</p>
    </div>
</div>
<div class="card-footer fot">
    <div class="form-group">
      <textarea class="form-control chat" rows="5"></textarea>
    </div>
</div>
';
?>


<div class="container mt-5">
    <div class="row mt-5">
        <div class="col-md-12 col-12 mt-5">
            <div class="col-lg-12 mt-5">
                <div class="col-lg-8 chat">
                    <?php
                    if(!isset($_SESSION['usuario'])) {?>
                        <center>
                            <h6>Faça login para poder Útilizar o Suporte</h6>
                            <a href="login"><button class="btn btn-danger">Fazer login</button></a>
                        </center>
                    <?php }else{
                        echo $chat;
                    }
                    
                    ?>
                </div>
            </div>
        </div>
    </div>
</div>