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
    <li><a href="<?php echo site_url('ponente/index') ?>">Inicio</a></li>
    <li class="active"><a href="<?php echo site_url('ponente/listado') ?>">Trabajos</a></li>
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
<div class="table-responsive">
<table class="table table-striped table-bordered table-hover dt-responsive nowrap" width="100%" id="table">
     <thead>
 <tr>
            <th>Folio</th>
            <th>Estatus</th>
            <th>Autor</th>
            <th>Co-autores</th>
            <th>Asesor</th>
            <th>Título</th>
            <th>Modalidad</th>
            <th>Mesa</th>
            <th>Resúmen</th>
            <th>Extenso</th>
            <th>Editar</th>
            <th>Eliminar</th>
 </tr>
 </thead>
 <tbody>
 <?php
if($ponencias !== FALSE) {
            foreach ($ponencias as $row) {

            if ($row->status === 'Enviado') {
                   $estado = "<div class='status-enviado'></div><span class='label label-info span-enviado' style='margin:15%;'>Enviado</span>";
              } else if ($row->status === 'Aceptado') {
                   $estado = "<div class='status-aprobado'></div><span class='label label-success span-aprobado' style='margin:15%;'>Aprobado</span>";
             } else if ($row->status === 'No aceptado') {
                   $estado = "<div class='status-no-aprobado'></div><span class='label label-danger span-no-aprobado' style='margin:15%;'>No aprobado</span>";
             } else {
                   $estado = "<div class='status-cancelado'></div><span class='label label-default span-cancelado' style='margin:15%;'>Cancelado</span>";
             }

            if (empty($row->archivo_resumen)) {
                $resumen = "<a><button type='button' class='btn btn-warning' data-toggle='tooltip' data-placement='bottom' title='No existe archivo'><i class='fa fa-exclamation-circle' aria-hidden='true'></i></button></a>";
            }else{
                $resumen = "<a href='" . base_url() . "{$row->archivo_resumen}' target='_blank'><button type='button' class='btn btn-danger' data-toggle='tooltip' data-placement='bottom' title='$row->titulo'><i class='fa fa-file-pdf-o' aria-hidden='true'></i></button></a>";
            }

            if (empty($row->archivo_extenso)) {
                $extenso = "<a><button type='button' class='btn btn-warning' data-toggle='tooltip' data-placement='bottom' title='No existe archivo'><i class='fa fa-exclamation-circle' aria-hidden='true'></i></button></a>";
            }else{
                $extenso = "<a href='" . base_url() . "{$row->archivo_extenso}' target='_blank'><button type='button' class='btn btn-danger' data-toggle='tooltip' data-placement='bottom' title='$row->titulo'><i class='fa fa-file-pdf-o' aria-hidden='true'></i></button></a>";
            }

               echo "<tr>
               <td><span class='label label-default span-enviado'><i class='fa fa-ticket' aria-hidden='true'></i>  CECTI-$row->id_ponencias</span></td>
               <td>$estado</td>
               <td>$row->autor</td>
               <td>$row->coautores</td>
               <td>$row->asesor</td>
               <td>$row->titulo</td>
               <td>$row->nombre_trabajo</td>
               <td>$row->nombre_tem</td>
               <td>$resumen</td>
               <td>$extenso</td>
               <td><a href='" . base_url() . "ponente/mod/$row->id_ponencias'><button type='button' class='btn btn-success'><i class='fa fa-pencil-square-o' aria-hidden='true'></i></button></a></td>
               <td><a href='" . base_url() . "ponente/eliminar/$row->id_ponencias'><button type='button' class='btn btn-danger'><i class='fa fa-pencil-square-o' aria-hidden='true'></i></button></a></td>";
           }
}
?>
 </tbody>
 </table>
</div>
</div>

</div>
</section>