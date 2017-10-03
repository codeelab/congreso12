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
    <li class="active"><a href="<?php echo site_url('admin/index') ?>">Inicio</a></li>
    <li><a href="<?php echo site_url("login/salir") ?>">Salir</a></li>
</ul>
</div>
</div>
</div>
</section>
<section id="pricing">
<div class="container">
<div class="center">
<h2>REPORTE GENERAL ESTADOS</h2>
</div>

<div class="gap"></div>
<div id="pricing-table" class="row">
<?php
foreach($municipio as $obj){
        $id_municipio = $obj->id_municipio;

    if ($id_municipio > 0) {
            echo '

            <div class="col-md-4 col-sm-4">
                <section class="panel panel-box">
                    <div class="panel-left panel-icon bg-ponente">
                      <i class="fa fa-map-marker fa-3x text-large stat-icon ponente-text"></i>
                    </div>
                    <div class="panel-right panel-icon bg-reverse">
                        <p class="size-h1 no-margin countdown_second">'.$registros = $obj->registros.'</p>
                        <p class="text-muted no-margin text"><span>'.$nombre_mun = $obj->nombre_mun.'</span></p>
                    </div>
                </section>
            </div>

            ';
    }else{
        echo 'EXISTE';
    }


}
?>
















</div>
</div>
</section>