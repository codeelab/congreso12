<?php
  $user = $this->session->userdata('id_usuarios');
  $nombre = $this->session->userdata('nombre');
  $a_paterno = $this->session->userdata('a_paterno');
  $a_materno = $this->session->userdata('a_materno');
  $mesa = $this->session->userdata('mesa');

if(!empty($tematica) ) {
  foreach ($tematica as $row) {
    if ($row->id_tematica === $mesa) {
        $mesa_asignada = $row->nombre_tem;
    }
  }
}


?>

<section id="title" class="emerald">
<div class="container">
<div class="row">
<div class="col-sm-6">
<h1>Moderador: <?php echo $nombre .' '.$a_paterno .' '.$a_materno ?></h1>
</div>
<div class="col-sm-6">
<ul class="breadcrumb pull-right lead">
    <li><a href="<?php echo site_url('moderador/index') ?>">Inicio</a></li>
    <li class="active"><a href="<?php echo site_url('moderador/listado') ?>">Trabajos</a></li>
    <li><a href="<?php echo site_url("login/salir") ?>">Salir</a></li>
</ul>
</div>
</div>
</div>
</section>

<section id="career" class="container">
<div class="center">
<h2>PROGRAMA</h2>
</div>
<h4><b> moderador:</b> <?php echo $mesa_asignada; ?></h4>
<hr>
<div class="row">
<div class="col-md-12">
<div class="table-responsive">
<table class="table table-striped table-bordered table-hover dt-responsive nowrap" width="100%" id="table">
     <thead>
 <tr>
            <th>FECHA</th>
            <th>HORARIO</th>
            <th>SALA</th>
            <th>MESA</th>
 </tr>
 </thead>
 <tbody>
 <?php

if($salas !== FALSE) {
  foreach($salas as $row) {

$fecha_actual = $row->fecha;
setlocale(LC_TIME, 'es_ES','es_ES.UTF-8');
$dia = date("%d",strtotime($fecha_actual));
$mes = date("%b",strtotime($fecha_actual));
$ano = date("%Y",strtotime($fecha_actual));
$fecha = strftime("%A $dia de $mes del $ano");


        if ($row->id_usuarios === $user) {
          echo "<tr>
               <td>$fecha</td>
               <td>$row->hora</td>
               <td>$row->nombre_sala</td>
               <td>$row->nombre_mesa</td>";
        }else{
                echo '<tr><td colspan="11"><div class="alert alert-danger" role="alert"><h4> <i class="fa fa-clock-o" aria-hidden="true"></i>      Actualmente no cuenta con horarios asignados</h4></div></td>';
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