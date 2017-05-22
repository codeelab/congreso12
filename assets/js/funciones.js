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
