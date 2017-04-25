<?php
  $user = $this->session->userdata('id_usuarios');
  $nombre = $this->session->userdata('nombre');
  $a_paterno = $this->session->userdata('a_paterno');
  $a_materno = $this->session->userdata('a_materno');

?>

<section id="title" class="emerald">
<div class="container">
<div class="row">
<div class="col-sm-6">
<br>
<br>
<br>
<br>
<br>
<h1>Evaluador: <?php echo $nombre .' '.$a_paterno .' '.$a_materno ?></h1>
</div>
<div class="col-sm-6">
<br>
<br>
<br>
<br>
<ul class="breadcrumb pull-right lead">
    <li class="active"><a href="<?php echo site_url('encuentro/index') ?>">Inicio</a></li>
    <li class="active"><a href="<?php echo site_url('encuentro/aprobado') ?>">Trabajos Aprobados</a></li>
    <li><a href="<?php echo site_url("login/salir") ?>">Salir</a></li>
</ul>
</div>
</div>
</div>
</section>

<section id="career" class="container">
<div class="center">
<h2>Listado de Trabajos Aprobados</h2>
</div>
<hr>
<div class="row">
<div class="col-md-12">
<div class="table-responsive">
<table class="table">
     <thead>
 <tr>
            <th>Folio</th>
            <th>Estatus</th>
            <th>Autor</th>
            <th>Co-autores</th>
            <th>Asesor</th>
            <th>Título</th>
            <th>Modalidad</th>
            <th>Mesa</th>
            <th>Resúmen</th>
            <th>Extenso</th>
            <th>Editar</th>
 </tr>
 </thead>
 <tbody>
 <?php
if($ponencias !== FALSE) {
            foreach ($ponencias as $row) {

            if ($row->status === 'Enviado') {
                   $estado = "<h4><span class='label label-info'>Enviado</span></h4>";
              } else if ($row->status === 'Aceptado') {
                   $estado = "<h4><span class='label label-success'>Aprobado</span></h4>";
             } else if ($row->status === 'No aceptado') {
                   $estado = "<h4><span class='label label-danger'>No aprobado</span></h4>";
             } else if ($row->status === 'Evaluado') {
                   $estado = "<h4><span class='label label-info'>No aprobado</span></h4>";
             }else {
                   $estado = "<h4><span class='label label-default'>Cancelado</span></h4>";
             }

            if ($row->archivo_resumen == "NULL") {
                $resumen = "<a><button type='button' class='btn btn-warning'><i class='fa fa-exclamation-circle' aria-hidden='true'></i></button></a>";
            }else{
                $resumen = "<a href='" . base_url() . "{$row->archivo_resumen}' target='_blank'><button type='button' class='btn btn-danger' data-toggle='tooltip' data-placement='bottom' title='$row->autor'><i class='fa fa-file-pdf-o' aria-hidden='true'></i></button></a>";
            }

            if ($row->archivo_extenso == "NULL") {
                $extenso = "<a><button type='button' class='btn btn-warning'><i class='fa fa-exclamation-circle' aria-hidden='true'></i></button></a>";
            }else{
                $extenso = "<a href='" . base_url() . "{$row->archivo_extenso}' target='_blank'><button type='button' class='btn btn-danger' data-toggle='tooltip' data-placement='bottom' title='$row->autor'><i class='fa fa-file-pdf-o' aria-hidden='true'></i></button></a>";
            }

            if ($row->status === 'Evaluado' || $row->c_jovenes === 1) {
               echo "<tr>
               <td><h4><span class='label label-default'><i class='fa fa-ticket' aria-hidden='true'></i>  CECTI-$row->id_ponencias</span><h4></td>
               <td>$estado</td>
               <td>$row->autor</td>
               <td>$row->coautores</td>
               <td>$row->asesor</td>
               <td>$row->titulo</td>
               <td>$row->nombre_trabajo</td>
               <td>$row->nombre_tem</td>
               <td>$resumen</td>
               <td>$extenso</td>
               <td><a href='" . base_url() . "encuentro/editar/$row->id_ponencias'><button type='button' class='btn btn-success'><i class='fa fa-pencil-square-o' aria-hidden='true'></i></button></a></td>";

              }else{
                echo '<tr><td colspan="11"><div class="alert alert-danger" role="alert"><h4> <i class="fa fa-file-pdf-o" aria-hidden="true"></i>      Actualmente no hay proyectos evaluados</h4></div></td>';
              }
           }
}
?>
 </tbody>
 </table>
 <ul class="pagination">
  <?php
    /* Se imprimen los números de página */
    echo $this->pagination->create_links();
  ?>
</ul>
</div>
</div>

</div>
</section>