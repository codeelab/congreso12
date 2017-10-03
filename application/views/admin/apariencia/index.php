<?php

  $user = $this->session->userdata('id_usuarios');
  $nombre = $this->session->userdata('nombre');
  $a_paterno = $this->session->userdata('a_paterno');
  $a_materno = $this->session->userdata('a_materno');
  $nombre_completo = $nombre .' '.$a_paterno .' '.$a_materno;

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
<div class="col-sm-9">
<h1>Administrador:  <?php echo $nombre_completo ?></h1>
</div>
<div class="col-sm-3">
<ul class="breadcrumb pull-right lead">
    <li class="active"><a href="<?php echo site_url('admin/index') ?>">Inicio</a></li>
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

<div class="col-md-3 col-xs-6">
<ul class="plan plan1">
<li class="plan-name">
<h3>Menús</h3>
</li>
<li class="plan-price">
<div>
<span class="price"><i class="fa fa-sitemap fa-2x" aria-hidden="true"></i></span>
</div>
</li>
<li class="plan-action">
<a href="<?=base_url() ?>admin/menus" class="btn btn-outlined btn-white" data-wow-delay="0.7s"><i class="fa fa-share" aria-hidden="true"></i>   Acceder</a>
</li>
</ul>
</div>

<div class="col-md-3 col-xs-6">
<ul class="plan plan2">
<li class="plan-name">
<h3>Slider</h3>
</li>
<li class="plan-price">
<div>
<span class="price"><i class="fa fa-television fa-2x" aria-hidden="true"></i></span>
</div>
</li>
<li class="plan-action">
<a href="<?=base_url() ?>admin/apariencia/slider" class="btn btn-outlined btn-white" data-wow-delay="0.7s"><i class="fa fa-share" aria-hidden="true"></i>   Acceder</a>
</li>
</ul>
</div>

<div class="col-md-3 col-xs-6">
<ul class="plan plan2">
<li class="plan-name">
<h3>Logo</h3>
</li>
<li class="plan-price">
<div>
<span class="price"><i class="fa fa-file-image-o fa-2x" aria-hidden="true"></i></span>
</div>
</li>
<li class="plan-action">
<a href="<?=base_url() ?>admin/apariencia/logo" class="btn btn-outlined btn-white" data-wow-delay="0.7s"><i class="fa fa-share" aria-hidden="true"></i>   Acceder</a>
</li>
</ul>
</div>

<div class="col-md-3 col-xs-6">
<ul class="plan plan2">
<li class="plan-name">
<h3>Información</h3>
</li>
<li class="plan-price">
<div>
<span class="price"><i class="fa fa-address-card-o fa-2x" aria-hidden="true"></i></span>
</div>
</li>
<li class="plan-action">
<a href="<?=base_url() ?>admin/apariencia/informacion" class="btn btn-outlined btn-white" data-wow-delay="0.7s"><i class="fa fa-share" aria-hidden="true"></i>   Acceder</a>
</li>
</ul>
</div>

<div class="col-md-3 col-xs-6">
<ul class="plan plan2">
<li class="plan-name">
<h3>Registro</h3>
</li>
<li class="plan-price">
<div>
<span class="price"><i class="fa fa-newspaper-o fa-2x" aria-hidden="true"></i></span>
</div>
</li>
<li class="plan-action">
<a href="<?=base_url() ?>admin/apariencia/registro" class="btn btn-outlined btn-white" data-wow-delay="0.7s"><i class="fa fa-share" aria-hidden="true"></i>   Acceder</a>
</li>
</ul>
</div>


<div class="col-md-3 col-xs-6">
<ul class="plan plan2">
<li class="plan-name">
<h3>Contacto</h3>
</li>
<li class="plan-price">
<div>
<span class="price"><i class="fa fa-vcard-o fa-2x" aria-hidden="true"></i></span>
</div>
</li>
<li class="plan-action">
<a href="<?=base_url() ?>admin/apariencia/contacto" class="btn btn-outlined btn-white" data-wow-delay="0.7s"><i class="fa fa-share" aria-hidden="true"></i>   Acceder</a>
</li>
</ul>
</div>

<div class="col-md-3 col-xs-6">
<ul class="plan plan2">
<li class="plan-name">
<h3>Footer</h3>
</li>
<li class="plan-price">
<div>
<span class="price"><i class="fa fa-edit fa-2x" aria-hidden="true"></i></span>
</div>
</li>
<li class="plan-action">
<a href="<?=base_url() ?>admin/apariencia/footer" class="btn btn-outlined btn-white" data-wow-delay="0.7s"><i class="fa fa-share" aria-hidden="true"></i>   Acceder</a>
</li>
</ul>
</div>

</div>

</section>
