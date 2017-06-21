$(function(){
var url = "http://localhost/congreso12/";


  $("select[name=estado]").change(function(){

    estado = $(this).val();

    if ( estado === '')
      return false;

    resetaCombo('municipio');

    $.getJSON( url + 'inicio/getCidades/' + estado, function (data){

      //  console.log(data);
      var option = new Array();

      $.each(data, function(i, obj){

          option[i] = document.createElement('option');
          $( option[i] ).attr( {value : obj.id} );
        $( option[i] ).append( obj.nome );

          $("select[name='municipio']").append( option[i] );

      });

    });

  });


  $("select[name=institucion]").change(function(){

    institucion = $(this).val();

    if ( institucion === '')
      return false;

    resetaCombo2('facultad');

    $.getJSON( url + 'inicio/getFacultad/' + institucion, function (data){

      //  console.log(data);
      var option = new Array();

      $.each(data, function(i, obj){

          option[i] = document.createElement('option');
          $( option[i] ).attr( {value : obj.id} );
        $( option[i] ).append( obj.nome );

          $("select[name='facultad']").append( option[i] );

      });

    });

  });





});

function resetaCombo( el ) {
   $("select[name='"+el+"']").empty();
   var option = document.createElement('option');
   $( option ).attr( {value : ''} );
   $( option ).append( 'Elija Municipio' );
   $("select[name='"+el+"']").append( option );
}

function resetaCombo2( el ) {
   $("select[name='"+el+"']").empty();
   var option = document.createElement('option');
   $( option ).attr( {value : ''} );
   $( option ).append( 'Elija Facultad' );
   $("select[name='"+el+"']").append( option );
}