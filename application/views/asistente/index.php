<?php

  $user = $this->session->userdata('id_usuarios');
  $nombre = $this->session->userdata('nombre');
  $a_paterno = $this->session->userdata('a_paterno');
  $a_materno = $this->session->userdata('a_materno');
  $nombre_completo = $nombre .' '.$a_paterno .' '.$a_materno;

  $actual = date('d') . '/' . date('m') . '/' . date('y');

  $FIL = "17/04/2017";
  $FCL = "14/05/2017";

?>

<section id="title" class="emerald">
<div class="container">
<div class="row">
<div class="col-sm-9">
<h1>Asistente:  <?php echo $nombre_completo ?></h1>
</div>
<div class="col-sm-3">
<ul class="breadcrumb pull-right lead">
    <li class="active"><a href="<?php echo site_url('asistente/index') ?>">Inicio</a></li>
    <li><a href="<?php echo site_url("login/salir") ?>">Salir</a></li>
</ul>
</div>
</div>
</div>
</section>
<section id="pricing">
<div class="container">

    <div class='alert alert-warning' role='alert'><p class='lead'>Estimado(a) <?php echo $nombre_completo ?>, la <b><i class='fa fa-file-pdf-o' aria-hidden='true'></i> Constancia</b> de participación en <b>Apoyo Logistico</b> se habilitara al finalizar el evento. Le sugerimos estar al pendiente.</p></div>


<div class="gap"></div>
<div id="pricing-table" class="row">


<?php if($actual >= $FCL): ?>
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
<?php endif; ?>

</div>
<br>
<div class="alert alert-info" role="alert"><p class="lead">Dudas y Aclaraciones con la <b>Psic. Norma Elisa Valencia Farías</b>, al correo electrónico <b>congreso.ciencia@gmail.com</b>, o llamar a los teléfonos (01443) 3 24 90 80 | 3 14 99 07  ext. 107</p></div>
</div>
</section>
