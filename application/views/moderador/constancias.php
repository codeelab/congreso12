<?php
  $user = $this->session->userdata('id_usuarios');
  $nombre = $this->session->userdata('nombre');
  $a_paterno = $this->session->userdata('a_paterno');
  $a_materno = $this->session->userdata('a_materno');
  $nombres = $nombre .' '.$a_paterno .' '.$a_materno;

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
<h1>Moderador: <?php echo $nombre .' '.$a_paterno .' '.$a_materno ?></h1>
</div>
<div class="col-sm-6">
<ul class="breadcrumb pull-right lead">
    <li><a href="<?php echo site_url('moderador/index') ?>">Inicio</a></li>
    <li class="active"><a href="<?php echo site_url('moderador/listado') ?>">Trabajos</a></li>
    <li><a href="<?php echo site_url("login/salir") ?>">Salir</a></li>
</ul>
</div>
</div>
</div>
</section>

<section id="career" class="container">
<div class="center">
<h2>Constancias de Participación</h2>
</div>
<hr>
<div class="row">
<div class="col-md-12">
<div class="table-responsive">
<table class="table table-striped table-bordered table-hover dt-responsive nowrap" width="100%" id="table">
     <thead>
 <tr>
            <th>Folio</th>
            <th>Participación</th>
            <th>Nombre</th>
            <th>Sala</th>
            <th>Mesa</th>
            <th>Constancia</th>
 </tr>
 </thead>
 <tbody>
 <?php
    foreach ($pdf as $row) {

        echo "<tr>
               <td><span class='label label-default span-enviado'><i class='fa fa-ticket' aria-hidden='true'></i>  CECTI-MO-$row->id_usuarios</span></td>
               <td>Moderador</td>
               <td>$nombres</td>
               <td>$row->nombre_sala</td>
               <td>$row->nombre_mesa</td>
               <td><a href='" . base_url() . "moderador/constancia/$row->id_usuarios' target='_blank'><button type='button' class='btn btn-danger' data-toggle='tooltip' data-placement='bottom' title='$nombres'><i class='fa fa-file-pdf-o' aria-hidden='true'></i></button></a></td></td>";
      }
?>
 </tbody>
 </table>

</div>
</div>

</div>
</section>