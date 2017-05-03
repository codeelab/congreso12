<?php
  $user = $this->session->userdata('id_usuarios');
  $nombre = $this->session->userdata('nombre');
  $a_paterno = $this->session->userdata('a_paterno');
  $a_materno = $this->session->userdata('a_materno');
  $mesa = $this->session->userdata('mesa');

foreach ($tematica as $row) {
  if ($row->mesa == $mesa) {
    $mesa_asignada = $row->nombre_tem;
  }
}


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
<h1>Relator: <?php echo $nombre .' '.$a_paterno .' '.$a_materno ?></h1>
</div>
<div class="col-sm-6">
<br>
<br>
<br>
<br>
<ul class="breadcrumb pull-right lead">
    <li><a href="<?php echo site_url('relator/index') ?>">Inicio</a></li>
    <li class="active"><a href="<?php echo site_url('relator/listado') ?>">Trabajos</a></li>
    <li><a href="<?php echo site_url("login/salir") ?>">Salir</a></li>
</ul>
</div>
</div>
</div>
</section>

<section id="career" class="container">
<div class="center">
<h2>Listado de Trabajos Presentados</h2>
<h4><b> RELATOR:</b> <?php echo $mesa_asignada; ?></h4>
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
 </tr>
 </thead>
 <tbody>
 <?php

if($mesas !== FALSE) {
  foreach($mesas as $row) {


            if ($row->status === 'Enviado') {
                   $estado = "<h4><span class='label label-info'>Enviado</span></h4>";
              } else if ($row->status === 'Aceptado') {
                   $estado = "<h4><span class='label label-success'>Aprobado</span></h4>";
             } else if ($row->status === 'No aceptado') {
                   $estado = "<h4><span class='label label-danger'>No aprobado</span></h4>";
             } else {
                   $estado = "<h4><span class='label label-default'>Cancelado</span></h4>";
             }

            if ($row->archivo_resumen > 0) {
                $resumen = "<a><button type='button' class='btn btn-warning' data-toggle='tooltip' data-placement='bottom' title='No existe archivo'><i class='fa fa-exclamation-circle' aria-hidden='true'></i></button></a>";
            }else{
                $resumen = "<a href='" . base_url() . "{$row->archivo_resumen}' target='_blank'><button type='button' class='btn btn-danger' data-toggle='tooltip' data-placement='bottom' title='$row->autor'><i class='fa fa-file-pdf-o' aria-hidden='true'></i></button></a>";
            }

            if ($row->archivo_extenso > 0) {
                $extenso = "<a><button type='button' class='btn btn-warning' data-toggle='tooltip' data-placement='bottom' title='No existe archivo'><i class='fa fa-exclamation-circle' aria-hidden='true'></i></button></a>";
            }else{
                $extenso = "<a href='" . base_url() . "{$row->archivo_extenso}' target='_blank'><button type='button' class='btn btn-danger' data-toggle='tooltip' data-placement='bottom' title='$row->autor'><i class='fa fa-file-pdf-o' aria-hidden='true'></i></button></a>";
            }

        if ($row->nombre_tem == $mesa_asignada) {
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
               <td>$extenso</td>";
        }else{
                echo '<tr><td colspan="11"><div class="alert alert-danger" role="alert"><h4> <i class="fa fa-file-pdf-o" aria-hidden="true"></i>      Actualmente no hay proyectos asignados disponibles</h4></div></td>';
              }
  }
}
?>
 </tbody>
 </table>

</div>
</div>

</div>
</section>