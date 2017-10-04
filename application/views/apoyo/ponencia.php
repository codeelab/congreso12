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

<form id="form" action="<?php echo base_url('apoyo/actualizar_ponencia'); ?>" method="post">
<input type="hidden" name="<?php echo $this->security->get_csrf_token_name(); ?>" value="<?php echo $this->security->get_csrf_hash(); ?>">
<?php
if($mod !== FALSE){
  foreach ($mod as $row)
  {
    echo "
        <div class='row'>
            <div class='col-md-4'>
                <label class='form-text' for='nombre'>Autor (es)</label>
                <input type='text' class='form-control' id='autor' name='autor' value='$row->autor'>
            </div>
            <div class='col-md-4'>
                <label class='form-text' for='a_paterno'>Coautor (es)</label>
                <input type='text' class='form-control' id='coautores' name='coautores' value='$row->coautores'>
            </div>
            <div class='col-md-4'>
                <label class='form-text' for='a_paterno'>Asesor (es)</label>
                <input type='text' class='form-control' id='asesor' name='asesor' value='$row->asesor'>
            </div>
        </div>

        <div class='row'>
            <div class='col-md-9'>
                <label class='form-text' for='nombre'>Titulo del proyecto</label>
                <input type=' text' class='form-control' id='titulo' name='titulo' value='$row->titulo'>
            </div>
        </div>
      <input type='hidden' name='usuario_id' id='usuario_id' value='$row->usuario_id'>
      <button type='submit' class='btn btn-outlined btn-theme btn-md' data-wow-delay='0.7s'>Enviar</button>
      ";

  }
}else{
  echo "NO EXISTEN PONENCIAS DE ESTE USUARIO";
}
?>
</form>




<hr>
<br>
<a href="<?php echo base_url(); ?>apoyo/correccion"><button type="button"  class="btn btn-outlined btn-theme btn-md btn-block" data-wow-delay="0.7s">Regresar al listado</button></a>

</div>
</div>

</section>