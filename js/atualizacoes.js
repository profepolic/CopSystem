$("#sino").on('click', ()=>{
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
})