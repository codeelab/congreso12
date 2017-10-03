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
<h1>Asistente: <?php echo $nombre .' '.$a_paterno .' '.$a_materno?></h1>
</div>
<div class="col-sm-6">
<ul class="breadcrumb pull-right lead">
    <li><a href="<?php echo site_url('asistente/index') ?>">Inicio</a></li>
    <li class="active"><a href="<?php echo site_url('asistente/constancias') ?>">Constancia</a></li>
    <li><a href="<?php echo site_url("login/salir") ?>">Salir</a></li>
</ul>
</div>
</div>
</div>
</section>

<section id="career" class="container">
<div class="center">
<h2>Constancia de Participación</h2>
</div>
<hr>
<div class="row">
<div class="col-md-12">
<div class="table-responsive">
<table class='table table-striped table-bordered table-hover dt-responsive nowrap' width='100%' id='table'>
     <thead>
 <tr>
            <th>Folio</th>
            <th>Participación</th>
            <th>Nombre</th>
            <th>Institución</th>
            <th>Facultad</th>
            <th>Constancia</th>
            <th>Edición</th>
 </tr>
 </thead>
 <tbody>
 <?php
foreach ($pdf as $row) {


  $asistente = $row->nombre.' '.$row->a_paterno.' '.$row->a_materno;

    if ($row->id_usuarios === $user) {
               echo "<tr>
               <td><h4><span class='label label-default'><i class='fa fa-ticket' aria-hidden='true'></i>  CECTI-LO-$row->id_usuarios</span></h4></td>
               <td>Asistente</td>
               <td>$asistente</td>
               <td>$row->nombre_ins</td>
               <td>$row->nombre_fac</td>
               <td><a href='" . base_url() . "asistente/constancia/$row->id_usuarios' target='_blank'><button type='button' class='btn btn-danger' data-toggle='tooltip' data-placement='bottom' title='$asistente'><i class='fa fa-file-pdf-o' aria-hidden='true'></i></button></a></td></td>
              <td><a href='" . base_url() . "asistente/mod/$row->id_usuarios'><button type='button' class='btn btn-success'><i class='fa fa-pencil-square-o' aria-hidden='true'></i></button></a></td>";
    }

}
?>
 </tbody>
 </table>

</div>
</div>

</div>
</section>