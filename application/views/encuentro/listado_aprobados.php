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
<h1>Evaluador: <?php echo $nombre .' '.$a_paterno .' '.$a_materno ?></h1>
</div>
<div class="col-sm-6">
<ul class="breadcrumb pull-right lead">
    <li class="active"><a href="<?php echo site_url('encuentro/index') ?>">Inicio</a></li>
    <li class="active"><a href="<?php echo site_url('encuentro/aprobado') ?>">Trabajos Evaluados</a></li>
    <li><a href="<?php echo site_url("login/salir") ?>">Salir</a></li>
</ul>
</div>
</div>
</div>
</section>

<section id="career" class="container">
<div class="center">
<h2>Listado de Trabajos Evaluados</h2>
</div>
<hr>
<div class="row">
<div class="col-md-12">
<div class="table-responsive">
<table class="table table-striped table-bordered table-hover dt-responsive nowrap" width="100%" id="table">
<thead>
 <tr>
            <th>Folio</th>
            <th>Estatus</th>
            <th>Autor</th>
            <th>Título</th>
            <th>Modalidad</th>
            <th>Mesa</th>
            <th>Editar</th>
 </tr>
 </thead>
 <tbody>

 <?php
if($ponencias !== FALSE) {
            foreach ($ponencias as $row) {

            if ($row->status === 'Evaluado') {
                   $estado = "<h4><span class='label label-success'>Evaluado</span></h4>";
              }


            if ($row->status === 'Evaluado') {
               echo "<tr>
               <td><h4><span class='label label-default'><i class='fa fa-ticket' aria-hidden='true'></i>  CECTI-$row->id_ponencias</span><h4></td>
               <td>$estado</td>
               <td>$row->autor</td>
               <td>$row->titulo</td>
               <td>$row->nombre_trabajo</td>
               <td>$row->nombre_tem</td>
               <td><a href='" . base_url() . "encuentro/editar/$row->id_ponencias'><button type='button' class='btn btn-success'><i class='fa fa-pencil-square-o' aria-hidden='true'></i></button></a></td>";

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