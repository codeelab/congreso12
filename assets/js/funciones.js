$(document).ready(function(){

    $('[data-toggle="tooltip"]').tooltip();


});


/* Sumar dos números. */
function sumar (valor) {
    var total = 0;
    valor = parseInt(valor); // Convertir el valor a un entero (número).

    total = document.getElementById('promedio').innerHTML;

    // Aquí valido si hay un valor previo, si no hay datos, le pongo un cero "0".
    total = (total == null || total == undefined || total == "") ? 0 : total;

    /* Esta es la suma. */
    total = (parseInt(total) + parseInt(valor));

    // Colocar el resultado de la suma en el control "span".
    document.getElementById('promedio').innerHTML = total;


}

$(document).ready(function (){
    var table = $('#table').DataTable({
       responsive: true,
       ordering:  false,
       lengthMenu: [[5, 15, 25, -1], [5, 15, 25, "All"]],
       pageLength: 5,
       orderCellsTop: true,
        "language": {
            "url": "//cdn.datatables.net/plug-ins/9dcbecd42ad/i18n/Spanish.json"
        }
    });

    $('#table thead').on( 'click', '.form-control', function (e) {   // for text boxes
       e.stopPropagation();
    });

    $('#table thead').on( 'keyup change', '.form-control', function (e) {   // for text boxes
       var i = $(this).attr('data-column');  // getting column index
       var v = $(this).val();  // getting search input value
       var table = $('#table').DataTable();
       table.columns(i).search(v).draw();
   });
});

function mostrar(){
document.getElementById('oculto').style.display = 'block';
}




$(document).ready(function() {
  //variables
  var password = $('[name=password]');
  var password2 = $('[name=password2]');
  var email = $('[name=email]');
  var email2 = $('[name=email2]');
  var confirmacion = "Las contraseñas si coinciden";
  var confirmacion2 = "Ambos correos si coinciden";
  var longitud = "La contraseña debe estar formada entre 6-10 carácteres (ambos inclusive)";
  var negacion = "No coinciden las contraseñas";
  var negacion2 = "No coinciden los correos agregados";
  var vacio = "La contraseña no puede estar vacía";
  //oculto por defecto el elemento span
  var span = $('<p></p>').insertAfter(password2,email2);
  span.hide();
  //función que comprueba las dos contraseñas
  function coincidePassword(){
  var valor1 = password.val();
  var valor2 = password2.val();
  //muestro el span
  span.show().removeClass();
  //condiciones dentro de la función
  if(valor1 != valor2){
  span.text(negacion).addClass('text-danger');
  }
  if(valor1.length==0 || valor1==""){
  span.text(vacio).addClass('text-warning');
  }
  if(valor1.length<6 || valor1.length>10){
  span.text(longitud).addClass('text-danger');
  }
  if(valor1.length!=0 && valor1==valor2){
  span.text(confirmacion).removeClass("text-danger").addClass('text-success');
  }
  }
    //función que comprueba las dos contraseñas
  function coincideEmail(){
  var valor1 = email.val();
  var valor2 = email2.val();
  //muestro el span
  span.show().removeClass();
  //condiciones dentro de la función
  if(valor1 != valor2){
  span.text(negacion).addClass('text-danger');
  }
  if(valor1.length==0 || valor1==""){
  span.text(vacio).addClass('text-warning');
  }
  if(valor1.length!=0 && valor1==valor2){
  span.text(confirmacion).removeClass("text-danger").addClass('text-success');
  }
  }
  //ejecuto la función al soltar la tecla
  password2.keyup(function(){
  coincidePassword();
  });
  //ejecuto la función al soltar la tecla
  email2.keyup(function(){
  coincideEmail();
  });
});
