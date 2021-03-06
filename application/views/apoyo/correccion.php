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

<section id="career" class="container">
<div class="center">
<h2>Listado de Usuarios</h2>
</div>
<hr>
<div class="row">
<div class="col-md-12">
<div class="table-responsive">
<table class="table table-striped table-bordered table-hover dt-responsive nowrap" width="100%" id="table">
     <thead>
 <tr>
            <th>Folio</th>
            <th>Nombre</th>
            <th>Usuario</th>
            <th></th>

 </tr>
 </thead>
 <tbody>

 <?php
if($listado !== FALSE) {
            foreach ($listado as $row) {
              $nombre = $row->nombre.' '.$row->a_paterno.' '.$row->a_materno;
              $usuario = $row->nombre_puesto;

               echo "
               <tr>
               <td><span class='label label-default span-enviado'><i class='fa fa-ticket' aria-hidden='true'></i>  REGISTRO-000$row->id_usuarios</span></td>
               <td>$nombre</td>
               <td>$usuario</td>
               <td><a href='" . base_url() . "apoyo/mod/$row->id_usuarios'><button type='button' class='btn btn-success'><i class='fa fa-pencil-square-o' aria-hidden='true'></i></button></a></td>
               ";
           }
}else{
  echo "no existen datos";
}
?>
 </tbody>
 </table>
</div>
</div>

</div>
</section>