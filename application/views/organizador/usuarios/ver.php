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


foreach ($listado as $row) {
  $folio    = $row->id_usuarios;
  $status   = $row->status;
  $puesto   = $row->nombre_puesto;
  $usuario  = $row->username;
  $correo   = $row->email;
  $nombre   = $row->nombre;
  $paterno  = $row->a_paterno;
  $materno  = $row->a_materno;
  $edad     = $row->edad;
  $genero = $row->nombre_gen;
  $nacionalidad = $row->nombre_nac;
  $estado   = $row->nombre_est;
  $municipio = $row->nombre_mun;
  $institucion = $row->nombre_ins;
  $facultad = $row->nombre_fac;
  $grado = $row->nombre_aca;
  $area = $row->nombre_tem;
  $modalidad = $row->nombre_trabajo;
  $apoyo = $row->nombre_area_apoyo;

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
    <li class="active"><a href="<?php echo site_url('organizador/index') ?>">Inicio</a></li>
    <li><a href="<?php echo site_url("login/salir") ?>">Salir</a></li>
</ul>
</div>
</div>
</div>
</section>
<section id="pricing">
<div class="container">
<div class="center">
<h2>REPORTE GENERAL POR USUARIO REGISTRADO</h2>
<p class="lead">CECTI <?=date('Y');?></p>
</div>

<div class="gap"></div>
<div id="pricing-table" class="row">

<div class="row">
<div class="col-md-12">
<div class="row">
    <div class="col-lg-12">
    <a class="btn btn-success" href="<?=base_url();?>organizador/total_usuarios" role="button"><span class="fa fa-mail-reply-all"></span>  Regresar</a>
    <a class="btn btn-success" href="<?=base_url();?>organizador/uPDF/<?=$folio;?>" target="_blank" role="button"><span class="fa fa-file-pdf-o"></span>  PDF</a>
    <a class="btn btn-success" href="<?=base_url();?>organizador/uExcel/<?=$folio;?>" role="button"><span class="fa fa-file-excel-o"></span>  EXCEL</a>
    </div>
</div>
<hr>
<div class="row">

    <div class="col-lg-2">
        <div class="form-group">
            <label class="control-label ">Folio:</label>
            <div class="input-group">
                <div class="input-group-addon"><span class="fa fa-ticket"> CECTI-<?=$folio;?></span></div>
            </div>
        </div>
    </div>
    <div class="col-lg-2">
        <div class="form-group">
            <label class="control-label ">Status:</label>
            <div class="input-group">
                <div class="input-group-addon"><span class="fa fa-podcast">  <?=$status;?></span></div>
            </div>
        </div>
    </div>
    <div class="col-lg-2">
        <div class="form-group">
            <label class="control-label ">Puesto:</label>
            <div class="input-group">
                <div class="input-group-addon"><span class="fa fa-handshake-o">   <?=$puesto;?></span></div>
            </div>
        </div>
    </div>
    <div class="col-lg-3">
        <div class="form-group">
            <label class="control-label ">Usuario:</label>
            <div class="input-group">
                <div class="input-group-addon"><span class="fa fa-user-o">   <?=$usuario;?></span></div>
            </div>
        </div>
    </div>
    <div class="col-lg-3">
        <div class="form-group">
            <label class="control-label ">Correo:</label>
            <div class="input-group">
                <div class="input-group-addon"><span class="fa fa-envelope-o">   <?=$correo;?></span></div>
            </div>
        </div>
    </div>
    <div class="col-lg-4">
        <div class="form-group">
            <label class="control-label ">Nombre:</label>
            <div class="input-group">
                <div class="input-group-addon">  <?=$nombre.' '.$paterno.' '.$materno;?></div>
            </div>
        </div>
    </div>

    <div class="col-lg-1">
        <div class="form-group">
            <label class="control-label ">Edad:</label>
            <div class="input-group">
                <div class="input-group-addon">  <?=$edad;?></div>
            </div>
        </div>
    </div>

    <div class="col-lg-1">
        <div class="form-group">
            <label class="control-label ">Genero:</label>
            <div class="input-group">
                <div class="input-group-addon"><?=$genero;?></div>
            </div>
        </div>
    </div>

    <div class="col-lg-1">
        <div class="form-group">
            <label class="control-label ">Nacionalidad:</label>
            <div class="input-group">
                <div class="input-group-addon">  <?=$nacionalidad;?></div>
            </div>
        </div>
    </div>

    <div class="col-lg-2">
        <div class="form-group">
            <label class="control-label ">Estado:</label>
            <div class="input-group">
                <div class="input-group-addon">  <?=$estado;?></div>
            </div>
        </div>
    </div>

    <div class="col-lg-3">
        <div class="form-group">
            <label class="control-label ">Municipio:</label>
            <div class="input-group">
                <div class="input-group-addon">  <?=$municipio;?></div>
            </div>
        </div>
    </div>

    <div class="col-lg-5">
        <div class="form-group">
            <label class="control-label ">Institución Educativa:</label>
            <div class="input-group">
                <div class="input-group-addon">  <?=$institucion;?></div>
            </div>
        </div>
    </div>

    <div class="col-lg-4">
        <div class="form-group">
            <label class="control-label ">Facultad:</label>
            <div class="input-group">
                <div class="input-group-addon">  <?=$facultad;?></div>
            </div>
        </div>
    </div>

    <div class="col-lg-2">
        <div class="form-group">
            <label class="control-label ">Grado Academico:</label>
            <div class="input-group">
                <div class="input-group-addon">  <?=$grado;?></div>
            </div>
        </div>
    </div>


    <div class="col-lg-4">
        <div class="form-group">
            <label class="control-label ">Área Tematica:</label>
            <div class="input-group">
                <div class="input-group-addon">  <?=$area;?></div>
            </div>
        </div>
    </div>

    <div class="col-lg-4">
        <div class="form-group">
            <label class="control-label ">Modalidad:</label>
            <div class="input-group">
                <div class="input-group-addon">  <?=$modalidad;?></div>
            </div>
        </div>
    </div>

    <div class="col-lg-2">
        <div class="form-group">
            <label class="control-label ">Apoyo Logistico:</label>
            <div class="input-group">
                <div class="input-group-addon">  <?=$apoyo;?></div>
            </div>
        </div>
    </div>





</div>

</section>
