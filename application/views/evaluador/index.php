<?php

  $actual = date("d") . "/" . date("m") . "/" . date("Y");
  $cierra_trabajo = "23/05/2017";

  $user = $this->session->userdata('id_usuarios');
  $nombre = $this->session->userdata('nombre');
  $a_paterno = $this->session->userdata('a_paterno');
  $a_materno = $this->session->userdata('a_materno');
  $mesa = $this->session->userdata('mesa');
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
<?php
if ( $actual >= "17/04/2017" AND $actual <= "20/04/2017") {

    //Función texto sólo para alerta de resúmen
    echo "<div class='alert alert-info' role='alert'><p class='lead'>La fecha limite para el envío del archivo en <b>Resumen</b>, es el día <b>26 de agosto del 2016</b>. Le sugerimos elaborar el Resumen en base a los lineamientos marcados en la convocatoria. <br> Una vez aprobado dicho resumen, se enviará un correo electrónico donde se solicitará el trabajo en extenso.</p></div>";

}else if ( $actual >= "21/04/2017" AND $actual <= "30/04/2017") {

    //Función texto sólo para alerta de extenso
    echo "<div class='alert alert-warning' role='alert'><p class='lead'>La fecha limite para el envío del archivo en <b>Extenso</b> del trabajo es el día <b> 18 de septiembre del 2016</b>. Le sugerimos elaborar el documento en base a los lineamientos marcados en la convocatoria.</p></div>";

}else{

    //Función texto sólo para alerta de resúmen
    echo "<div class='alert alert-danger' role='alert'><p class='lead'>Estimado participante, la fecha l&iacute;mite para subir tu Extenso ha finalizado agradecemos tu participaci&oacute;n.</p></div>";
}

 ?>

<div class="gap"></div>
<div id="pricing-table" class="row">


<div class="col-md-3 col-xs-6">
<ul class="plan plan3">
<li class="plan-name">
<h4>Trabajo(s) Registrado(s) <br> Mesa <?php echo $mesa?></h4>
</li>
<li class="plan-price">
<div>
<span class="price"><i class="fa fa-list fa-2x" aria-hidden="true"></i></span>
</div>
</li> 
<li class="plan-action">
<a href="<?php echo base_url(); ?>evaluador/listado" class="btn btn-outlined btn-white" data-wow-delay="0.7s"><i class="fa fa-edit" aria-hidden="true"></i>   Listado</a>
</li>
</ul>
</div> 
<div class="col-md-3 col-xs-6">
<ul class="plan plan3">
<li class="plan-name">
<h4>Trabajo(s) Aprobados(s) <br> Mesa <?php echo $mesa?></h4>
</li>
<li class="plan-price">
<div>
<span class="price"><i class="fa fa-list fa-2x" aria-hidden="true"></i></span>
</div>
</li> 
<li class="plan-action">
<a href="<?php echo base_url(); ?>evaluador/aprobado" class="btn btn-outlined btn-white" data-wow-delay="0.7s"><i class="fa fa-edit" aria-hidden="true"></i>   Listado</a>
</li>
</ul>
</div> 
<div class="col-md-3 col-xs-6">
<ul class="plan plan3">
<li class="plan-name">
<h4>Constancia de <br> Participación</h4>
</li>
<li class="plan-price">
<div>
<span class="price"><i class="fa fa-file-pdf-o fa-2x" aria-hidden="true"></i></span>
</div>
</li> 
<li class="plan-action">
<a href="<?php echo base_url(); ?>evaluador/constancia" class="btn btn-outlined btn-white" data-wow-delay="0.7s"><i class="fa fa-download" aria-hidden="true"></i>   Descargas</a>
</li>
</ul>
</div>
</div>
<br>
<div class="alert alert-info" role="alert"><p class="lead">Dudas y Aclaraciones con la <b>Psic. Norma Elisa Valencia Farías</b>, al correo electrónico <b>congreso.ciencia@gmail.com</b>, o llamar a los teléfonos (01443) 3 24 90 80 | 3 14 99 07  ext. 107</p></div>
</div>
</section>
