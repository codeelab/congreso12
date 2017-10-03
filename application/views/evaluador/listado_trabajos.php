<?php
  $user = $this->session->userdata('id_usuarios');
  $nombre = $this->session->userdata('nombre');
  $a_paterno = $this->session->userdata('a_paterno');
  $a_materno = $this->session->userdata('a_materno');
  $mesa = $this->session->userdata('mesa');

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

if(!empty($tematica) ) {
  foreach ($tematica as $row) {
    if ($row->id_tematica === $mesa) {
        $mesa_asignada = $row->nombre_tem;
    }
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
    <li class="active"><a href="<?php echo site_url('evaluador/listado') ?>">Trabajos</a></li>
    <li><a href="<?php echo site_url("login/salir") ?>">Salir</a></li>
</ul>
</div>
</div>
</div>
</section>

<section id="career" class="container">
<div class="center">
<h2>Listado de Trabajos Para Evaluar <br> <?php echo $mesa_asignada;?></h2>
</div>
<hr>
<div class="row">
<div class="col-md-12">
<div class="table-responsive">
<table class="table table-striped table-bordered table-hover dt-responsive nowrap" width="100%" id="table">
     <thead>
 <tr>
            <th data-column="1">Folio</th>
            <th data-column="2">Estatus</th>
            <th data-column="3">Autor</th>
            <th data-column="4">Título</th>
            <th data-column="5">Modalidad</th>
            <th data-column="6">Mesa</th>
            <th data-column="7">Resúmen</th>
            <th data-column="8">Evaluar</th>
 </tr>
 </thead>
 <tbody>
 <?php
      foreach ($ponencias as $row) {
            if ($row->status === 'Enviado') {
                   $estado = "<h4><span class='label label-info'>Enviado</span></h4>";
              } else if ($row->status === 'Aceptado') {
                   $estado = "<h4><span class='label label-success'>Aprobado</span></h4>";
             } else if ($row->status === 'No aceptado') {
                   $estado = "<h4><span class='label label-danger'>No aprobado</span></h4>";
             } else {
                   $estado = "<h4><span class='label label-default'>Cancelado</span></h4>";
             }

            if (file_exists($row->archivo_resumen) !=" ") {
                $resumen = "<a><button type='button' class='btn btn-warning' data-toggle='tooltip' data-placement='bottom' title='No existe archivo'><i class='fa fa-exclamation-circle' aria-hidden='true'></i></button></a>";
            }else{
                $resumen = "<a href='" . base_url() . "{$row->archivo_resumen}' target='_blank'><button type='button' class='btn btn-danger' data-toggle='tooltip' data-placement='bottom' title='$row->autor'><i class='fa fa-file-pdf-o' aria-hidden='true'></i></button></a>";
            }


            if ($row->mesa_id === $mesa) {
               echo "<tr>
               <td><h4><span class='label label-default'><i class='fa fa-ticket' aria-hidden='true'></i>  CECTI-$row->id_ponencias</span></h4></td>
               <td>$estado</td>
               <td>$row->autor</td>
               <td>$row->titulo</td>
               <td>$row->nombre_trabajo</td>
               <td>$row->nombre_tem</td>
               <td>$resumen</td>
               <td><a href='" . base_url() . "evaluador/evaluar/$row->id_ponencias'><button type='button' class='btn btn-success'><i class='fa fa-pencil-square-o' aria-hidden='true'></i></button></a></td>";
              }
          }

?>
 </tbody>
 </table>
</div>
</div>
</div>
</section>