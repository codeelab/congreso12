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
    foreach($lista as $row)
    {
      $id       = $row->id_ponencias;
    }

    foreach($checar as $v)
    {
      $est      = $v->status_id;
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
    <li><a href="<?php echo site_url('ponente/index') ?>">Inicio</a></li>
    <li class="active"><a href="<?php echo site_url('ponente/extenso') ?>">Registro</a></li>
    <li><a href="<?php echo site_url("login/salir") ?>">Salir</a></li>
</ul>
</ul>
</div>
</div>
</div>
</section>

<section id="career" class="container">
<div class="center">
<h2>Registro de Trabajo Extenso</h2>
</div>
<hr>
<div class="row">

<div class="col-md-10">


  <?php if($est === '2'): ?>

    <form action="<?php echo base_url(); ?>ponente/registro_extenso/<?php echo $id;?>" method="post" enctype="multipart/form-data">
      <div class="form-group">
        <label for="">Carga tu archivo Extenso</label>
        <input type="file" id="userfile" name="userfile">
        <p class="help-block">Sólo esta permitido archivos en formato PDF</p>
      </div>
      <button type="submit" class="btn btn-outlined btn-theme btn-md" data-wow-delay="0.7s">Enviar</button>
    </form>
<?php elseif($est === '1'): ?>

    <div class='alert alert-info' role='alert'>
      <p class='lead' style="font-size: 16px;">Agradecemos tu interés de participar en el 12º Congreso Estatal de Ciencia, Tecnología e Innovación., te informamos que el Comité Evaluador <b>Esta revisando</b> tu proyecto, por lo que te invitamos a volver a verificar más tarde.</p>
    </div>

  <?php else: ?>
    <div class='alert alert-danger' role='alert'>
      <p class='lead' style="font-size: 16px;">Agradecemos tu interés de participar en el 12º Congreso Estatal de Ciencia, Tecnología e Innovación., te informamos que el Comité Evaluador <b>No aprobó</b> tu proyecto, por lo que te invitamos a participar como asistente.</p>
       <p class='lead' style="font-size: 16px;">Para tal efecto, nuevamente deberas registrarte como asistente, sin usar las mismas credenciales que utilizaste como ponente. Te recordamos que conforme a lo publicado en la convocatoria, la decisión del Comité Evaluador es <b>inapelable</b>.</p>
    </div>

<?php endif ?>
</div>

</div>
</section>