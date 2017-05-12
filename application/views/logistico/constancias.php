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
<h1>Apoyo Logistico: <?php echo $nombre .' '.$a_paterno .' '.$a_materno ?></h1>
</div>
<div class="col-sm-6">
<br>
<br>
<br>
<br>
<ul class="breadcrumb pull-right lead">
    <li><a href="<?php echo site_url('logistico/index') ?>">Inicio</a></li>
    <li class="active"><a href="<?php echo site_url('logistico/listado') ?>">Trabajos</a></li>
    <li><a href="<?php echo site_url("login/salir") ?>">Salir</a></li>
</ul>
</div>
</div>
</div>
</section>

<section id="career" class="container">
<div class="center">
<h2>Constancia de Participación</h2>
</div>
<hr>
<div class="row">
<div class="col-md-12">
<div class="table-responsive">
<table class="table">
     <thead>
 <tr>
            <th>Folio</th>
            <th>Participación</th>
            <th>Área</th>
            <th>Nombre</th>
            <th>Constancia</th>
 </tr>
 </thead>
 <tbody>
 <?php
            foreach ($pdf as $row) {

if ($row->id_usuarios === $user) {

$logistico = $row->nombre.' '.$row->a_paterno.' '.$row->a_materno;


               echo "<tr>
               <td><span class='label label-default'><i class='fa fa-ticket' aria-hidden='true'></i>  CECTI-LO-$row->id_usuarios</span></td>
               <td>Apoyo Logistico</td>
               <td>$row->nombre_area</td>
               <td>$logistico</td>
               <td><a href='" . base_url() . "logistico/constancia/$row->id_usuarios' target='_blank'><button type='button' class='btn btn-danger' data-toggle='tooltip' data-placement='bottom' title='$logistico'><i class='fa fa-file-pdf-o' aria-hidden='true'></i></button></a></td></td>";
           }else{
                echo '<tr><td colspan="11"><div class="alert alert-danger" role="alert"><h4> <i class="fa fa-file-pdf-o" aria-hidden="true"></i>      No cuenta con un registro valido en el sistema</h4></div></td>';
              }

}
?>
 </tbody>
 </table>

</div>
</div>

</div>
</section>