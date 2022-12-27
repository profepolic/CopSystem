var verificar_senha = document.getElementById("solicitar_novasenha");
var minuscula = document.getElementById("minuscula");
var img_minuscula = document.getElementById("img_minuscula");
var maiuscula = document.getElementById("maiuscula");
var img_maiuscula = document.getElementById("img_maiuscula");
var numero = document.getElementById("numero");
var img_numero = document.getElementById("img_numero");
var tamanho = document.getElementById("tamanho");
var img_tamanho = document.getElementById("img_tamanho");
var especial = document.getElementById("especial");
var img_especial = document.getElementById("img_especial");
var confirmar = document.getElementById("solicitar_confirmarsenha");
var coincidem = document.getElementById("coincidem");
var img_coincidem = document.getElementById("img_coincidem");

confirmar.addEventListener('keyup', () =>{
    if(confirmar.value == verificar_senha.value){
        coincidem.classList.remove("invalid");
        coincidem.classList.add("valid");
        img_coincidem.src = '../img/check.png';
    }else {
        coincidem.classList.remove("valid");
        coincidem.classList.add("invalid");
        img_coincidem.src = '../img/uncheck.png';
      }
})


verificar_senha.onkeyup = function() {

  var lowerCaseLetters = /[a-z]/g;
  if(verificar_senha.value.match(lowerCaseLetters)) {
    minuscula.classList.remove("invalid");
    minuscula.classList.add("valid");
    img_minuscula.src = '../img/check.png';
  } else {
    minuscula.classList.remove("valid");
    minuscula.classList.add("invalid");
    img_minuscula.src = '../img/uncheck.png';
}


  var upperCaseLetters = /[A-Z]/g;
  if(verificar_senha.value.match(upperCaseLetters)) {
    maiuscula.classList.remove("invalid");
    maiuscula.classList.add("valid");
    img_maiuscula.src = '../img/check.png';
  } else {
    maiuscula.classList.remove("valid");
    maiuscula.classList.add("invalid");
    img_maiuscula.src = '../img/uncheck.png';
  }


  var numbers = /[0-9]/g;
  if(verificar_senha.value.match(numbers)) {
    numero.classList.remove("invalid");
    numero.classList.add("valid");
    img_numero.src = '../img/check.png';
  } else {
    numero.classList.remove("valid");
    numero.classList.add("invalid");
    img_numero.src = '../img/uncheck.png';
  }


  if(verificar_senha.value.length >= 8) {
    tamanho.classList.remove("invalid");
    tamanho.classList.add("valid");
    img_tamanho.src = '../img/check.png';
  } else {
    tamanho.classList.remove("valid");
    tamanho.classList.add("invalid");
    img_tamanho.src = '../img/uncheck.png';
  }

  var caractere_especial = /[^\w]/g;
  if(verificar_senha.value.match(caractere_especial)) {
    especial.classList.remove("invalid");
    especial.classList.add("valid");
    img_especial.src = '../img/check.png';
  } else {
    especial.classList.remove("valid");
    especial.classList.add("invalid");
    img_especial.src = '../img/uncheck.png';
}
}