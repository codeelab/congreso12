<?php

    $user = $this->session->userdata('id_usuarios');
    $nombre = $this->session->userdata('nombre');
    $a_paterno = $this->session->userdata('a_paterno');
    $a_materno = $this->session->userdata('a_materno');
    $mesa = $this->session->userdata('mesa');

if(!$user)
{
  redirect('login','refresh');
  exit();
}



  $actual = date('Y') . '-' . date('m') . '-' . date('d');

  foreach ($alert as $rows) {
    //Para los avisos de subida de resumen y cierre del módulo a todos los ponentes
    $FIR = $rows->fecha_inicio_resumen;
    $FCR = $rows->fecha_cierre_resumen;
    //Para los avisos de estado a todos los ponentes aprobados
    $FIA = $rows->fecha_inicio_estado;
    $FCA = $rows->fecha_cierre_estado;
    //Para los avisos de subida de extensos y cierre del módulo a todos los ponentes aprobados
    $FIE = $rows->fecha_inicio_extenso;
    $FCE = $rows->fecha_cierre_extenso;
    //Para los avisos de CONSTANCIAS a todos los ponentes aprobados
    $FIC = $rows->fecha_inicio_constancia;
    $FCC = $rows->fecha_cierre_constancia;
  }



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
    <li><a href="<?php echo site_url("login/salir") ?>">Salir</a></li>
</ul>
</div>
</div>
</div>
</section>
<section id="pricing">
<div class="container">
    <?php if($FCR > $actual && $actual < $FIA): ?>
    <!-- Función texto sólo para alerta de resúmen -->
    <div class='alert alert-info' role='alert'><p class='lead'>La fecha límite para subir el resumen a la plataforma será el día <b>25 de agosto</b>. Por lo cual el Inicio de las evaluaciones es a partir del día <b>28 de agosto</b>.</p></div>

   <?php elseif ($FIA >= $actual && $actual < $FIE): ?>
    <!-- Función texto sólo para alerta de resúmen -->
    <div class='alert alert-warning' role='alert'><p class='lead'>Del 28 de Agosto al 01 de Septiembre se deben realizar las evaluaciones de la mesa asignada y cambiar el estatus de <b>ENVIADO</b> a <b>ACEPTADO</b> o <b>NO ACEPTADO</b>.</p></div>

    <?php else: ?>
    <!-- Función texto sólo para alerta de resúmen -->
    <div class='alert alert-success' role='alert'><p class='lead'>Estimado Evaluador del 6to Encuentro de Jovenes Investigadores del Estado de Michoacán, su constancia de participación podrá ser descargada a partir del día <b>7 de Octubre 2017 y hasta el 28 de Febrero 2018</b> en ésta plataforma.</p></div>

<?php endif ?>

<div class="gap"></div>
<div id="pricing-table" class="row">

<!--

<div class="col-md-3 col-xs-6">
<ul class="plan plan3">
<li class="plan-name">
<h4>Trabajo(s) Registrado(s) <br> 6to Encuentro</h4>
</li>
<li class="plan-price">
<div>
<span class="price"><i class="fa fa-list fa-2x" aria-hidden="true"></i></span>
</div>
</li> 
<li class="plan-action">
<a href="<?php echo base_url(); ?>encuentro/listado" class="btn btn-outlined btn-white" data-wow-delay="0.7s"><i class="fa fa-edit" aria-hidden="true"></i>   Listado</a>
</li>
</ul>
</div>
<div class="col-md-3 col-xs-6">
<ul class="plan plan3">
<li class="plan-name">
<h4>Evaluaciones asignadas <br> 6to Encuentro</h4>
</li>
<li class="plan-price">
<div>
<span class="price"><i class="fa fa-list fa-2x" aria-hidden="true"></i></span>
</div>
</li>
<li class="plan-action">
<a href="<?php echo base_url(); ?>encuentro/aprobado" class="btn btn-outlined btn-white" data-wow-delay="0.7s"><i class="fa fa-edit" aria-hidden="true"></i>   Listado</a>
</li>
</ul>
</div>
-->


<?php if($actual >= $FIC && $actual <= $FCC): ?>
<div class='col-md-3 col-xs-6'>
<ul class="plan plan1">
<li class="plan-name">
<h3>Constancia</h3>
</li>
<li class='plan-price'>
<div>
<span class='price'><i class='fa fa-file-pdf-o fa-2x' aria-hidden='true'></i></span>
</div>
</li>
<li class="plan-action">
<a href="<?php echo base_url(); ?>encuentro/constancia" class="btn btn-outlined btn-white" data-wow-delay="0.7s"><i class="fa fa-download" aria-hidden="true"></i>   Descargas</a>
</li>
</ul>
</div>
<?php endif ?>



</div>


<br>
<div class="alert alert-info" role="alert"><p class="lead">Dudas y Aclaraciones con la <b>Psic. Norma Elisa Valencia Farías</b>, al correo electrónico <b>congreso.ciencia@gmail.com</b>, o llamar a los teléfonos (01443) 3 24 90 80 | 3 14 99 07  ext. 107</p></div>
</div>
</section>
