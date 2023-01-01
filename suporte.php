<?php
// session_destroy();
$_SESSION['usuario'] = "z10";

if(isset($_SESSION['usuario'])){
 $usuarioNome = $_SESSION['usuario'];
}
?>
<style>
.chat{
    margin: auto;
    background: linear-gradient(45deg, black, transparent);
    padding: 20px;
    color: #fff;
}

.form-control.chat {
    padding: 20px;
    border-style: none;
    color: #fff;
    background: linear-gradient(45deg, black, transparent);
}

.fot{
    display: table;
    width: 100%;
}

.balao-atentente {
    background: #f1f1f1;
    border-radius: 1rem;
    padding: 14px;
    padding-bottom: 0px;
    display: table;
    font-size: 15px;
    font-weight: bolder;
    margin-top: 10px;
    margin-bottom: 10px;
    color: #000;
}
.balao-cliente {
    float: right;
    background: dodgerblue;
    color: #fff;
    border-radius: 1rem;
    padding: 14px;
    padding-bottom: 0px;
    display: table;
    font-size: 15px;
    font-weight: bolder;
    margin-top: 10px;
    margin-bottom: 10px;
    text-align: right;
}
.suporte-action {
    float: right;
    text-align: right;
}
.atent {
    text-align: center;
    background: linear-gradient(45deg, black, transparent);
    padding: 10px;
}

.aps{
    float: right;
}
</style>

<?php

$select_suport="SELECT * FROM suporte";
$query = $conn->query($select_suport);
$fetch = $query->FETCH_ASSOC();
extract($fetch);
$cargo = "Conselheiro";

$sql_get_adm = mysqli_query($conn, "SELECT * FROM suporte WHERE cliente = '{$usuarioNome}'");
$count_get_adm = mysqli_num_rows($sql_get_adm);
?>


<div class="container mt-5">
    <div class="row mt-5">
        <div class="col-md-12 col-12 mt-5">
            <div class="col-lg-12 mt-5 margin-home">
                <div class="col-lg-5 chat">
                    <?php
                    if(!isset($_SESSION['usuario'])) {?>
                        <center>
                            <h6>Faça login para poder utilizar o Suporte</h6>
                            <a href="login"><button class="btn btn-danger">Login</button></a>
                        </center>
                    <?php }else{ if($count_get_adm <= 0){ ?>
                        <center>
                            <h6>Atualmente Estamos com (0) Atendentes On-line no momento</h6>
                            <a href="#"><button class="btn btn-info">Iniciar Chat</button></a>
                        </center>

                   <?php
                   } 
                if($usuarioNome == $cliente){
                   if($status == 0){?>
                    <div class="card-header">
                            <div class="col-md-6 mt-2 suporte-action">
                                <a href="#" class="badge badge-pill badge-danger"> <i class="fas fa-door-closed"> Encerrar </i></a>
                            </div>
                            <div class="row">
                                <div class="mt-1">
                                    <span class="badge badge-secondary">COP Live Chat</span>
                                    <span class="badge badge-secondary">Aguardando . . .</span>
                                    <br>
                                </div>
                            </div>
                        </div>
                        <div class="card-body">
                            <center><h6>Aguardando atendente, sua posição na fila é (0)</h6></center>
                        </div>
                        <div class="card-footer fot">
                        </div>
                 <?php } else if($status == 1) { ?>
                        <div class="card-header">
                            <div class="col-md-6 mt-2 suporte-action">
                                <a href="#" class="badge badge-pill badge-danger"> <i class="fas fa-door-closed"> Encerrar </i></a>
                            </div>
                            <div class="row">
                                <div style="margin-right: 10px; height: 60px; width: 65px;  background: url(https://www.habbo.com.br/habbo-imaging/avatarimage?&user=<?php echo $atendente ;?>&action=&direction=4&head_direction=3&img_format=png&gesture=&headonly=0&size=2),  radial-gradient(circle, #fff, #f1f1f1); background-position: center top -10px; border-radius: 60px; "></div>
                                <div class="mt-1">
                                    <span class="badge badge-secondary"><?php echo $cargo , " " ,  $atendente ;?></span>
                                    <br>
                                    <h6 class="badge badge-pill badge-success">On-line</h6>
                                </div>
                            </div>
                        </div>
                        <div class="card-body">
                            <div class="col-md-12 balao-atentente">
                                <p>Teste visutal</p>
                                <p class="small aps">03:00 <i class="fas fa-clock"></i></p>
                            </div>
                            <div class="col-md-12 balao-cliente">
                                <p>Teste visutal2</p>
                                <p class="small">03:00 <i class="fas fa-clock"></i></p>
                            </div>
                        </div>
                        <div class="card-footer fot">
                            <div class="form-group">
                              <textarea class="form-control chat" rows="5" placeholder="Digite sua mensagem aqui. . ."></textarea>
                            </div>
                        </div>
                  <?php } } } ?>
                </div>
            </div>
        </div>
    </div>
</div>