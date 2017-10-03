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
<h1>Ponente: <?php echo $nombre .' '.$a_paterno .' '.$a_materno ?></h1>
</div>
<div class="col-sm-6">
<ul class="breadcrumb pull-right lead">
    <li><a href="<?php echo site_url('asistente/index') ?>">Inicio</a></li>
    <li class="active"><a href="<?php echo site_url('asistente/editar') ?>">Edición</a></li>
    <li><a href="<?php echo site_url("login/salir") ?>">Salir</a></li>
</ul>
</div>
</div>
</div>
</section>

<section id="career" class="container">
<div class="center">
<h2>Edición de Información</h2>
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
<form action="" method="post">
<?php foreach ($mod as $row):?>
  <div class="form-group">
    <label for="">Nombre</label>
    <input type="text" class="form-control" id="nombre" name="nombre" value="<?=$row->nombre?>">
  </div>
  <div class="form-group">
    <label for="">Apellido Paterno</label>
    <input type="text" class="form-control" id="a_paterno" name="a_paterno" value="<?=$row->a_paterno?>">
  </div>
  <div class="form-group">
    <label for="">Apellido Materno</label>
    <input type="text" class="form-control" id="a_materno" name="a_materno" value="<?=$row->a_materno?>">
  </div>
  <button type="submit" name="submit" value="Modificar"  class="btn btn-outlined btn-theme btn-md" data-wow-delay="0.7s">Enviar</button>
  <?php endforeach;?>
</form>
<hr>
<br>
<a href="<?php echo base_url(); ?>asistente/constancias"><button type="button"  class="btn btn-outlined btn-theme btn-md btn-block" data-wow-delay="0.7s">Regresar al listado</button></a>

</div>
</div>

</div>
</section>