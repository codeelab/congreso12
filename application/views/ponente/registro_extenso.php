<?php
  $user = $this->session->userdata('id_usuarios');
  $nombre = $this->session->userdata('nombre');
  $a_paterno = $this->session->userdata('a_paterno');
  $a_materno = $this->session->userdata('a_materno');

foreach ($lista as $row) {
  $id = $row->id_ponencias;
}
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
<h1>Ponente: <?php echo $nombre .' '.$a_paterno .' '.$a_materno ?></h1>
</div>
<div class="col-sm-6">
<br>
<br>
<br>
<br>
<ul class="breadcrumb pull-right lead">
    <li><a href="<?php echo site_url('ponente/index') ?>">Inicio</a></li>
    <li class="active"><a href="<?php echo site_url('ponente/extenso') ?>">Registro</a></li>
    <li><a href="<?php echo site_url("login/salir") ?>">Salir</a></li>
</ul>
</ul>
</div>
</div>
</div>
</section>

<section id="career" class="container">
<div class="center">
<h2>Registro de Trabajo Extenso</h2>
</div>
<hr>
<div class="row">

<div class="col-md-10">

<form action="<?php echo base_url(); ?>ponente/registro_extenso/<?php echo $id;?>" method="post" enctype="multipart/form-data">
  <div class="form-group">
    <label for="">Carga tu archivo Extenso</label>
    <input type="file" id="userfile" name="userfile">
    <p class="help-block">Sólo esta permitido archivos en formato PDF</p>
  </div>
  <button type="submit" class="btn btn-info btn-md">Enviar</button>
</form>


</div>

</div>
</section>