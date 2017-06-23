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
    <li class="active"><a href="<?php echo site_url('ponente/trabajo') ?>">Registro</a></li>
    <li><a href="<?php echo site_url("login/salir") ?>">Salir</a></li>
</ul>
</ul>
</div>
</div>
</div>
</section>

<section id="career" class="container">
<div class="center">
<h2>Registro de Trabajo</h2>
</div>
<hr>
<div class="row">

<div class="col-md-10">
  
<form action="<?php echo base_url(); ?>ponente/registro_trabajo" method="post" enctype="multipart/form-data">
  <div class="form-group">
    <label for="">Título del proyecto</label>
    <input type="text" class="form-control" id="titulo" name="titulo">
  </div>
  <div class="form-group">
    <label for="">Nombre del (los) autor (es)</label>
    <input type="text" class="form-control" id="autor" name="autor">
  </div>
  <div class="form-group">
    <label for="">Co-autores</label>
    <input type="text" class="form-control" id="coautores" name="coautores">
  </div>
  <div class="form-group">
    <label for="">Nombre del Asesor</label>
    <input type="text" class="form-control" id="asesor" name="asesor">
  </div>
  <div class="form-group">
    <label for="">Tipo de trabajo</label>
    <select class="form-control" id="tipo_trabajo_id" name="tipo_trabajo_id">
    <?php
    foreach ($tipo as $i => $trabajo)
       echo '<option value="',$i,'">',$trabajo,'</option>';
    ?>
    </select>
  </div>
  <div class="form-group">
    <label for="">Área temática</label>
    <select class="form-control" id="mesa_id" name="mesa_id">
    <?php
    foreach ($area as $i => $tematica)
       echo '<option value="',$i,'">',$tematica,'</option>';
    ?>
    </select>
  </div>
<div class="alert alert-info" role="alert">
<div class="checkbox">
  <label>
    <input type="checkbox" value="1" id="c_jovenes" name="c_jovenes">
    ¿Tu proyecto cumple con los <b><a href="<?php base_url() ?>../formatos/lineamientos_congreso12.pdf" target="_blank">líneamientos</a></b> establecidos para participar en el <b>6to encuentro de jóvenes investigadores del estado de michoácan</b>?
  </label>
</div>
</div>
  <div class="form-group">
    <label for="">Carga tu archivo Resúmen (5MB Max).</label>
    <input type="file" id="userfile" name="userfile">
    <p class="help-block">Sólo esta permitido archivos en formato PDF</p>
  </div>
  <?php echo form_hidden("usuario_id", "$user"); ?>
  <button type="submit" class="btn btn-outlined btn-theme btn-md" data-wow-delay="0.7s">Enviar</button>
</form>


</div>

</div>
</section>