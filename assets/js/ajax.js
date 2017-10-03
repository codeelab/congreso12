$(function(){$("select[id=estado]").change(function(){estado=$(this).val();if(estado==='')return false;resetaCombo('municipio');$.getJSON('getCidades/'+estado,function(data){var option=new Array();$.each(data,function(i,obj){option[i]=document.createElement('option');$(option[i]).attr({value:obj.id_municipio});$(option[i]).append(obj.nombre);$("select[id='municipio']").append(option[i]);});});});$("select[id=institucion]").change(function(){institucion=$(this).val();if(institucion==='')return false;resetaCombo2('facultad');$.getJSON('getFacultad/'+institucion,function(data){var option=new Array();$.each(data,function(i,obj){option[i]=document.createElement('option');$(option[i]).attr({value:obj.id_facultad});$(option[i]).append(obj.nombre);$("select[id='facultad']").append(option[i]);});});});});function resetaCombo(el){$("select[id='"+el+"']").empty();var option=document.createElement('option');$(option).attr({value:''});$(option).append('Elija Municipio');$("select[id='"+el+"']").append(option);}function resetaCombo2(el){$("select[id='"+el+"']").empty();var option=document.createElement('option');$(option).attr({value:''});$(option).append('Elija Facultad');$("select[id='"+el+"']").append(option);}$(document).ready(function(){$('#Loading').hide();$('#username').blur(function(){var a=$("#username").val();var filter=/^[a-z\d](?:[a-z\d]|-(?=[a-z\d])){0,38}$/i;if(filter.test(a)){$('#Loading').show();$.post("check_username_availablity",{username:$('#username').val()},function(response){$('#Loading').hide();setTimeout("finishAjax('Loading', '"+escape(response)+"')",400);});return false;}});});function finishAjax(id,response){$('#'+id).html(unescape(response));$('#'+id).fadeIn();}


$(document).ready(function(){
    $('input').focus(function() {
        $(this).css('background-color','#ffffff');
    });

    $('input').blur(function(){
        var usuario_id  = $('#usuario_id').val();
        var titulo      = $("#titulo").val();
        var autor       = $("#autor").val();
        var coautores   = $("#coautores").val();
        var asesor      = $("#asesor").val();

        var field = $(this);
        var parent = field.parent().attr('id');
        field.css('background-color','#F3F3F3');

        if($('#'+parent).find(".ok").length){
            $('#'+parent+' .ok').remove();
            $('#'+parent+' .loader').remove();
            $('#'+parent).append('<div><img src="assets/img/loader.gif"/></div>').fadeIn('slow');
        }else{
            $('#'+parent).append('<div><img src="assets/img/loader.gif"/></div>').fadeIn('slow');
        }
        var dataString = 'value='+$(this).val()+'&field='+$(this).attr('name');
        $.ajax({
            type: "POST",
            url: '../actualizar/'+usuario_id,
            //data: {"csrf_token": csrf_token, "usuario_id": usuario_id, "titulo" : titulo, "autor" : autor, "coautores" : coautores, "asesor" : asesor},
            data:dataString,
            success: function(data) {
                //console.log(data);
                field.val(data);
                $('#'+parent+' .loader').fadeOut(function(){
                    $('#'+parent).append('<div><i class="fa fa-check-circle" aria-hidden="true"></i></div>').fadeIn('slow');
                });

            }
        });
    });
});