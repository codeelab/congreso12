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
    <li class="active"><a href="<?php echo site_url('admin/usuarios') ?>">Inicio</a></li>
    <li><a href="<?php echo site_url("login/salir") ?>">Salir</a></li>
</ul>
</div>
</div>
</div>
</section>
<section id="pricing">
<div class="container">
<div class="center">
<h2>REPORTE GENERAL DE USUARIOS REGISTRADOS</h2>
<p class="lead">CECTI <?=date('Y');?></p>
</div>

<div class="gap"></div>
<div id="pricing-table" class="row">

<div class="row">
<div class="col-md-8">
<div class="table-responsive">

<table class="table table-striped table-bordered table-hover dt-responsive nowrap" width="100%" id="table">
     <thead>
 <tr>
            <th>Folio</th>
            <th>Estatus</th>
            <th>Nombre</th>
            <th>Registro</th>
            <th>Vista Completa</th>
 </tr>
 </thead>
 <tbody>
 <?php
if($listado !== FALSE) {
            foreach ($listado as $row) {
                $nombre_completo = $row->nombre .' '.$row->a_paterno .' '.$row->a_paterno;
            if ($row->status === 'Activo') {
                   $estado = "<span class='label label-success'>Activo</span>";
              }else {
                   $estado = "<span class='label label-danger'>Suspendido</span>";
             }

            echo "
                   <tr>
                       <td><span class='label label-default span-enviado'><i class='fa fa-ticket' aria-hidden='true'></i>  CECTI-$row->id_usuarios</span></td>
                       <td>$estado</td>
                       <td>$nombre_completo</td>
                       <td>$row->nombre_puesto</td>
                       <td><a href='" . base_url() . "admin/ver/$row->id_usuarios'><button type='button' class='btn btn-default' data-toggle='tooltip' data-placement='top' title='Ver más'><i class='fa fa-eye' aria-hidden='true'></i></button></a></td>
                    </tr>
                ";
           }
}
?>
 </tbody>
 </table>
</div>
</div>

<div class="col-sm-4">

            <div class="panel panel-primary">
                <div class="panel-heading">
                    <h3 class="panel-title">
                        <span class="fa fa-filter fa-x2"></span> REPORTES</h3>
                </div>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-xs-6 col-md-6">
                          <a href='<?=base_url(); ?>admin/pExcel' class='btn btn-default btn-block btn-info'><i class='fa fa-file-excel-o' aria-hidden='true'></i>   Ponentes</a>
                        </div>
                        <div class="col-xs-6 col-md-6">
                          <a href='<?=base_url();?>admin/pPDF' target="_blank" class='btn btn-default btn-block btn-danger'><i class='fa fa-file-pdf-o' aria-hidden='true'></i>   Ponentes</a>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-xs-6 col-md-6">
                          <a href='<?=base_url(); ?>admin/mExcel' class='btn btn-default btn-block btn-info'><i class='fa fa-file-excel-o' aria-hidden='true'></i>   Moderadores</a>
                        </div>
                        <div class="col-xs-6 col-md-6">
                          <a href='<?=base_url();?>admin/mPDF' target="_blank" class='btn btn-default btn-block btn-danger'><i class='fa fa-file-pdf-o' aria-hidden='true'></i>   Moderadores</a>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-xs-6 col-md-6">
                          <a href='<?=base_url(); ?>admin/rExcel' target="_blank" class='btn btn-default btn-block btn-info'><i class='fa fa-file-excel-o' aria-hidden='true'></i>   Relatores</a>
                        </div>
                        <div class="col-xs-6 col-md-6">
                          <a href='<?=base_url();?>admin/rPDF' target="_blank" class='btn btn-default btn-block btn-danger'><i class='fa fa-file-pdf-o' aria-hidden='true'></i>   Relatores</a>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-xs-6 col-md-6">
                          <a href='<?=base_url(); ?>admin/eExcel' class='btn btn-default btn-block btn-info'><i class='fa fa-file-excel-o' aria-hidden='true'></i>   Evaluadores</a>
                        </div>
                        <div class="col-xs-6 col-md-6">
                          <a href='<?=base_url();?>admin/ePDF' target="_blank" class='btn btn-default btn-block btn-danger'><i class='fa fa-file-pdf-o' aria-hidden='true'></i>   Evaluadores</a>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-xs-6 col-md-6">
                          <a href='<?=base_url(); ?>admin/lExcel' class='btn btn-default btn-block btn-info'><i class='fa fa-file-excel-o' aria-hidden='true'></i>   Logistico</a>
                        </div>
                        <div class="col-xs-6 col-md-6">
                          <a href='<?=base_url();?>admin/lPDF' target="_blank" class='btn btn-default btn-block btn-danger'><i class='fa fa-file-pdf-o' aria-hidden='true'></i>   Logistico</a>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-xs-6 col-md-6">
                          <a href='<?=base_url(); ?>admin/aExcel' class='btn btn-default btn-block btn-info'><i class='fa fa-file-excel-o' aria-hidden='true'></i>   Asistentes</a>
                        </div>
                        <div class="col-xs-6 col-md-6">
                          <a href='<?=base_url();?>admin/aPDF' target="_blank" class='btn btn-default btn-block btn-danger'><i class='fa fa-file-pdf-o' aria-hidden='true'></i>   Asistentes</a>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-xs-6 col-md-6">
                          <a href='<?=base_url(); ?>admin/tExcel' class='btn btn-default btn-block btn-info'><i class='fa fa-file-excel-o' aria-hidden='true'></i>   Todos</a>
                        </div>
                        <div class="col-xs-6 col-md-6">
                          <a href='<?=base_url();?>admin/tPDF' target="_blank" class='btn btn-default btn-block btn-danger'><i class='fa fa-file-pdf-o' aria-hidden='true'></i>   Todos</a>
                        </div>
                    </div>
                </div>
            </div>

</div>


</div>
</div>
</div>
</section>
