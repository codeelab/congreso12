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
<h2>Constancias de Participación </h2>
</div>
<hr>
<div class="row">
<div class="col-md-12">
<div class="table-responsive">
<table class="table table-striped table-bordered table-hover dt-responsive nowrap" width="100%" id="table">
     <thead>
 <tr>
            <th>Folio</th>
            <th>Participación</th>
            <th>Nombre</th>
            <th>Sala</th>
            <th>Mesa</th>
            <th>Constancia</th>
 </tr>
 </thead>
 <tbody>
 <?php
  if($pdf !== FALSE) {
    foreach ($pdf as $row) {
  $relator = $row->nombre.' '.$row->a_paterno.' '.$row->a_materno;

        echo "<tr>
              <td><h4><span class='label label-default'><i class='fa fa-ticket' aria-hidden='true'></i>  CECTI-RE-$row->id_usuarios</span></h4></td>
              <td>Relator</td>
              <td>$relator</td>
              <td>$row->nombre_sala</td>
              <td>$row->nombre_mesa</td>
              <td><a href='" . base_url() . "relator/constancia/$row->id_usuarios' target='_blank'><button type='button' class='btn btn-danger' data-toggle='tooltip' data-placement='bottom' title='$relator'><i class='fa fa-file-pdf-o' aria-hidden='true'></i></button></a></td></td>";

    }
  }
?>
 </tbody>
 </table>

</div>
</div>

</div>
</section>