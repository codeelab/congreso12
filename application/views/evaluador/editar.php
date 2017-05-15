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
    <li class="active"><a href="<?php echo site_url('evaluador/index') ?>">Inicio</a></li>
    <li><a href="<?php echo site_url("login/salir") ?>">logout</a></li>
</ul>
</div>
</div>
</div>
</section>

<section id="career" class="container">
<div class="center">
<h2>Listado de Trabajos Presentados</h2>
</div>
<hr>
<div class="row">
<div class="col-md-12">
<?php
//Si existen las sesiones flasdata que se muestren
if($this->session->flashdata('correcto'))
  echo '<div class="alert alert-success" role="alert">';
   echo $this->session->flashdata('correcto');
  echo '</div>';

if($this->session->flashdata('incorrecto'))
  echo '<div class="alert alert-danger" role="alert">';
   echo $this->session->flashdata('incorrecto');
  echo '</div>';
?>
<form action="" method="post">
<?php foreach ($editar as $row):?>
  <div class="form-group">
    <label for="">Elija el Estado del proyecto</label>
    <select class="form-control" id="status_id" name="status_id">
<option value="0">------</option>
<option value="3">No aceptado</option>
</select>
</div>
  <button type="submit" name="submit" value="Evaluar" class="btn btn-default">Enviar</button>
<?php endforeach;?>
</form>
<hr>
<br>
<a href="<?php echo base_url(); ?>evaluador/aprobado"><button type="button" class="btn btn-primary btn-lg btn-block">Regresar al listado</button></a>

</div>
</div>

</div>
</section>