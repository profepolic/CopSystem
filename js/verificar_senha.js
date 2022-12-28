var verificar_senha = document.getElementById("senha");
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
var confirmar = document.getElementById("confirmar_senha");
var coincidem = document.getElementById("coincidem");
var img_coincidem = document.getElementById("img_coincidem");
var olho_senha = document.getElementById("olho_senha");
var olho_confirmar_senha = document.getElementById("olho_confirmar_senha");


confirmar.addEventListener('keyup', () =>{
    if(confirmar.value == verificar_senha.value){
        coincidem.classList.remove("invalid");
        coincidem.classList.add("valid");
        img_coincidem.src = 'src/img/check.png';
    }else {
        coincidem.classList.remove("valid");
        coincidem.classList.add("invalid");
        img_coincidem.src = 'src/img/uncheck.png';
      }
})


verificar_senha.onkeyup = function() {

  var lowerCaseLetters = /[a-z]/g;
  if(verificar_senha.value.match(lowerCaseLetters)) {
    minuscula.classList.remove("invalid");
    minuscula.classList.add("valid");
    img_minuscula.src = 'src/img/check.png';
  } else {
    minuscula.classList.remove("valid");
    minuscula.classList.add("invalid");
    img_minuscula.src = 'src/img/uncheck.png';
}


  var upperCaseLetters = /[A-Z]/g;
  if(verificar_senha.value.match(upperCaseLetters)) {
    maiuscula.classList.remove("invalid");
    maiuscula.classList.add("valid");
    img_maiuscula.src = 'src/img/check.png';
  } else {
    maiuscula.classList.remove("valid");
    maiuscula.classList.add("invalid");
    img_maiuscula.src = 'src/img/uncheck.png';
  }


  var numbers = /[0-9]/g;
  if(verificar_senha.value.match(numbers)) {
    numero.classList.remove("invalid");
    numero.classList.add("valid");
    img_numero.src = 'src/img/check.png';
  } else {
    numero.classList.remove("valid");
    numero.classList.add("invalid");
    img_numero.src = 'src/img/uncheck.png';
  }


  if(verificar_senha.value.length >= 8) {
    tamanho.classList.remove("invalid");
    tamanho.classList.add("valid");
    img_tamanho.src = 'src/img/check.png';
  } else {
    tamanho.classList.remove("valid");
    tamanho.classList.add("invalid");
    img_tamanho.src = 'src/img/uncheck.png';
  }

  var caractere_especial = /[^\w]/g;
  if(verificar_senha.value.match(caractere_especial)) {
    especial.classList.remove("invalid");
    especial.classList.add("valid");
    img_especial.src = 'src/img/check.png';
  } else {
    especial.classList.remove("valid");
    especial.classList.add("invalid");
    img_especial.src = 'src/img/uncheck.png';
}
}

olho_senha.addEventListener('mousedown', () =>{

  olho_senha.src="src/img/olho.png";

  verificar_senha.setAttribute("type", "text");

})

olho_senha.addEventListener('mouseup', () =>{

  olho_senha.src="src/img/olho_cortado.png";

  verificar_senha.setAttribute("type", "password");

})

olho_confirmar_senha.addEventListener('mousedown', () =>{

  olho_confirmar_senha.src="src/img/olho.png";

  confirmar.setAttribute("type", "text");

})

olho_confirmar_senha.addEventListener('mouseup', () =>{

  olho_confirmar_senha.src="src/img/olho_cortado.png";

  confirmar.setAttribute("type", "password");

})