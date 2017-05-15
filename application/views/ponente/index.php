<?php


  //Para los avisos de subida de resumen y cierre del módulo a todos los ponentes
  $FIR = explode('/',"17/04/2017");
  $FCR = explode('/',"15/05/2017");
  //Para los avisos de subida de extensos y cierre del módulo a todos los ponentes aprobados
  $FIE = explode('/',"18/05/2017");
  $FCE = explode('/',"23/05/2017");


  $user = $this->session->userdata('id_usuarios');
  $nombre = $this->session->userdata('nombre');
  $a_paterno = $this->session->userdata('a_paterno');
  $a_materno = $this->session->userdata('a_materno');

 foreach ($ponentes as $row) {
  $estado = $row->status_id;
 }

?>

<section id="title" class="emerald">
<div class="container">
<div class="row">
<div class="col-sm-6">
<h1>Ponente: <?php echo $nombre .' '.$a_paterno .' '.$a_materno ?></h1>
</div>
<div class="col-sm-6">
<ul class="breadcrumb pull-right lead">
    <li class="active"><a href="<?php echo site_url('ponente/index') ?>">Inicio</a></li>
    <li><a href="<?php echo site_url("login/salir") ?>">Salir</a></li>
</ul>
</div>
</div>
</div>
</section>
<section id="pricing">
<div class="container">

  <?php if($FCR < $FIE): ?>

    <!-- Función texto sólo para alerta de resúmen -->
    <div class='alert alert-info' role='alert'><p class='lead'>La fecha limite para el envío del archivo en <b>Resumen</b>, es el día <b>26 de agosto del 2016</b>. Le sugerimos elaborar el Resumen en base a los lineamientos marcados en la convocatoria. <br> Una vez aprobado dicho resumen, se enviará un correo electrónico donde se solicitará el trabajo en extenso.</p></div>

<?php else: ?>

    <!-- Función texto sólo para alerta de resúmen -->
    <div class='alert alert-danger' role='alert'><p class='lead'>Estimado participante, la fecha l&iacute;mite para subir tu <b>Resumen ha finalizado</b> agradecemos tu participaci&oacute;n. Si tu proyecto fue <b>aprobado</b>  en breve se habilitara la opción de extenso</p></div>

<?php endif; ?>


<div class="gap"></div>
<div id="pricing-table" class="row">
<div class="col-md-3 col-xs-6">
<ul class="plan plan1">
<li class="plan-name">
<h4>Plantilla</h4>
</li>
<li class="plan-price">
<div>
<span class="price"><i class="fa fa-file-word-o fa-2x" aria-hidden="true"></i></span>
</div>
</li>
<li class="plan-action">
<a href="#" class="btn btn-default btn-md"><i class="fa fa-download" aria-hidden="true"></i>   Descarga</a>
</li>
</ul>
</div>

<?php if($FIE > $FCR): ?>

<div class='col-md-3 col-xs-6'>
<ul class='plan plan2 featured'>
<li class='plan-name'>
<h4>Registrar Trabajo</h4>
</li>
<li class='plan-price'>
<div>
<span class='price'><i class='fa fa-file-text-o fa-2x' aria-hidden='true'></i></span>
</div>
</li>
<li class='plan-action'>
<a href='trabajo' class='btn btn-default btn-md'><i class='fa fa-edit' aria-hidden='true'></i>   Acceso</a>
</li>
</ul>
</div>

<?php else: ?>

<div class='col-md-3 col-xs-6'>
<ul class='plan plan2 featured'>
<li class='plan-name'>
<h4>Registrar Trabajo</h4>
</li>
<li class='plan-price'>
<div>
<span class='price'><i class='fa fa-file-text-o fa-2x' aria-hidden='true'></i></span>
</div>
</li>
<li class='plan-action'>
<a href='#' class='btn btn-default btn-md' disabled='disabled'><i class='fa fa-edit' aria-hidden='true'></i>   Acceso</a>
</li>
</ul>
</div>


<?php endif ?>

<?php if($estado == '2' XOR $FIE >= $FCE): ?>

    <div class='col-md-3 col-xs-6'>
    <ul class='plan plan2 featured'>
    <li class='plan-name'>
    <h4>Registrar Extenso</h4>
    </li>
    <li class='plan-price'>
    <div>
    <span class='price'><i class='fa fa-file-text-o fa-2x' aria-hidden='true'></i></span>
    </div>
    </li>
    <li class='plan-action'>
    <a href='extenso' class='btn btn-default btn-md'><i class='fa fa-cloud-upload' aria-hidden='true'></i>   Registro</a>
    </li>
    </ul>
    </div>
<?php else: ?>
    <div class='col-md-3 col-xs-6'>
    <ul class='plan plan2 featured'>
    <li class='plan-name'>
    <h4>Registrar Extenso</h4>
    </li>
    <li class='plan-price'>
    <div>
    <span class='price'><i class='fa fa-file-text-o fa-2x' aria-hidden='true'></i></span>
    </div>
    </li>
    <li class='plan-action'>
    <a href='extenso' class='btn btn-default btn-md' disabled='disabled'><i class='fa fa-cloud-upload' aria-hidden='true'></i>   Registro</a>

    </li>
    </ul>
    </div>
<?php endif ?>

<div class="col-md-3 col-xs-6">
<ul class="plan plan3">
<li class="plan-name">
<h4>Trabajo(s) Registrado(s)</h4>
</li>
<li class="plan-price">
<div>
<span class="price"><i class="fa fa-list fa-2x" aria-hidden="true"></i></span>
</div>
</li> 
<li class="plan-action">
<a href="<?php echo base_url(); ?>ponente/listado" class="btn btn-default btn-md"><i class="fa fa-edit" aria-hidden="true"></i>   Listado</a>
</li>
</ul>
</div> 
<?php if ( $estado == '2' XOR $estado == '5'): ?>
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
<a href='constancias' class='btn btn-default btn-md'><i class='fa fa-download' aria-hidden='true'></i>   Descargas</a>
</li>
</ul>
</div>
<?php else: ?>

<?php endif ?>




</div>
<br>
<div class="alert alert-info" role="alert"><p class="lead">Dudas y Aclaraciones con la <b>Psic. Norma Elisa Valencia Farías</b>, al correo electrónico <b>congreso.ciencia@gmail.com</b>, o llamar a los teléfonos (01443) 3 24 90 80 | 3 14 99 07  ext. 107</p></div>
</div>
</section>
