<?php
    // Verifica o método de requisição HTTP e o local de execução do script PHP
    if ( $_SERVER['REQUEST_METHOD']=='GET' && realpath(__FILE__) == realpath( $_SERVER['SCRIPT_FILENAME'] ) ) {
       // Quando entrar nessa condição, significa que o usuário tentou acessar o link diretamente
       header("LOCATION: index");
        die();    
    }
?>
 <style>
.bodyc {
    margin: auto;
    padding: 1rem;
    text-align: center;
    color: #fff;
}
.bonecobody {
    border-radius: 10rem;
    width: 5rem;
    margin: auto;
    background: #fff;
    position: relative;
    margin-bottom: 1rem;
}
.card.card-info {
    background: linear-gradient(-27deg, deepskyblue, darkviolet, deeppink);
    border-radius: 3rem;
}

.form-control.login {
    transition: none;
    position: relative;
    top: 1rem;
    width: 20rem;
    background: transparent;
    border-radius: 11rem;
    height: 3rem;
    border-color: #fff;
}

.telogin{
    cursor: pointer;
    background: linear-gradient(84deg, transparent, black);
    border: none;
    width: 11rem;
    height: 3rem;
}
.Linklogin {
    color: cadetblue;
    font-weight: bold;
    font-family: auto;
}
    </style>
<div class="row">
<img src="src/images/login/login.png" alt="">
    <div class="col-lg-5 bodyc">
            <div class="card card-info">
                <div class="bonecobody">
                     <img src="src/images/login/login2.png" alt="">
                </div>
                <h3>Login</h3>
              <form class="form-horizontal">
                <div class="card-body">
                  <div class="form-group row">
                    <img src="src/images/login/login3.png" alt="">
                    <div class="col-sm-10">
                      <input type="email" class="form-control login" id="inputEmail3" placeholder="Email">
                    </div>
                  </div>
                  <div class="form-group row">
                    <img src="src/images/login/login4.png" alt="">
                    <div class="col-sm-10">
                      <input type="password" class="form-control login" id="inputPassword3" placeholder="Password">
                    </div>
                  </div><br>
                  <div class="row">
                    <div class="form-check">
                        <input type="checkbox" class="form-check-input" id="exampleCheck2">
                        <label class="form-check-label" for="exampleCheck2">Remember me</label>
                      </div>
                      <div class="col-md-5">
                        <a class="Linklogin" href="#"><p>Esqueceu sua Senha?</p></a>
                        </div>
                    </div>
                </div>
                <div class="card-footer">
                  <button type="submit" class="btn btn-info telogin">Entrar</button>
                  <p>Não tem uma conta? <a class="Linklogin" href="#">Clique aqui!!!</a></p>
                </div>

              </form>
            </div>
    </div>
</div>