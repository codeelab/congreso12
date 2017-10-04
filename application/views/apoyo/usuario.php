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

<form id="form" action="<?php echo base_url('apoyo/actualizar_usuario'); ?>" method="post">
<input type="hidden" name="<?php echo $this->security->get_csrf_token_name(); ?>" value="<?php echo $this->security->get_csrf_hash(); ?>">
<?php
if($mod_user !== FALSE){
  foreach ($mod_user as $row)
  {
    echo "
        <div class='row'>
            <div class='col-md-4'>
                <label class='form-text' for='nombre'>Nombre (es)</label>
                <input type='text' class='form-control' id='nombre' name='nombre' value='$row->nombre'>
            </div>
            <div class='col-md-4'>
                <label class='form-text' for='a_paterno'>Apellido Paterno</label>
                <input type='text' class='form-control' id='a_paterno' name='a_paterno' value='$row->a_paterno'>
            </div>
            <div class='col-md-4'>
                <label class='form-text' for='a_paterno'>Apellido Materno</label>
                <input type='text' class='form-control' id='a_materno' name='a_materno' value='$row->a_materno'>
            </div>
        </div>

        <div class='row'>
        <br><br>
      <input type='hidden' name='id_usuarios' id='id_usuarios' value='$row->id_usuarios'>
      <button type='submit' class='btn btn-outlined btn-theme btn-md' data-wow-delay='0.7s'>Enviar</button>
        </div>
      ";

  }
}else{
  echo "NO EXISTEN DATOS DE ESTE USUARIO";
}
?>
</form>




<hr>
<br>
<a href="<?php echo base_url(); ?>apoyo/correccion"><button type="button"  class="btn btn-outlined btn-theme btn-md btn-block" data-wow-delay="0.7s">Regresar al listado</button></a>

</div>
</div>

</section>