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
<h1>Ponente: <?php echo $nombre .' '.$a_paterno .' '.$a_materno ?></h1>
</div>
<div class="col-sm-6">
<ul class="breadcrumb pull-right lead">
    <li><a href="<?php echo site_url('ponente/index') ?>">Inicio</a></li>
    <li class="active"><a href="<?php echo site_url('ponente/listado') ?>">Trabajos</a></li>
    <li><a href="<?php echo site_url("login/salir") ?>">Salir</a></li>
</ul>
</div>
</div>
</div>
</section>

<section id="career" class="container">
<div class="center">
<h2>Constancias de Participación</h2>
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
            <th>Nombre</th>
            <th>Proyecto</th>
            <th>Modalidad</th>
            <th>Mesa</th>
            <th>Constancia</th>
 </tr>
 </thead>
 <tbody>
 <?php
            foreach ($pdf as $row) {

if ($row->autor === $row->autor) {

               echo "<tr>
               <td><span class='label label-default'><i class='fa fa-ticket' aria-hidden='true'></i>  CECTI-$row->id_ponencias</span></td>
               <td>Autor</td>
               <td>$row->autor</td>
               <td>$row->titulo</td>
               <td>$row->nombre_trabajo</td>
               <td>$row->nombre_tem</td>
               <td><a href='" . base_url() . "ponente/constancia_autor/$row->id_ponencias' target='_blank'><button type='button' class='btn btn-danger' data-toggle='tooltip' data-placement='bottom' title='$row->autor'><i class='fa fa-file-pdf-o' aria-hidden='true'></i></button></a></td></td>";
           }else{
            echo '<div class="alert alert-danger" role="alert">No existe un autor registrado en el sistema</div>';
           }
if ($row->coautores === $row->coautores) {

               echo "<tr>
               <td><span class='label label-default'><i class='fa fa-ticket' aria-hidden='true'></i>  CECTI-$row->id_ponencias</span></td>
               <td>Coautores</td>
               <td>$row->coautores</td>
               <td>$row->titulo</td>
               <td>$row->nombre_trabajo</td>
               <td>$row->nombre_tem</td>
               <td><a href='" . base_url() . "ponente/constancia_coautor/$row->id_ponencias' target='_blank'><button type='button' class='btn btn-danger' data-toggle='tooltip' data-placement='bottom' title='$row->coautores'><i class='fa fa-file-pdf-o' aria-hidden='true'></i></button></a></td></td>";
           }else{
            echo '<div class="alert alert-danger" role="alert">No existe un Coautor registrado en el sistema</div>';
           }
if ($row->asesor === $row->asesor) {

               echo "<tr>
               <td><span class='label label-default'><i class='fa fa-ticket' aria-hidden='true'></i>  CECTI-$row->id_ponencias</span></td>
               <td>Asesor</td>
               <td>$row->asesor</td>
               <td>$row->titulo</td>
               <td>$row->nombre_trabajo</td>
               <td>$row->nombre_tem</td>
               <td><a href='" . base_url() . "ponente/constancia_asesor/$row->id_ponencias' target='_blank'><button type='button' class='btn btn-danger' data-toggle='tooltip' data-placement='bottom' title='$row->asesor'><i class='fa fa-file-pdf-o' aria-hidden='true'></i></button></a></td></td>";
           }else{
            echo '<div class="alert alert-danger" role="alert">No existe un Asesor registrado en el sistema</div>';
           }

}
?>
 </tbody>
 </table>

</div>
</div>

</div>
</section>