if($("#destino_quem_somos")){
let destinos = ['quem_somos', 'missao', 'valores', 'objetivo'];
for(var i = 0; destinos.length > i; i++){
let destino = destinos[i]
$("#destino_"+destino).click(function() {
    $('html,body').animate({
        scrollTop: $("#"+destino).offset().top-250
    }, 200);
});
}
}