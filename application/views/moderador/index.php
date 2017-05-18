<?php

  $user = $this->session->userdata('id_usuarios');
  $nombre = $this->session->userdata('nombre');
  $a_paterno = $this->session->userdata('a_paterno');
  $a_materno = $this->session->userdata('a_materno');

  $actual = date('d') . '/' . date('m') . '/' . date('y');

  $FIR = "17/04/2017";
  $FCR = "14/05/2017";

?>

<section id="title" class="emerald">
<div class="container">
<div class="row">
<div class="col-sm-6">
<h1>Moderador: <?php echo $nombre .' '.$a_paterno .' '.$a_materno ?></h1>
</div>
<div class="col-sm-6">
<ul class="breadcrumb pull-right lead">
    <li class="active"><a href="<?php echo site_url('moderador/index') ?>">Inicio</a></li>
    <li><a href="<?php echo site_url("login/salir") ?>">Salir</a></li>
</ul>
</div>
</div>
</div>
</section>
<section id="pricing">
<div class="container">
<?php if($FCR > $actual): ?>
  <!-- Función texto sólo para alerta de resúmen -->
  <div class='alert alert-info' role='alert'><p class='lead'>Los horarios, fechas y ponencias seran visualizadas durante los días del <b>Congreso Estatal de Ciencia y Desarrollo Tecnólogico <?=date('Y')?></b>, del <b>26 de octubre del 2017</b> al <b>29 de octubre del 2017</b>. Le sugerimos estar en el horario y mesa asignada con media hora de anticipación.</p></div>


<?php else: ?>
    <!-- Función texto sólo para alerta de resúmen -->
    <div class='alert alert-danger' role='alert'><p class='lead'>Estimado participante, se ha habilitado su <b>Constancia</b> de participación del XII Congreso Estatal de Ciencia, Innovación y Desarrollo Tecnólogico <?=date('Y');?></p></div>

<?php endif ?>

<div class="gap"></div>
<div id="pricing-table" class="row">

<?php if ($FCR > $actual): ?>

<div class='col-md-3 col-xs-6'>
<ul class='plan plan2 featured'>
<li class='plan-name'>
<h4>Ponencias Asignadas</h4>
</li>
<li class='plan-price'>
<div>
<span class='price'><i class='fa fa-file-text-o fa-2x' aria-hidden='true'></i></span>
</div>
</li>
<li class='plan-action'>
<a href='mesas' class='btn btn-outlined btn-white' data-wow-delay='0.7s'><i class='fa fa-edit' aria-hidden='true'></i>   Acceso</a>
</li>
</ul>
</div>


<div class='col-md-3 col-xs-6'>
<ul class='plan plan3'>
<li class='plan-name'>
<h4>Horarios</h4>
</li>
<li class='plan-price'>
<div>
<span class='price'><i class='fa fa-calendar fa-2x' aria-hidden='true'></i></span>
</div>
</li>
<li class='plan-action'>
<a href='calendario' class='btn btn-outlined btn-white' data-wow-delay='0.7s'><i class='fa fa-external-link' aria-hidden='true'></i>   Acceso</a>
</li>
</ul>
</div>

<?php endif ?>


<?php if ($actual >= $FCR): ?>
<div class='col-md-3 col-xs-6'>
<ul class='plan plan3'>
<li class='plan-name'>
<h4>Constancias</h4>
</li>
<li class='plan-price'>
<div>
<span class='price'><i class='fa fa-file-pdf-o fa-2x' aria-hidden='true'></i></span>
</div>
</li>
<li class='plan-action'>
<a href='constancias' class='btn btn-outlined btn-white' data-wow-delay='0.7s'><i class='fa fa-download' aria-hidden='true'></i>   Descargas</a>
</li>
</ul>
</div>
<?php endif ?>

</div>
<br>
<div class="alert alert-info" role="alert"><p class="lead">Dudas y Aclaraciones con la <b>Psic. Norma Elisa Valencia Farías</b>, al correo electrónico <b>congreso.ciencia@gmail.com</b>, o llamar a los teléfonos (01443) 3 24 90 80 | 3 14 99 07  ext. 107</p></div>
</div>
</section>

