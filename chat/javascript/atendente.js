const searchBar = document.querySelector(".search span"),
searchIcon = document.querySelector(".search span"),
usersList = document.querySelector(".users-list");

setInterval(() =>{
  let xhr = new XMLHttpRequest();
  xhr.open("GET", "php/atendente.php", true);
  xhr.onload = ()=>{
    if(xhr.readyState === XMLHttpRequest.DONE){
        if(xhr.status === 200){
          let data = xhr.response;
          if(!searchBar.classList.contains("active")){
            usersList.innerHTML = data;
          }
        }
    }
  }
  xhr.send();
}, 2000);
