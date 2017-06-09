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
  var email = $('[name=email]');
  var email2 = $('[name=email2]');
  var confirmacion = "Los correos si coinciden";
  var negacion = "No coinciden los ambos correos";
  var vacio = "El campo no puede estar vacío";
  //oculto por defecto el elemento span
  var span = $('<p></p>').insertAfter(email2);
  span.hide();
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
  email2.keyup(function(){
  coincideEmail();
  });
});


$(document).ready(function() {
    $('#ponentes').bootstrapValidator({
        message: 'Este valor no es válido',
        feedbackIcons: {
            valid: 'fa fa-check',
            invalid: 'fa fa-remove',
            validating: 'fa fa-refresh'
        },
        fields: {
            nombre: {
                validators: {
                    notEmpty: {
                        message: 'Es requerido el nombre del Ponente. '
                    },
                    regexp: {
                      regexp: /^[a-zA-ZñÑáéíóúÁÉÍÓÚ\s]+$/,
                      message: 'Solo está permitido el uso caracteres alfabeticos.'
                    }
                }
            },
            a_paterno: {
                validators: {
                    notEmpty: {
                        message: 'Es requerido el apellido paterno. '
                    },
                    regexp: {
                      regexp: /^[a-zA-ZñÑáéíóúÁÉÍÓÚ\s]+$/,
                      message: 'Solo está permitido el uso caracteres alfabeticos.'
                    }
                }
            },
            a_materno: {
                validators: {
                    notEmpty: {
                        message: 'Es requerido el apellido materno. '
                    },
                    regexp: {
                      regexp: /^[a-zA-ZñÑáéíóúÁÉÍÓÚ\s]+$/,
                      message: 'Solo está permitido el uso caracteres alfabeticos.'
                    }
                }
            },
            email: {
                validators: {
                    notEmpty: {
                        message: 'Es requerido su correo personal. '
                    },
                    emailAddress: {
                        message: 'Su correo no pertenece a un dominio valido.'
                    },
                    regexp: {
                      regexp: /^[A-Z0-9._%+-]+@(?:[A-Z]{4}|gmail|yahoo|outlook|hotmail)+\.(com|mx|es|com.mx)+$/i,
                      message: 'Solo está permitido el uso de los siguientes dominios: Gmail, Yahoo, Outlook, Hotmail.'
                    }
                }
            },
            email2: {
                validators: {
                    notEmpty: {
                        message: 'Es requerido su correo personal. '
                    },
                    emailAddress: {
                        message: 'Su correo no pertenece a un dominio valido.'
                    },
                    regexp: {
                      regexp: /^[A-Z0-9._%+-]+@(?:[A-Z]{4}|gmail|yahoo|outlook|hotmail)+\.(com|mx|es|com.mx)+$/i,
                      message: 'Solo está permitido el uso de los siguientes dominios: Gmail, Yahoo, Outlook, Hotmail.'
                    }
                }
            },
            edad: {
              validators: {
                notEmpty:{
                  message: 'Tu edad es requerida.'
                },
                between: {
                  min: 15,
                  max: 99,
                  message: 'La edad requerida para participar es de %s a %s años.'
                },
                regexp:{
                  regexp: /^[0-9\s\-()+\.]+$/,
                  message: 'Solo está permitido el uso de caracteres alfanuméricos.'
                }
              }
            },
            genero: {
              validators: {
                notEmpty: {
                  message: 'Es requerido su genero.'
                }
              }
            },
            username: {
              validators: {
                notEmpty:{
                  message: 'Es requerido su usuario.'
                }
              }
            },
            nacionalidad: {
              validators: {
                notEmpty: {
                  message: 'Es requerida su nacionalidad.'
                }
              }
            },
            estado: {
              validators: {
                notEmpty: {
                  message: 'Es requerido su estado.'
                }
              }
            },
            municipio: {
              validators: {
                notEmpty: {
                  message: 'Es requerido su municipio.'
                }
              }
            },
            nivel: {
              validators: {
                notEmpty: {
                  message: 'Es requerido seleccione su nivel educativo.'
                }
              }
            },
            institucion: {
              validators: {
                notEmpty: {
                  message: 'Es requerido elija una institución educativa.'
                }
              }
            },
            facultad: {
              validators: {
                notEmpty: {
                  message: 'Es requerido elija su facultad.'
                }
              }
            },
            password: {
              validators: {
                notEmpty:{
                  message: 'Los nombres de usuario pueden contener letras (a-z), números (0-9), guiones (-), guiones bajos (_), apóstrofes y puntos (.).'
                },
                between: {
                  min: 8,
                  max: 20,
                  message: 'Los nombres de usuario pueden empezar o terminar con caracteres no alfanuméricos, excepto puntos (.), y deben tener minimo %s y máximo %s caracteres.'
                },
                callback: {
                  callback: function(value, validator, $field)
                  {
                    var password = $field.val();
                    if (password == '') {
                    return true;
                  }
                    var result  = zxcvbn(password),
                        score   = result.score,
                        message = result.feedback.warning || 'La contraseña es demaciado debil.';

                    // Actualizar el ancho de la barra de progreso y agregar la clase de alerta
                    var $bar = $('#strengthBar');
                      switch (score) {
                        case 0:
                          $bar.attr('class', 'progress-bar progress-bar-danger')
                              .css('width', '1%');
                          break;
                        case 1:
                          $bar.attr('class', 'progress-bar progress-bar-danger')
                              .css('width', '25%');
                          break;
                        case 2:
                          $bar.attr('class', 'progress-bar progress-bar-danger')
                              .css('width', '50%');
                          break;
                        case 3:
                          $bar.attr('class', 'progress-bar progress-bar-warning')
                              .css('width', '75%');
                          break;
                        case 4:
                          $bar.attr('class', 'progress-bar progress-bar-success')
                              .css('width', '100%');
                          break;
                }
                    // Trataremos la contraseña como inválida si la puntuación es menor de 8
                    if (score < 8) {
                      return {
                        valid: false,
                        message: message
                      }
                    }

                    return true;
                  }
            }
        }
      }
    }
  });
});
