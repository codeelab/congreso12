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


<div class="gap"></div>
<div id="pricing-table" class="row">

<div class="row">
  <div class="col-md-5">
<div class="single category">
<?= validation_errors(); ?>
<form action="<?=base_url(); ?>admin/registro_menu" method="post" accept-charset="utf-8" class="form-horizontal">
  <div class="form-group">
    <label for="nombre" class="col-sm-2 control-label">Nombre</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" name="nombre_menu" id="nombre_menu" autocomplete="off" maxlength="160" required >
    </div>
  </div>
  <div class="form-group">
    <label for="url" class="col-sm-2 control-label">URL</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" name="url" id="url" autocomplete="off" required >
    </div>
  </div>
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      <button type="submit" class="btn btn-success" name="guardar" id="guardar" value="Guardar">Guardar</button>
    </div>
  </div>
</form>
</div>
  </div>

  <div class="col-md-6">

    <div class="single category">
      <h3 class="side-title">MENÚS</h3>
      <div class="table-responsive">
        <table class="table">
          <thead>
            <tr>
              <th>ubicación</th>
              <th>Nombre</th>
              <th>Estado</th>
              <th>Edición</th>
            </tr>
          </thead>
          <tbody>
          <?php foreach ($listado as $menu): ?>
            <tr>
              <td><?=$menu->orden?></td>
              <td><?=$menu->nombre_menu?></td>
              <td><div class="activo-men" style="margin: 3%;"></div><span class="label2 label-default2"><?=$menu->estado?></span></td>
              <td><a href="<?=base_url()?>admin/editar_menu/<?=$menu->id_menu?>"><button type="button" class="btn2 btn-info"><i class="fa fa-pencil-square-o" aria-hidden="true"></i></button><button type="button" class="btn2 btn-danger"><i class="fa fa-trash-o" aria-hidden="true"></i></button></td>
            </tr>
          <?php endforeach ?>
          </tbody>
        </table>
      </div>
     </div>

  </div>

        </div>

  </div>
</div>

</div>

</section>
