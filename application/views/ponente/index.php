<?php

  $user = $this->session->userdata('id_usuarios');
  $nombre = $this->session->userdata('nombre');
  $a_paterno = $this->session->userdata('a_paterno');
  $a_materno = $this->session->userdata('a_materno');

if(!$user)
{
  redirect('login','refresh');
  exit();
}

//Validamos si es el path principal ? , si lo es deje accesar desde url
        if ($this->uri->uri_string()) {
            //Carga Libraria User_agent
            $this->load->library('user_agent');
            //Verifica si llega desde un enlace
            if ($this->agent->referrer()) {
                //Busca si el enlace llega de una URL diferente
                $post = strpos($this->agent->referrer(), base_url());
                if ($post === FALSE) {
                    //Podemos aqui crear un mensaje antes de redirigir que informe
                    redirect(base_url());
                }
            }
            //Si no se llega desde un enlace se redirecciona al inicio
            else {
                //Podemos aqui crear un mensaje antes de redirigir que informe
                redirect(base_url());
            }
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

    <?php if($FCR > $actual && $actual < $FIA): ?>
    <!-- Función texto sólo para alerta de resúmen -->
    <div class='alert alert-info' role='alert'><p class='lead'>Con el fin de enriquecer el 12vo Congreso Estatal de Ciencia, Tecnología e Innovación y por decisión unánime del Comité Organizador, se otorgan <b>dos semanas de prórroga en los tiempos de recepción de trabajos</b>, por lo que la fecha límite para subir el resumen a la plataforma será el día <b>25 de agosto</b>.</p></div>

    <?php elseif ($actual >= $FIA && $actual < $FIE): ?>
    <!-- Función texto sólo para alerta de resúmen -->
    <div class='alert alert-warning' role='alert'><p class='lead'>Del 28 de Agosto al 13 de Septiembre se actualizará el estatus de <b>ENVIADO</b> a <b>APROBADO</b> o <b>NO APROBADO</b>. Las resoluciones del Comité Científico son inapelables.</p></div>
    <div class='alert alert-info' role='alert'><p class='lead' style="font-size: 16px;">En caso de que tu trabajo haya sido aprobado para exponerse en el 12 CECTI, la subida de extenso se habilitará a partir del <b> 14 de septiembre</b>.</p></div>

    <?php elseif($actual > $FIE && $actual <= $FCE): ?>
    <!-- Función texto sólo para alerta de extenso -->
    <div class='alert alert-info' role='alert'><p class='lead'>El trabajo en extenso deberá subirse del <b>15 al 22 de Septiembre</b>. BAJO NINGUNA CIRCUNSTANCIA SE PRESENTARAN EN LAS MESAS DE TRABAJO, PONENCIAS QUE NO HAYAN ENVIADO SU TRABAJO EN EXTENSO. De igual forma no serán incluidos en las memorias.</p></div>

    <div class='alert alert-warning' role='alert'><p class='lead'>
    <p class="lead" style="font-size: 14px;">Las presentaciones deberán prepararse en archivos *.pptx (MS Office Power Point versión 2010 o superior) y serán enviados sin excepción, al correo electrónico congreso.ciencia@gmail.com, adjuntando nombre, folio y mesa, a más tardar el 29 de septiembre. Por seguridad de la información,<b> NO SE RECIBIRÁN PRESENTACIONES EN MEMORIAS USB O DISCOS EXTERNOS LOS DÍAS DEL EVENTO.</b></p></div>

    <?php elseif($actual > $FCE && $actual <= $FIC): ?>
    <div class='alert alert-danger' role='alert'><p class='lead'>Estimado participante, la fecha l&iacute;mite para subir tu <b>Extenso</b> ha finalizado agradecemos tu participaci&oacute;n. <br>Los horarios y mesas de las ponencias serán notificados, <b>EL PONENTE DEBERÁ ESTAR AL HORA DE INICIO DE LA MESA ASIGNADO</b>.</p></div>

    <?php else: ?>
    <!-- Función texto sólo para alerta de resúmen -->
    <div class='alert alert-success' role='alert'><p class='lead'>Las constancias podrán ser descargadas a partir del día <b>23 de Octubre 2017 y hasta el 28 de Febrero 2018</b> en ésta plataforma.</p></div>

<?php endif ?>
<div class="gap"></div>
<div id="pricing-table" class="row">


<div class="col-md-3 col-xs-6">
<ul class="plan plan1">
<li class="plan-name">
<h3>Ticket Evento</h3>
</li>
<li class="plan-price">
<div>
<span class="price"><i class="fa fa-file-pdf-o fa-2x" aria-hidden="true"></i></span>
</div>
</li>
<li class="plan-action">
<a href="ticket" target="_blank" class="btn btn-outlined btn-white" data-wow-delay="0.7s"><i class="fa fa-download" aria-hidden="true"></i> Descargar</a>
</li>
</ul>
</div>



<?php if($actual > $FIR && $actual <= $FCR): ?>
<div class="col-md-3 col-xs-6">
<ul class="plan plan1">
<li class="plan-name">
<h3>Plantillas</h3>
</li>
<li class="plan-price">
<div>
<span class="price"><i class="fa fa-file-word-o fa-2x" aria-hidden="true"></i></span>
</div>
</li>
<li class="plan-action">
<a href="<?php base_url() ?>../formatos/formato_resumen.docx" target="_blank" class="btn btn-outlined btn-white" data-wow-delay="0.7s"><i class="fa fa-download" aria-hidden="true"></i>   Formato Resumen</a>
<a href="<?php base_url() ?>../formatos/guia_resumen_congreso_12.pdf" target="_blank" class="btn btn-outlined btn-white" data-wow-delay="0.7s"><i class="fa fa-download" aria-hidden="true"></i>   Guía Resumen</a>
<a href="<?php base_url() ?>../formatos/guia_cartel_congreso_12.pdf" target="_blank" class="btn btn-outlined btn-white" data-wow-delay="0.7s"><i class="fa fa-download" aria-hidden="true"></i>   Guía Cartel</a>
</li>
</ul>
</div>
<?php endif ?>

<?php if($actual > $FIE && $actual <= $FCE): ?>
        <div class="col-md-3 col-xs-6">
        <ul class="plan plan1">
        <li class="plan-name">
        <h3>Plantillas</h3>
        </li>
        <li class="plan-price">
        <div>
        <span class="price"><i class="fa fa-file-word-o fa-2x" aria-hidden="true"></i></span>
        </div>
        </li>
        <li class="plan-action">
        <a href="<?php base_url() ?>../formatos/guia_final_congreso_12.pdf" target="_blank" class="btn btn-outlined btn-white" data-wow-delay="0.7s"><i class="fa fa-download" aria-hidden="true"></i>   Guía Extenso</a>
        <a href="<?php base_url() ?>../formatos/Power_Point_12_Congreso.pptx" target="_blank" class="btn btn-outlined btn-white" data-wow-delay="0.7s"><i class="fa fa-download" aria-hidden="true"></i>  Formato de presentación</a>
        </li>
        </ul>
        </div>
<?php endif ?>


<?php if($FCR > $actual): ?>

<div class='col-md-3 col-xs-6'>
<ul class='plan plan2 featured'>
<li class='plan-name'>
<h3>Registrar Trabajo</h3>
</li>
<li class='plan-price'>
<div>
<span class='price'><i class='fa fa-file-text-o fa-2x' aria-hidden='true'></i></span>
</div>
</li>
<li class='plan-action'>
<a href='trabajo' class="btn btn-outlined btn-white" data-wow-delay="0.7s"><i class='fa fa-edit' aria-hidden='true'></i>   Acceso</a>
</li>
</ul>
</div>
<?php endif ?>



<?php if($actual > $FIE && $actual <= $FCR): ?>
        <div class='col-md-3 col-xs-6'>
        <ul class='plan plan2 featured'>
        <li class='plan-name'>
        <h3>Registrar Extenso</h3>
        </li>
        <li class='plan-price'>
        <div>
        <span class='price'><i class='fa fa-file-text-o fa-2x' aria-hidden='true'></i></span>
        </div>
        </li>
        <li class='plan-action'>
        <a href='extenso/<?=$user;?>' class="btn btn-outlined btn-white" data-wow-delay="0.7s"><i class='fa fa-edit' aria-hidden='true'></i>   Registro</a>
        </li>
        </ul>
        </div>
<?php endif ?>






<div class="col-md-3 col-xs-6">
<ul class="plan plan3">
<li class="plan-name">
<h3>Trabajo(s) Registrado(s)</h3>
</li>
<li class="plan-price">
<div>
<span class="price"><i class="fa fa-list fa-2x" aria-hidden="true"></i></span>
</div>
</li>
<li class="plan-action">
<a href="<?php echo base_url(); ?>ponente/listado/<?=$user;?>" class="btn btn-outlined btn-white" data-wow-delay="0.7s"><i class="fa fa-edit" aria-hidden="true"></i>   Listado</a>
</li>
</ul>
</div>


<?php if($actual >= $FIC && $actual <= $FCC): ?>
<div class='col-md-3 col-xs-6'>
<ul class='plan plan3'>
<li class='plan-name'>
<h3>Constancias</h3>
</li>
<li class='plan-price'>
<div>
<span class='price'><i class='fa fa-file-pdf-o fa-2x' aria-hidden='true'></i></span>
</div>
</li>
<li class='plan-action'>
<a href='constancias' class="btn btn-outlined btn-white" data-wow-delay="0.7s"><i class='fa fa-download' aria-hidden='true'></i>   Descargas</a>
</li>
</ul>
</div>
<?php endif ?>


</div>
<br>
<div class="alert alert-info" role="alert"><p class="lead" style="font-size: 15px;">Dudas y Aclaraciones con la <b>Psic. Norma Elisa Valencia Farías</b>, al correo electrónico <b>congreso.ciencia@gmail.com</b>, o llamar a los teléfonos (01443) 3 24 90 80 | 3 14 99 07  ext. 107</p></div>
</div>
</section>
