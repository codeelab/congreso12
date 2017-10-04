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
<style type="text/css">
  .loader, .ok {
  float: right;
  /*margin-right:50px;*/
}
</style>
<section id="title" class="emerald">
<div class="container">
<div class="row">
<div class="col-sm-6">
<h1>Usuario: <?php echo $nombre .' '.$a_paterno .' '.$a_materno ?></h1>
</div>
<div class="col-sm-6">
<ul class="breadcrumb pull-right lead">
    <li><a href="<?php echo site_url('apoyo/index') ?>">Inicio</a></li>
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

<?php if($mod_user !== FALSE){

foreach ($mod_user as $v){

               echo "
                <div class='col-md-6 col-xs-6'>
                <ul class='plan plan1'>
                <li class='plan-name'>
                <h3>Ajuste de Usuario</h3>
                </li>
                <li class='plan-price'>
                <div>
                <span class='price'><i class='fa fa-edit fa-2x' aria-hidden='true'></i></span>
                </div>
                </li>
                <li class='plan-action'>
                <a href='" . base_url() . "apoyo/mod_user/$v->id_usuarios' class='btn btn-outlined btn-white' data-wow-delay='0.7s'><i class='fa fa-angle-double-right' aria-hidden='true'></i> Acceso</a>
                </li>
                </ul>
                </div>
               ";
           }
}else{
               echo "
                <div class='col-md-6 col-xs-6'>
                <ul class='plan featured plan1'>
                <li class='plan-name'>
                <h3>No existen datos</h3>
                </li>
                <li class='plan-price'>
                <div>
                <span class='price'><i class='fa fa-edit fa-2x' aria-hidden='true'></i></span>
                </div>
                </li>
                <li class='plan-action'>
                <a class='btn btn-outlined btn-white' data-wow-delay='0.7s'><i class='fa fa-angle-double-right' aria-hidden='true'></i> x </a>
                </li>
                </ul>
                </div>
               ";
}
?>






<?php if($mods !== FALSE){

foreach ($mods as $v){

               echo "
                <div class='col-md-6 col-xs-6'>
                <ul class='plan plan1'>
                <li class='plan-name'>
                <h3>Ajuste de Ponencia</h3>
                <p style='font-size: 17px;'>$v->titulo</p>
                </li>
                <li class='plan-action'>
                <a href='" . base_url() . "apoyo/mod_ponencia/$v->id_ponencias' class='btn btn-outlined btn-white' data-wow-delay='0.7s'><i class='fa fa-angle-double-right' aria-hidden='true'></i> Acceso</a>
                </li>
                </ul>
                </div>
               ";
           }
}else{
               echo "
                <div class='col-md-6 col-xs-6'>
                <ul class='plan featured plan1'>
                <li class='plan-name'>
                <h3>No existen datos</h3>
                </li>
                <li class='plan-price'>
                <div>
                <span class='price'><i class='fa fa-edit fa-2x' aria-hidden='true'></i></span>
                </div>
                </li>
                <li class='plan-action'>
                <a class='btn btn-outlined btn-white' data-wow-delay='0.7s'><i class='fa fa-angle-double-right' aria-hidden='true'></i> x </a>
                </li>
                </ul>
                </div>
               ";
}
?>





<hr>
<br>
<a href="<?php echo base_url(); ?>apoyo/correccion"><button type="button"  class="btn btn-outlined btn-theme btn-md btn-block" data-wow-delay="0.7s">Regresar al listado</button></a>

</div>
</div>

</section>