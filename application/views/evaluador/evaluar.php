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
<h1>Evaluador: <?php echo $nombre .' '.$a_paterno .' '.$a_materno ?></h1>
</div>
<div class="col-sm-6">
<ul class="breadcrumb pull-right lead">
    <li class="active"><a href="<?php echo site_url('evaluador/index') ?>">Inicio</a></li>
    <li><a href="<?php echo site_url("login/salir") ?>">Salir</a></li>
</ul>
</div>
</div>
</div>
</section>

<section id="career" class="container">
<div class="center">
<h2>Listado de Trabajos Presentados</h2>
</div>
<hr>
<div class="row">
<div class="col-md-12">


<?=  form_open("/evaluador/evaluando/".$id) ?>

  <div class="form-group">
    <label for="">Elija el Estado del proyecto</label>
    <select class="form-control" id="status_id" name="status_id">
<option value="0">-------</option>
<option value="2">Aceptado</option>
<option value="3">No aceptado</option>
<option value="4">Cancelado</option>
</select>
</div>
  <button type="submit" name="submit" value="Evaluar" class="btn btn-default">Enviar</button>

</form>
<hr>
<br>
<a href="<?php echo base_url(); ?>evaluador/listado"><button type="button" class="btn btn-outlined btn-info btn-lg btn-block" data-wow-delay="0.7s" data-wow-delay="0.7s">Regresar al listado</button></a>

</div>
</div>

</div>
</section>