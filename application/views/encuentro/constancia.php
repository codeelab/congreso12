<?php
  $user = $this->session->userdata('id_usuarios');
  $nombre = $this->session->userdata('nombre');
  $a_paterno = $this->session->userdata('a_paterno');
  $a_materno = $this->session->userdata('a_materno');
  $nombres = $nombre .' '.$a_paterno .' '.$a_materno;
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
    <li><a href="<?php echo site_url('encuentro/index') ?>">Inicio</a></li>
    <li class="active"><a href="<?php echo site_url('encuentro/listado') ?>">Constancia</a></li>
    <li><a href="<?php echo site_url("login/salir") ?>">Salir</a></li>
</ul>
</div>
</div>
</div>
</section>

<section id="career" class="container">
<div class="center">
<h2>Constancias de Participación <br> 6to Encuentro </h2>
</div>
<hr>
<div class="row">
<div class="col-md-12">
<div class="table-responsive">
<table class="table">
     <thead>
 <tr>
            <th>Función</th>
            <th>Nombre</th>
            <th>Institución</th>
            <th>Facultad</th>
            <th>encuentro de Mesa</th>
            <th>Constancia</th>
 </tr>
 </thead>
 <tbody>
 <?php
            foreach ($pdf as $row) {

               echo "<tr>
               <td>Evaluador</td>
               <td>$nombres</td>
               <td>$row->nombre_ins</td>
               <td>$row->nombre_fac</td>
               <td>$row->nombre_tem</td>
               <td><a href='" . base_url() . "encuentro/constancias/$row->id_usuarios' target='_blank'><button type='button' class='btn btn-danger' data-toggle='tooltip' data-placement='bottom' title='$nombres'><i class='fa fa-file-pdf-o' aria-hidden='true'></i></button></a></td></td>";
           }
?>
 </tbody>
 </table>

</div>
</div>

</div>
</section>