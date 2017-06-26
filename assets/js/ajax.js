$(function(){
var url = "http://localhost/congreso12/";


  $("select[id=estado]").change(function(){

    estado = $(this).val();

    if ( estado === '')
      return false;

    resetaCombo('municipio');

    $.getJSON( url + 'inicio/getCidades/' + estado, function (data){

      //  console.log(data);
      var option = new Array();

      $.each(data, function(i, obj){

          option[i] = document.createElement('option');
          $( option[i] ).attr( {value : obj.id_municipio} );
        $( option[i] ).append( obj.nombre );

          $("select[id='municipio']").append( option[i] );

      });

    });

  });


  $("select[id=institucion]").change(function(){

    institucion = $(this).val();

    if ( institucion === '')
      return false;

    resetaCombo2('facultad');

    $.getJSON( url + 'inicio/getFacultad/' + institucion, function (data){

      //  console.log(data);
      var option = new Array();

      $.each(data, function(i, obj){

          option[i] = document.createElement('option');
          $( option[i] ).attr( {value : obj.id_facultad} );
        $( option[i] ).append( obj.nombre );

          $("select[id='facultad']").append( option[i] );

      });

    });

  });





});

function resetaCombo( el ) {
   $("select[id='"+el+"']").empty();
   var option = document.createElement('option');
   $( option ).attr( {value : ''} );
   $( option ).append( 'Elija Municipio' );
   $("select[id='"+el+"']").append( option );
}

function resetaCombo2( el ) {
   $("select[id='"+el+"']").empty();
   var option = document.createElement('option');
   $( option ).attr( {value : ''} );
   $( option ).append( 'Elija Facultad' );
   $("select[id='"+el+"']").append( option );
}

$(document).ready(function() {
    /// make loader hidden in start
    $('#Loading').hide();    

    $('#username').blur(function(){
  var a = $("#username").val();
  var filter = /^[a-z0-9_-]{3,15}$/;
       // check if username is valid
  if(filter.test(a)){
                // show loader 
    $('#Loading').show();
    $.post("check_username_availablity", {
      username: $('#username').val()
    }, function(response){
                        //#usernameInfo is a span which will show you message
      $('#Loading').hide();
      setTimeout("finishAjax('Loading', '"+escape(response)+"')", 200);
    });
    return false;
  }
});
    });
function finishAjax(id, response){
  $('#'+id).html(unescape(response));
  $('#'+id).fadeIn();
} 
