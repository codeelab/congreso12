<?php

  $actual = date("d") . "/" . date("m") . "/" . date("Y"); //fecha que compara la actual
  //Para los avisos de subida de resumen y cierre del módulo a todos los relators
  $inicio_aviso_relator = "17/04/2017";
  $cierre_aviso_relator = "28/04/2017";
  //Para los avisos de subida de extensos y cierre del módulo a todos los relators aprobados
  $inicio_aviso_extensos = "29/04/2017";
  $cierre_aviso_extensos = "30/05/2017";


  $user = $this->session->userdata('id_usuarios');
  $nombre = $this->session->userdata('nombre');
  $a_paterno = $this->session->userdata('a_paterno');
  $a_materno = $this->session->userdata('a_materno');


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
<h1>Relator: <?php echo $nombre .' '.$a_paterno .' '.$a_materno ?></h1>
</div>
<div class="col-sm-6">
<br>
<br>
<br>
<br>
<ul class="breadcrumb pull-right lead">
    <li class="active"><a href="<?php echo site_url('relator/index') ?>">Inicio</a></li>
    <li><a href="<?php echo site_url("login/salir") ?>">Salir</a></li>
</ul>
</div>
</div>
</div>
</section>
<section id="pricing">
<div class="container">
<?php
if ($actual >= $inicio_aviso_relator AND $actual < $cierre_aviso_relator) {

    //Función texto sólo para alerta de resúmen
    echo "<div class='alert alert-info' role='alert'><p class='lead'>La fecha limite para el envío del archivo en <b>Resumen</b>, es el día <b>26 de agosto del 2016</b>. Le sugerimos elaborar el Resumen en base a los lineamientos marcados en la convocatoria. <br> Una vez aprobado dicho resumen, se enviará un correo electrónico donde se solicitará el trabajo en extenso.</p></div>";

}else if ($actual == $cierre_aviso_relator) {

    //Función texto sólo para alerta de resúmen
    echo "<div class='alert alert-danger' role='alert'><p class='lead'>Estimado participante, la fecha l&iacute;mite para subir tu <b>Resumen ha finalizado</b> agradecemos tu participaci&oacute;n. Si tu proyecto fue <b>aprobado</b>  en breve se habilitara la opción de extenso</p></div>";

}else if ($actual >= $inicio_aviso_extensos AND $actual <= $cierre_aviso_extensos) {

    //Función texto sólo para alerta de extenso
    echo "<div class='alert alert-warning' role='alert'><p class='lead'>La fecha limite para el envío del archivo en <b>Extenso</b> del trabajo es el día <b> 18 de septiembre del 2016</b>. Le sugerimos elaborar el documento en base a los lineamientos marcados en la convocatoria.</p></div>";

}else{

    //Función texto sólo para alerta de resúmen
    echo "<div class='alert alert-danger' role='alert'><p class='lead'>Estimado participante, la fecha l&iacute;mite para subir tu Extenso ha finalizado agradecemos tu participaci&oacute;n.</p></div>";
}

 ?>

<div class="gap"></div>
<div id="pricing-table" class="row">

<?php
if ( $actual >= $cierre_aviso_relator) {

echo "
<div class='col-md-3 col-xs-6'>
<ul class='plan plan2 featured'>
<li class='plan-name'>
<h4>Mesa(s) Asignada(s)</h4>
</li>
<li class='plan-price'>
<div>
<span class='price'><i class='fa fa-file-text-o' aria-hidden='true'></i></span>
</div>
</li>
<li class='plan-action'>

</li>
</ul>
</div>";
}else{
echo "
<div class='col-md-3 col-xs-6'>
<ul class='plan plan2 featured'>
<li class='plan-name'>
<h4>Mesa(s) Asignada(s)</h4>
</li>
<li class='plan-price'>
<div>
<span class='price'><i class='fa fa-file-text-o' aria-hidden='true'></i></span>
</div>
</li>
<li class='plan-action'>
<a href='mesas' class='btn btn-default btn-md'><i class='fa fa-edit' aria-hidden='true'></i>   Acceso</a>
</li>
</ul>
</div>";
}

?>

<div class='col-md-3 col-xs-6'>
<ul class='plan plan3'>
<li class='plan-name'>
<h4>Constancias</h4>
</li>
<li class='plan-price'>
<div>
<span class='price'><i class='fa fa-file-pdf-o' aria-hidden='true'></i></span>
</div>
</li>
<li class='plan-action'>
<a href='constancias' class='btn btn-default btn-md'><i class='fa fa-download' aria-hidden='true'></i>   Descargas</a>
</li>
</ul>
</div>


</div>
<br>
<div class="alert alert-info" role="alert"><p class="lead">Dudas y Aclaraciones con la <b>Psic. Norma Elisa Valencia Farías</b>, al correo electrónico <b>congreso.ciencia@gmail.com</b>, o llamar a los teléfonos (01443) 3 24 90 80 | 3 14 99 07  ext. 107</p></div>
</div>
</section>
