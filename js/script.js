'use strict';

function navigatePost(url, data = {}) {
  if(url.indexOf('busquedaUsuario') != -1){
    data.nombre = document.querySelector('#nombre').value;
    data.apellido = document.querySelector('#apellido').value;
    if((data.nombre == "" )&&(data.apellido=="")){
      alert("ingresar nombre y apellido");
    }else{
        $.post(url, data, function (res) {
          $('.main-content').html(res);
        });
    }
  }else{
    $.post(url, data, function (res) {
      $('.main-content').html(res);
      console.log(url, data);
    });
  }
}