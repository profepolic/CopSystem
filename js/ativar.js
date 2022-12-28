let erros = ['erro_nick', 'erro_email', 'erro_validacao', 'erro_senha', 'erro_confirmar_senha'];
$(document).ready(function(){
    let url = $('#validacao').val();
    $("#criar").click(function(){
        event.preventDefault();
        setTimeout(() =>{
        $('#criar').prop('disabled', true);
        $('#criar').html('');
        $('#criar').append('<img src="src/img/loading.gif" style="width: 30px;"/>');
        var dados = new FormData(document.getElementById("form_ativar"));
        $.ajax({
            url: 'kernel/ativar.php?validacao='+url,
            method: 'POST',
            dataType: 'json',
            cache: false,
            contentType: false,
            processData: false,
            data: dados,
            success: function(resultado){
                for (let i = 0; i < erros.length; i++) {           
                if((resultado[erros[i]]) && (resultado[erros[i]] != 'vazio')){
                $('#'+erros[i]).html(resultado[erros[i]]);
                $('#'+erros[i].replace('erro_', '')).removeClass();
                $('#'+erros[i].replace('erro_', '')).addClass('invalido form-control');

                $('#'+erros[i].replace('erro_', '')).on('input', ()=> {
                    $('#'+erros[i].replace('erro_', '')).removeClass();
                    $('#'+erros[i].replace('erro_', '')).addClass('form-control');
                    $('#'+erros[i]).html('');
                })

                $('html,body').animate({
                    scrollTop: $("#nick").offset().top-100
                }, 200);

                }
                }
                if(resultado.status){
                    let status = document.createElement('div');
                    status.setAttribute("id", 'status');
                    document.body.appendChild(status);
                    $('#status').css({'position': 'fixed', 'top':'0', 'width':'100%', 'z-index':'100', 'text-align': 'center', 'color':'white', 'padding':'10px 10px 10px 10px', 
                    'font-size': '17px', 'background':'#0a5a0a'});
                    let progresso = document.createElement('span');
                    progresso.classList.add('progress-bar-fill');
                    progresso.style.cssText = 'width: 0%;';
                    $('#status').html(resultado.status);
                    document.getElementById('status').appendChild(progresso);
                    $('.progress-bar-fill').delay(50).queue(function () {
                        $(this).css('width', '100%')
                    });
                    setTimeout(() =>{
                        window.location.href='login';
                    }, 1000);
                    $('#criar').remove();
                }

                if(resultado.erro){
                    let status = document.createElement('div');
                    status.setAttribute("id", 'status');
                    document.body.appendChild(status);
                    $('#status').css({'position': 'fixed', 'top':'0', 'width':'100%', 'z-index':'100', 'text-align': 'center', 'color':'white', 'padding':'10px 10px 10px 10px', 
                    'font-size': '17px', 'background':'#cc0000'});
                    let progresso = document.createElement('span');
                    progresso.classList.add('progress-bar-fill-erro');
                    progresso.style.cssText = 'width: 0%;';
                    $('#status').html(resultado.erro);
                    document.getElementById('status').appendChild(progresso);
                    $('.progress-bar-fill').delay(50).queue(function () {
                        $(this).css('width', '100%')
                    });
                    setTimeout(() =>{
                        window.location.href='login';
                    }, 1000);
                    $('#criar').remove();
                }
                $('#criar img:last-child').remove();
                $('#criar').html('Criar');
                $('#criar').prop('disabled', false);
            }
        })
    })
})}, 100);