<?php
$select_cargos = "SELECT * FROM cargos WHERE valor > 0";
$select_cargos_query = $conn->query($select_cargos);
?>

<div class="col-lg-12">
    <div class="col-md-8 cargo">
        <form action="#" type="post">
          <div class="form-group">
            <label for="nick">Nick</label>
            <input type="text" class="form-control" id="nick" placeholder="Copexemple">
          </div>
          <div class="form-group">
            <label for="email">E-mail</label>
            <input type="email" class="form-control" id="email" placeholder="www@example.com">
          </div>
          <div class="form-group">
            <label for="exampleFormControlSelect1">Selecione o cargo desejado!!!</label>
            <select class="form-control" id="exampleFormControlSelect1">
                <option selected disabled></option>
              <?php
              while($roow = mysqli_fetch_assoc($select_cargos_query)){ extract($roow);
                echo '<option>'.$nome,   " R$",number_format($valor, 2, ",", ".").'</option>';
              }
              ?>
            </select>
          </div>
          <div class="form-group">
            <label for="email">Nick do vendedor, caso não tenha deixe em branco.</label>
            <input type="text" class="form-control" id="email" placeholder="Exemple: OSKINO">
          </div>
          <div class="form-group">
            <center>
            <input onchange="this.form.submit()"  type="checkbox" class="form-check-input" id="exampleCheck1">
            <label class="form-check-label" for="exampleCheck1">Concordo com os <a href="#">Termos.</a></label>
            </center>
        </div>
        </form>
    </div>
</div>