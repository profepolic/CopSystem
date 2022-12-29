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

var mudado = 0;
$(window).scroll(function() {
    var hTm = $('#missao').offset().top,
        hHm = $('#missao').outerHeight(),
        wH = $(window).height(),
        wS = $(this).scrollTop();
    if (wS > hTm+hHm-wH+250 && mudado != 1){
        mudado = 1;
        $(".destino").animate({ 
            top: "-=18%",
          }, 300 );
    }else if(wS < hTm+hHm-wH+250 && mudado != 0){
        mudado = 0;
        $(".destino").animate({ 
            top: "+=18%",
          }, 300 );
    }
 });