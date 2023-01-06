<style>
.crud_body {
    position: fixed;
    top: 0;
    width: 31rem;
    display: none;
    left: 54rem;
    z-index: 99;
}
</style>


<div class="menu-flot">
  <a class="menu-float link" href="#" onclick="suporte()"><i class="fas fa-comments"><p class="menu-float nome">Suporte</p></i></a>
</div>

<div class="crud_body">
<iframe class="ifm" src="chat" frameborder="0"></iframe>
</div>


<script>

  function suporte(){
  
  let crud_body = document.querySelector('.crud_body')

  if(crud_body.style.display === "table"){
    crud_body.style.display = 'none';
  }else{
    crud_body.style.display = 'table';
  }

}
</script>