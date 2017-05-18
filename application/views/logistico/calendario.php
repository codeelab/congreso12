<?php
  $user = $this->session->userdata('id_usuarios');
  $nombre = $this->session->userdata('nombre');
  $a_paterno = $this->session->userdata('a_paterno');
  $a_materno = $this->session->userdata('a_materno');
  $area = $this->session->userdata('area_id');

?>

<section id="title" class="emerald">
<div class="container">
<div class="row">
<div class="col-sm-8">
<h1>Apoyo: <?php echo $nombre .' '.$a_paterno .' '.$a_materno ?></h1>
</div>
<div class="col-sm-4">
<ul class="breadcrumb pull-right lead">
    <li><a href="<?php echo site_url('logistico/index') ?>">Inicio</a></li>
    <li class="active"><a href="<?php echo site_url('logistico/area') ?>">Programa</a></li>
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
 <?php


foreach($tema as $row) {

  $fecha_actual = $row->fecha;
  setlocale(LC_TIME, 'es_ES','es_ES.UTF-8');
  $dia = date("%d",strtotime($fecha_actual));
  $mes = date("%b",strtotime($fecha_actual));
  $ano = date("%Y",strtotime($fecha_actual));
  $fecha = strftime("%A $dia de $mes del $ano");
  $area_asignada = $row->nombre_area;


  echo "
  <h4><b> Área asignada:</b> $area_asignada</h4>
  <hr>
  <div class='row'>
  <div class='col-md-12'>
  <div class='table-responsive'>
  <table class='table table-striped table-bordered table-hover dt-responsive nowrap' width='100%' id='table'>

       <thead>
   <tr>
              <th>FECHA</th>
              <th>TURNO</th>
              <th>HORARIO</th>
              <th>SALA</th>
              <th>MESA</th>
   </tr>
   </thead>
   <tbody>";


        if ($row->id_usuarios === $user) {
          echo "<tr>
               <td>$fecha</td>
               <td>$row->dia - $row->turno</td>
               <td>$row->hora</td>
               <td>$row->nombre_sala</td>
               <td>$row->nombre_tem</td>";
        }else{
                echo '<tr><td colspan="11"><div class="alert alert-danger" role="alert"><h4> <i class="fa fa-clock-o" aria-hidden="true"></i>      Actualmente no cuenta con horarios asignados</h4></div></td>';
              }
  }

?>
 </tbody>
 </table>

</div>
</div>

</div>
</section>