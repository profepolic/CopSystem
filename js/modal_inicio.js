$("#sino").on('click', ()=>{
    if($("#modal")){
        $("#modal").remove();
    }
    var html = '<div class="modal fade" id="modal" tabindex="-1" role="dialog" aria-hidden="true">' + 
           '<div class="modal-dialog modal-dialog-centered modal-dialog-scrollable" role="document">' + 
               '<div class="modal-content">' +
               '<div class="modal-header">' +
               '<h5 id="titulo_modal" class="modal-title"></h5>' +
               '<button id="fechar" type="button" class="close" aria-label="Fechar">' +
               '<span aria-hidden="true" style="color:white">&times;</span>' +
               '</button>' +
               '</div>' +
               '<div id="body_modal" class="modal-body">' +
               '</div>' +
               '</div>' +
               '</div>' +
           '</div>';
    $(document.body).append(html);
    $.ajax({
        url: 'include/atualizacoes.php',
        method: 'GET',
        cache: false,
        contentType: false,
        processData: false,
        success: function(resultado){
            $("#titulo_modal").html('Atualizações');
            $("#body_modal").html(resultado);
        }
    })
    $("#modal").modal({backdrop:'static', keyboard:false});
    $("#modal").modal('show');
    $(".modal-content").addClass('fundo-modal');
    $("#fechar").on('click', ()=>{
        $("#modal").modal('hide');
    })
})




$("#user").on('click', ()=>{
    if($("#modal")){
        $("#modal").remove();
    }
    var html = '<div class="modal fade" id="modal" tabindex="-1" role="dialog" aria-hidden="true">' + 
    '<div class="modal-dialog modal-dialog-centered modal-dialog-scrollable" role="document">' + 
               '<div class="modal-content">' +
               '<div class="modal-header">' +
               '<h5 id="titulo_modal" class="modal-title"></h5>' +
               '<button id="fechar" type="button" class="close" aria-label="Fechar">' +
               '<span aria-hidden="true" style="color:white">&times;</span>' +
               '</button>' +
               '</div>' +
               '<div id="body_modal" class="modal-body">' +
               '</div>' +
               '</div>' +
               '</div>' +
           '</div>';
    $(document.body).append(html);
    $.ajax({
        url: 'include/pesquisa_user.php',
        method: 'GET',
        cache: false,
        contentType: false,
        processData: false,
        success: function(resultado){
            $("#titulo_modal").html('Pesquisar Militar');
            $("#body_modal").html(resultado);
            $("#modal").modal({backdrop:'static', keyboard:false});
    $("#modal").modal('show');
    $(".modal-content").addClass('fundo-modal');
    $("#fechar").on('click', ()=>{
            $("#modal").modal('hide');
    })

    $("#botao_pesquisar").on('click', ()=>{
        $.ajax({
            url: 'include/buscar_user.php?nick='+$("#pesquisa").val(),
            method: 'GET',
            cache: false,
            contentType: false,
            processData: false,
            success: function(resultado){
                $("#resultado").html(resultado);
            }
        })
    })
        }
    })
})


$("#config").on('click', ()=>{
    if($("#modal")){
        $("#modal").remove();
    }
    var html = '<div class="modal fade" id="modal" tabindex="-1" role="dialog" aria-hidden="true">' + 
    '<div class="modal-dialog modal-dialog-centered modal-dialog-scrollable" role="document">' + 
               '<div class="modal-content">' +
               '<div class="modal-header">' +
               '<h5 id="titulo_modal" class="modal-title"></h5>' +
               '<button id="fechar" type="button" class="close" aria-label="Fechar">' +
               '<span aria-hidden="true" style="color:white">&times;</span>' +
               '</button>' +
               '</div>' +
               '<div id="body_modal" class="modal-body">' +
               '</div>' +
               '</div>' +
               '</div>' +
           '</div>';
    $(document.body).append(html);
    $.ajax({
        url: 'include/pesquisa_user.php',
        method: 'GET',
        cache: false,
        contentType: false,
        processData: false,
        success: function(resultado){
            $("#titulo_modal").html('Pesquisar Militar');
            $("#body_modal").html(resultado);
            $("#modal").modal({backdrop:'static', keyboard:false});
    $("#modal").modal('show');
    $(".modal-content").addClass('fundo-modal');
    $("#fechar").on('click', ()=>{
            $("#modal").modal('hide');
    })

    $("#botao_pesquisar").on('click', ()=>{
        $.ajax({
            url: 'include/buscar_user.php?nick='+$("#pesquisa").val(),
            method: 'GET',
            cache: false,
            contentType: false,
            processData: false,
            success: function(resultado){
                $("#resultado").html(resultado);
            }
        })
    })
        }
    })
})