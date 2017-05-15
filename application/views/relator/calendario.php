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
<h1>Relator: <?php echo $nombre .' '.$a_paterno .' '.$a_materno ?></h1>
</div>
<div class="col-sm-6">
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
<h2>PROGRAMA</h2>
</div>
<h4><b> RELATOR:</b> <?php echo $mesa_asignada; ?></h4>
<hr>
<div class="row">
<div class="col-md-12">
<div class="table-responsive">
<table class="table">
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