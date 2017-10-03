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


?>

<section id="title" class="emerald">
<div class="container">
<div class="row">
<div class="col-sm-6">
<h1>Usuario: <?php echo $nombre .' '.$a_paterno .' '.$a_materno ?></h1>
</div>
<div class="col-sm-6">
<ul class="breadcrumb pull-right lead">
    <li class="active"><a href="<?php echo site_url('apoyo/index') ?>">Inicio</a></li>
    <li><a href="<?php echo site_url("login/salir") ?>">Salir</a></li>
</ul>
</div>
</div>
</div>
</section>
<section id="pricing">
<div class="container">


<div class="gap"></div>
<div id="pricing-table" class="row">


<div class="col-md-4 col-xs-6">
<ul class="plan plan1">
<li class="plan-name">
<h3>Ticket de Evento</h3>
</li>
<li class="plan-price">
<div>
<span class="price"><i class="fa fa-file-pdf-o fa-2x" aria-hidden="true"></i></span>
</div>
</li>
<li class="plan-action">
<a href="listado_ticket" class="btn btn-outlined btn-white" data-wow-delay="0.7s"><i class="fa fa-angle-double-right" aria-hidden="true"></i> Acceso</a>
</li>
</ul>
</div>


<div class="col-md-4 col-xs-6">
<ul class="plan plan1">
<li class="plan-name">
<h3>Registro al Evento</h3>
</li>
<li class="plan-price">
<div>
<span class="price"><i class="fa fa-file-pdf-o fa-2x" aria-hidden="true"></i></span>
</div>
</li>
<li class="plan-action">
<a href="registro" class="btn btn-outlined btn-white" data-wow-delay="0.7s"><i class="fa fa-angle-double-right" aria-hidden="true"></i> Acceso</a>
</li>
</ul>
</div>


<div class="col-md-4 col-xs-6">
<ul class="plan plan1">
<li class="plan-name">
<h3>Corrección de Datos</h3>
</li>
<li class="plan-price">
<div>
<span class="price"><i class="fa fa-file-pdf-o fa-2x" aria-hidden="true"></i></span>
</div>
</li>
<li class="plan-action">
<a href="correccion" class="btn btn-outlined btn-white" data-wow-delay="0.7s"><i class="fa fa-angle-double-right" aria-hidden="true"></i> Acceso</a>
</li>
</ul>
</div>









</div>
</div>
</section>
