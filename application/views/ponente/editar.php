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
    <li class="active"><a href="<?php echo site_url('ponente/editar') ?>">Edición</a></li>
    <li><a href="<?php echo site_url("login/salir") ?>">Salir</a></li>
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
   echo $this->session->flashdata('correcto');

if($this->session->flashdata('incorrecto'))
   echo $this->session->flashdata('incorrecto');
?>
<form action="" method="post">
<?php foreach ($mod as $row):?>
  <div class="form-group">
    <label for="">Título del proyecto</label>
    <input type="text" class="form-control" id="titulo" name="titulo" value="<?=$row->titulo?>">
  </div>
  <div class="form-group">
    <label for="">Nombre del (los) autor (es)</label>
    <input type="text" class="form-control" id="autor" name="autor" value="<?=$row->autor?>">
  </div>
  <div class="form-group">
    <label for="">Co-autores</label>
    <input type="text" class="form-control" id="coautores" name="coautores" value="<?=$row->coautores?>">
  </div>
  <div class="form-group">
    <label for="">Nombre del Asesor</label>
    <input type="text" class="form-control" id="asesor" name="asesor" value="<?=$row->asesor?>">
  </div>
  <button type="submit" name="submit" value="Modificar"  class="btn btn-outlined btn-theme btn-md" data-wow-delay="0.7s">Enviar</button>
  <?php endforeach;?>
</form>
<hr>
<br>
<a href="<?php echo base_url(); ?>ponente/listado"><button type="button"  class="btn btn-outlined btn-theme btn-md btn-block" data-wow-delay="0.7s">Regresar al listado</button></a>

</div>
</div>

</div>
</section>