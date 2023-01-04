<?php
    // Verifica o método de requisição HTTP e o local de execução do script PHP
    if ( $_SERVER['REQUEST_METHOD']=='GET' && realpath(__FILE__) == realpath( $_SERVER['SCRIPT_FILENAME'] ) ) {
       // Quando entrar nessa condição, significa que o usuário tentou acessar o link diretamente
       header("LOCATION: index");
        die();    
    }
?>

<div class="container mt-5">
    <div class="row mt-5">
        <div class="col-md-12 col-12 mt-5">
                <form id="form_ativar" method="post" class="col-md-12 col-12 d-flex justify-content-center mt-5">
                <div class="col-md-6 col-6 mt-5">
                <div class="row">
                <div class="col-md-12 col-12 col-lg-12 ">
                    <label for="nick"> Nick </label>
                    <input type="text" id="nick" placeholder="Cop-exemplo" class="form-control" name="nick">
                    <span id="erro_nick" class="erro"></span>
                </div>
                </div>
                <div class="row">
                <div class="col-md-12 col-12 col-lg-12 ">
                    <label for="email" class="mt-4 mb-2"> Email </label>
                    <input type="email" id="email" placeholder="www@exemplo.com" class="form-control" name="email">
                    <span id="erro_email" class="erro"></span>
                </div>
                </div>
                <div class="row">
                <div class="col-md-12 col-12 col-lg-12">
                    <label for="validacao" class="mt-4 mb-2"> Código de validação </label>

                    <?php

                    $codigo = array_merge(range('a', 'z'), range('A', 'Z'));

                    shuffle($codigo); 

                    $cod_secreto = "COP-".substr(implode($codigo), 0, 20);
                    
                    ?>

                    <input type="text" id="validacao" class="form-control" name="validacao" value="<?php echo $cod_secreto; ?>" disabled>
                    <span id="erro_validacao" class="erro"></span>
                </div>
                </div>
                <div class="row">
                <div class="col-md-12 col-12">
                    <div class="form-group">
                        <label for="senha" class="mt-4 mb-2"> Senha </label>
                        <div class="input-group">
                        <input type="password" id="senha" class='form-control passwordInput ms-lg-5' name="senha">
                        <div class="input-group-prepend">
                        <span class="input-group-text">
                        <img src="src/img/olho_cortado.png" id="olho_senha" class="img-responsive" style="width: 24px;">
                        </span>
                        </div>
                        </div>
                        <span id="erro_senha" class="erro"></span>
                    </div>
                </div>
                </div>
                    <div class="form-group">
                        <div class="row">
                        <div class="col-md-12 col-12">
                        <label for="confirmar_senha" class="mb-2 mt-4"> Confirmar senha </label>
                        <div class="input-group">
                        <input type="password" id="confirmar_senha" class='form-control ms-lg-5' name="confirmar_senha">
                        <div class="input-group-prepend">
                        <span class="input-group-text">
                        <img src="src/img/olho_cortado.png" id="olho_confirmar_senha" class="img-responsive" style="width: 24px;">
                        </span>
                        </div>
                        </div>
                        <span id="erro_confirmar_senha" class="erro"></span>
                    </div>
                </div>
                </div>
                    <div class="row text-center justify-content-center">
                    <div id="mensagem" class="col-9">
                    <div class="row">
                    <div class="col-md-12 col-12 text-center">
                    <label><b>A senha deve conter o seguinte:</b></label>
                    </div>
                    </div>
                    <div class="row mt-3">
                    <div class="col-md-12 col-12 text-center">
                    <img id="img_minuscula" src="src/img/uncheck.png" style="width: 1.7em" class="col-2 mt-2" /><label id="minuscula" class="invalid col-9">Uma letra <b>minúscula</b></label>
                    </div>
                    </div>
                    <div class="row mt-2">
                    <div class="col-md-12 col-12 text-center">
                    <img id="img_maiuscula" src="src/img/uncheck.png" style="width: 1.7em" class="col-2 mt-2" /><label id="maiuscula" class="invalid col-9">Uma letra <b>maiúscula</b></label>
                    </div>
                    </div>
                    <div class="row mt-2">
                    <div class="col-md-12 col-12 text-center">
                    <img id="img_numero" src="src/img/uncheck.png" style="width: 1.7em" class="col-2 mt-2" /><label id="numero" class="invalid col-9">Um <b>número</b></label>
                    </div>
                    </div>
                    <div class="row mt-2">
                    <div class="col-md-12 col-12 text-center">
                    <img id="img_especial" src="src/img/uncheck.png" style="width: 1.7em" class="col-2 mt-2" /><label id="especial" class="invalid col-9">Um <b>caractere especial</b></label>
                    </div>
                    </div>
                    <div class="row mt-2">
                    <div class="col-md-12 col-12 text-center">
                    <img id="img_tamanho" src="src/img/uncheck.png" style="width: 1.7em" class="col-2 mt-2" /><label id="tamanho" class="invalid col-9">No mínimo <b>8 caracteres</b></label>
                    </div>
                    </div>
                    <div class="row mt-2">
                    <div class="col-md-12 col-12 text-center">
                    <img id="img_coincidem" src="src/img/uncheck.png" style="width: 1.7em" class="col-2 mt-2" /><label id="coincidem" class="invalid col-9">Senhas <b>coincidem</b></label>
                    </div>
                    </div>
                    </div>
                    </div>
                    <div class="row mt-2 mb-5">
                    <div class="col-md-12 col-12 text-center mb-5">
                    <div class="form-group">

                        <div id="criar" type="submit" class="mt-5 btn-lg btn-primary"> Criar </div>

                    </div>
                    </div>
                    </div>
                </div>
                </form>
        </div>
    </div>
</div>
<script src="js/verificar_senha.js"></script>
<script src="js/ativar.js"></script>