let ul = document.querySelector('nav ul');
let menuBtn = document.querySelector('.menu-btn i');

$('#menu_celular').on('click', ()=> {
    if (ul.classList.contains('open')) {
        ul.classList.remove('open');
    }else{
        ul.classList.add('open');
    }
})