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
    <li class="active"><a href="<?php echo site_url('admin/apariencia/index') ?>">Inicio</a></li>
    <li><a href="<?php echo site_url("login/salir") ?>">Salir</a></li>
</ul>
</div>
</div>
</div>
</section>
<section id="pricing">
<div class="container">

<section id="career" class="container">
<div class="center">
<h2 class="form-text">Lista de menús activos</h2>
</div>
<hr>
<div class="row">
<div class="col-md-12">
<?php
//Si existen las sesiones flasdata que se muestren
if($this->session->flashdata('correcto'))
   echo $this->session->flashdata('correcto');

if($this->session->flashdata('incorrecto'))
   echo $this->session->flashdata('incorrecto');
?>




<?php if ($mod) { ?>
<?php foreach ($mod as $row) { ?>
<form action="<?=base_url();?>admin/actualizar/<?=$row->id_menu;?>" method="post">
<?php echo  form_hidden($this->security->get_csrf_token_name(), $this->security->get_csrf_hash());  ?>
<input type="hidden" class="form-control" id="id_menu" name="id_menu" value="<?=$row->id_menu;?>">
            <div class="row form-group">
                <div class="col-md-2">
                    <label class="form-text" for="id_menu">ID menú</label>
                      <div class='input-group'>
                          <span class="input-group-addon">
                            <i class="fa fa-sort-numeric-asc" aria-hidden="true"></i>
                          </span>
                          <input type="text" class="form-control" id="id_menu" name="id_menu" value="<?=$row->id_menu;?>" disabled>
                      </div>
                </div>
                <div class="col-md-2">
                    <label class="form-text" for="id_menu">Orden</label>
                      <div class='input-group'>
                          <span class="input-group-addon">
                            <i class="fa fa-circle" aria-hidden="true"></i>
                          </span>
                          <input type="text" class="form-control" id="orden" name="orden" value="<?=$row->orden;?>">
                      </div>
                </div>
                <div class="col-md-8">
                  <label class="form-text" for="paterno">Nombre Menú</label>
                    <div class='input-group'>
                      <span class="input-group-addon">
                        <i class="fa fa-tags" aria-hidden="true"></i>
                      </span>
                        <input type="text" class="form-control" id="nombre_menu" name="nombre_menu" value="<?=$row->nombre_menu;?>">
                    </div>
                </div>
            </div>

            <div class="row form-group">
                <div class="col-md-12">
                  <label class="form-text" for="paterno">URL</label>
                    <div class='input-group'>
                      <span class="input-group-addon">
                        <i class="fa fa-link" aria-hidden="true"></i>
                      </span>
                        <input type="url" class="form-control" id="url" name="url" value="<?=$row->url;?>">
                    </div>
                </div>
            </div>
    <button type="submit" name="submit" value="Save"  class="btn btn-outlined btn-theme btn-md" data-wow-delay="0.7s">Actualizar</button>
</form>
<? } ?>
<?php } else { ?>
  <div class="alert alert-danger" role="alert"><h3><b>!Oops</b>, no existen datos que mostrar en este momento.</h3></div>
<?php  } ?>
<hr>
<br>
<a href="<?php echo base_url(); ?>admin/menus"><button type="button"  class="btn btn-outlined btn-theme btn-md btn-block" data-wow-delay="0.7s">Regresar al listado</button></a>

</div>
</div>

</div>
</section>