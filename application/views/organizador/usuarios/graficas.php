<?php
  echo "<meta http-equiv=\"refresh\" content=\"10\">";
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
<h2>REPORTE GENERAL</h2>
</div>

<div class="gap"></div>
<div id="pricing-table" class="row">

<div class="row">
<div class="col-md-12">

                <!-- ESTADISTICAS EN TIEMPO REAL REGISTROS -->
                <hr>
                    <p class="lead center">ÚLTIMO REGISTRO</p>
   <div class="row dashboard-stats">

                        <?php foreach ($registros as $row){ $registro = $row->id_usuarios; $pon = $row->nombre_puesto; $usuarioss = $row->nombre.' '.$row->a_paterno.' '.$row->a_materno;} ?>
                        <div class="col-md-12 col-sm-12">
                            <section class="panel panel-box">
                                <div class="panel-left panel-icon bg-ponente">
                                    <i class="fa fa-ticket fa-3x text-large stat-icon ponente-text"></i>
                                </div>
                                <div class="panel-right panel-icon bg-reverse">
                                    <p class="size-h1 no-margin countdown_second">Registro Nº - <?=$registro;?></p>
                                    <p class="text-muted no-margin text"><span>Último Registro</span></p>
                                </div>
                                <div class="panel-right panel-icon bg-reverse">
                                    <p class="size-h1 no-margin countdown_second"><?=$pon;?></p>
                                    <p class="text-muted no-margin text"><span>Tipo</span></p>
                                </div>
                                <div class="panel-right panel-icon bg-reverse">
                                    <p class="size-h1 no-margin countdown_second"><?=$usuarioss;?></p>
                                    <p class="text-muted no-margin text"><span>Usuario</span></p>
                                </div>
                            </section>
                        </div>


                <!-- ESTADISTICAS REGISTROS -->
                <hr>
                    <p class="lead center">ESTADISTICAS DE REGISTROS</p>


                        <?php foreach ($asistencias as $row){ $asistencia = $row->totalAs; } ?>
                        <div class="col-md-4 col-sm-6">
                            <section class="panel panel-box">
                                <div class="panel-left panel-icon bg-success">
                                    <i class="fa fa-users fa-3x text-large stat-icon success-text"></i>
                                </div>
                                <div class="panel-right panel-icon bg-reverse">
                                    <p class="size-h1 no-margin countdown_first"><?=$asistencia;?></p>
                                    <p class="text-muted no-margin text"><span>ASISTENCIA TOTAL</span></p>
                                </div>
                            </section>
                        </div>
                        <?php foreach ($ponentes as $row){ $ponentes = $row->total; } ?>
                        <div class="col-md-4 col-sm-6">
                            <section class="panel panel-box">
                                <div class="panel-left panel-icon bg-ponente">
                                    <i class="fa fa-users fa-3x text-large stat-icon ponente-text"></i>
                                </div>
                                <div class="panel-right panel-icon bg-reverse">
                                    <p class="size-h1 no-margin countdown_second"><?php $a = $ponentes * 100; $por = round($a / $asistencia,2); echo $ponentes.' - '.$por.'%';?></p>
                                    <p class="text-muted no-margin text"><span>PONENTES / %</span></p>
                                </div>
                            </section>
                        </div>
                           <?php foreach ($evaluadores as $row){ $evaluadores = $row->total; } ?>
                        <div class="col-md-4 col-sm-6">
                            <section class="panel panel-box">
                                <div class="panel-left panel-icon bg-evaluador">
                                    <i class="fa fa-users fa-3x text-large stat-icon evaluador-text"></i>
                                </div>
                                <div class="panel-right panel-icon bg-reverse">
                                    <p class="size-h1 no-margin countdown_third"><?php $a = $evaluadores * 100; $por = round($a / $asistencia,2); echo $evaluadores.' - '.$por.'%';?></p>
                                    <p class="text-muted no-margin text"><span>EVALUADORES / %</span></p>
                                </div>
                            </section>
                        </div>

                    </div>


   <div class="row dashboard-stats">

                        <?php foreach ($moderadores as $row){ $moderadores = $row->total; } ?>
                        <div class="col-md-4 col-sm-6">
                            <section class="panel panel-box">
                                <div class="panel-left panel-icon bg-moderador">
                                    <i class="fa fa-users fa-3x text-large stat-icon moderador-text"></i>
                                </div>
                                <div class="panel-right panel-icon bg-reverse">
                                    <p class="size-h1 no-margin countdown_fourth"><?php $a = $moderadores * 100; $por = round($a / $asistencia,2); echo $moderadores.' - '.$por.'%';?></p>
                                    <p class="text-muted no-margin text"><span>MODERADORES / %</span></p>
                                </div>
                            </section>
                        </div>
                      <?php foreach ($relatores as $row){ $relatores = $row->total; } ?>
                        <div class="col-md-4 col-sm-6">
                            <section class="panel panel-box">
                                <div class="panel-left panel-icon bg-relatores">
                                    <i class="fa fa-users fa-3x text-large stat-icon relatores-text"></i>
                                </div>
                                <div class="panel-right panel-icon bg-reverse">
                                    <p class="size-h1 no-margin countdown_first"><?php $a = $relatores * 100; $por = round($a / $asistencia,2); echo $relatores.' - '.$por.'%';?></p>
                                    <p class="text-muted no-margin text"><span>RELATORES / %</span></p>
                                </div>
                            </section>
                        </div>
                  <div class="row dashboard-stats">
                        <?php foreach ($logistico as $row){ $logistico = $row->total; } ?>
                        <div class="col-md-4 col-sm-6">
                            <section class="panel panel-box">
                                <div class="panel-left panel-icon bg-logistico">
                                    <i class="fa fa-users fa-3x text-large stat-icon logistico-text"></i>
                                </div>
                                <div class="panel-right panel-icon bg-reverse">
                                    <p class="size-h1 no-margin countdown_second"><?php $a = $logistico * 100; $por = round($a / $asistencia,2); echo $logistico.' - '.$por.'%';?></p>
                                    <p class="text-muted no-margin text"><span>APOYO / %</span></p>
                                </div>
                            </section>
                        </div>
                    </div>

                        <?php foreach ($asistentes as $row){ $asistentes = $row->total; } ?>
                        <div class="col-md-4 col-sm-6">
                            <section class="panel panel-box">
                                <div class="panel-left panel-icon bg-asistente">
                                    <i class="fa fa-users fa-3x text-large stat-icon asistente-text"></i>
                                </div>
                                <div class="panel-right panel-icon bg-reverse">
                                    <p class="size-h1 no-margin countdown_third"><?php $a = $asistentes * 100; $por = round($a / $asistencia,2); echo $asistentes.' - '.$por.'%';?></p>
                                    <p class="text-muted no-margin text"><span>ASISTENTES / %</span></p>
                                </div>
                            </section>
                        </div>


                      </div>

</div>


                <!-- ESTADISTICAS POR GENERO -->
                <hr>
                    <p class="lead center">ESTADISTICAS POR GENERO</p>

   <div class="row dashboard-stats">

                        <?php foreach ($hombres as $r){ $tot = $r->masculino; } ?>
                        <div class="col-md-4 col-sm-6">
                            <section class="panel panel-box">
                                <div class="panel-left panel-icon bg-info">
                                    <i class="fa fa-users fa-3x text-large stat-icon info-text"></i>
                                </div>
                                <div class="panel-right panel-icon bg-reverse">
                                    <p class="size-h1 no-margin countdown_third"><?php $a = $tot * 100; $por = round($a / $asistencia,2); echo $tot.' - '.$por.'%';?></p>
                                    <p class="text-muted no-margin text"><span>Usuarios Hombres / %</span></p>
                                </div>
                            </section>
                        </div>

                        <?php foreach ($mujeres as $r){ $tot = $r->mujeres; } ?>
                        <div class="col-md-4 col-sm-6">
                            <section class="panel panel-box">
                                <div class="panel-left panel-icon bg-info">
                                    <i class="fa fa-users fa-3x text-large stat-icon info-text"></i>
                                </div>
                                <div class="panel-right panel-icon bg-reverse">
                                    <p class="size-h1 no-margin countdown_third"><?php $a = $tot * 100; $por = round($a / $asistencia,2); echo $tot.' - '.$por.'%';?></p>
                                    <p class="text-muted no-margin text"><span>Usuarios Mujeres / %</span></p>
                                </div>
                            </section>
                        </div>


                      </div>


                <!-- ESTADISTICAS POR RANGO DE EDAD -->
                <hr>
                    <p class="lead center">ESTADISTICAS POR RANGO DE EDAD</p>

                <div class="row dashboard-stats">

                        <?php foreach ($uno as $r){ $tot = $r->uno; } ?>
                        <div class="col-md-4 col-sm-6">
                            <section class="panel panel-box">
                                <div class="panel-left panel-icon bg-info">
                                    <i class="fa fa-calendar fa-3x text-large stat-icon info-text"></i>
                                </div>
                                <div class="panel-right panel-icon bg-reverse">
                                    <p class="size-h1 no-margin countdown_third"><?php $a = $tot * 100; $por = round($a / $asistencia,2); echo $tot.' - '.$por.'%';?></p>
                                    <p class="text-muted no-margin text"><span>Edad 18 - 30 / %</span></p>
                                </div>
                            </section>
                        </div>

                        <?php foreach ($dos as $r){ $tot = $r->dos; } ?>
                        <div class="col-md-4 col-sm-6">
                            <section class="panel panel-box">
                                <div class="panel-left panel-icon bg-info">
                                    <i class="fa fa-calendar fa-3x text-large stat-icon info-text"></i>
                                </div>
                                <div class="panel-right panel-icon bg-reverse">
                                    <p class="size-h1 no-margin countdown_third"><?php $a = $tot * 100; $por = round($a / $asistencia,2); echo $tot.' - '.$por.'%';?></p>
                                    <p class="text-muted no-margin text"><span>Edad 31 - 50 / %</span></p>
                                </div>
                            </section>
                        </div>

                        <?php foreach ($tres as $r){ $tot = $r->tres; } ?>
                        <div class="col-md-4 col-sm-6">
                            <section class="panel panel-box">
                                <div class="panel-left panel-icon bg-info">
                                    <i class="fa fa-calendar fa-3x text-large stat-icon info-text"></i>
                                </div>
                                <div class="panel-right panel-icon bg-reverse">
                                    <p class="size-h1 no-margin countdown_third"><?php $a = $tot * 100; $por = round($a / $asistencia,2); echo $tot.' - '.$por.'%';?></p>
                                    <p class="text-muted no-margin text"><span>Edad 51 - 100 / %</span></p>
                                </div>
                            </section>
                        </div>

                </div>



                <!-- ESTADISTICAS POR NACIONALIDAD -->
                <hr>
                    <p class="lead center">ESTADISTICAS POR NACIONALIDAD</p>



                <div class="row dashboard-stats">

                        <?php foreach ($mexicanos as $r){ $tot = $r->mexicanos; } ?>
                        <div class="col-md-4 col-sm-6">
                            <section class="panel panel-box">
                                <div class="panel-left panel-icon bg-info">
                                    <i class="fa fa-map-o fa-3x text-large stat-icon info-text"></i>
                                </div>
                                <div class="panel-right panel-icon bg-reverse">
                                    <p class="size-h1 no-margin countdown_third"><?php $a = $tot * 100; $por = round($a / $asistencia,2); echo $tot.' - '.$por.'%';?></p>
                                    <p class="text-muted no-margin text"><span>Méxicanos / %</span></p>
                                </div>
                            </section>
                        </div>

                        <?php foreach ($extranjeros as $r){ $tot = $r->extranjeros; } ?>
                        <div class="col-md-4 col-sm-6">
                            <section class="panel panel-box">
                                <div class="panel-left panel-icon bg-info">
                                    <i class="fa fa-map-o fa-3x text-large stat-icon info-text"></i>
                                </div>
                                <div class="panel-right panel-icon bg-reverse">
                                    <p class="size-h1 no-margin countdown_third"><?php $a = $tot * 100; $por = round($a / $asistencia,2); echo $tot.' - '.$por.'%';?></p>
                                    <p class="text-muted no-margin text"><span>Extranjeros / %</span></p>
                                </div>
                            </section>
                        </div>

                </div>




                <!-- ESTADISTICAS POR ESTADOS Y MUNICIPIOS -->
                <hr>
                    <p class="lead center">ESTADISTICAS POR ESTADOS Y MUNICIPIOS</p>


                <div class="row dashboard-stats">

                        <?php foreach ($mich as $r){ $mich = $r->mich; } ?>
                        <div class="col-md-4 col-sm-6">
                            <section class="panel panel-box">
                                <div class="panel-left panel-icon bg-info">
                                    <i class="fa fa-map-o fa-3x text-large stat-icon info-text"></i>
                                </div>
                                <div class="panel-right panel-icon bg-reverse">
                                    <p class="size-h1 no-margin countdown_third"><?php $a = $mich * 100; $por = round($a / $asistencia,2); echo $mich.' - '.$por.'%';?></p>
                                    <p class="text-muted no-margin text"><span>Michoacán / %</span></p>
                                </div>
                            </section>
                        </div>

                        <?php foreach ($estados as $r){ $tot = $r->est; } ?>
                        <div class="col-md-4 col-sm-6">
                            <section class="panel panel-box">
                                <div class="panel-left panel-icon bg-info">
                                    <i class="fa fa-map-o fa-3x text-large stat-icon info-text"></i>
                                </div>
                                <div class="panel-right panel-icon bg-reverse">
                                    <p class="size-h1 no-margin countdown_third"><?php $a = $tot * 100; $por = round($a / $asistencia,2); echo $tot.' - '.$por.'%';?></p>
                                    <p class="text-muted no-margin text"><span>Otros Estados / %</span></p>
                                </div>
                            </section>
                        </div>
                        <?php foreach ($municipios as $r){ $tot = $r->mun; } ?>
                        <div class="col-md-4 col-sm-6">
                            <section class="panel panel-box">
                                <div class="panel-left panel-icon bg-info">
                                    <i class="fa fa-map-o fa-3x text-large stat-icon info-text"></i>
                                </div>
                                <div class="panel-right panel-icon bg-reverse">
                                    <p class="size-h1 no-margin countdown_third"><?php $b = $tot * 100; $por = round($b / $mich,2); echo $tot.' - '.$por.'%';?></p>
                                    <p class="text-muted no-margin text"><span>Morelia / %</span></p>
                                </div>
                            </section>
                        </div>

                </div>


                <!-- STADISTICAS POR INSTITUCIONES Y FACULTADES-->
                <hr>
                    <p class="lead center">ESTADISTICAS POR INSTITUCIONES Y FACULTADES</p>


                <div class="row dashboard-stats">

                        <?php foreach ($instituciones as $r){ $tot = $r->ins; } ?>
                        <div class="col-md-4 col-sm-6">
                            <section class="panel panel-box">
                                <div class="panel-left panel-icon bg-info">
                                    <i class="fa fa-university fa-3x text-large stat-icon info-text"></i>
                                </div>
                                <div class="panel-right panel-icon bg-reverse">
                                    <p class="size-h1 no-margin countdown_third"><?=$tot;?></p>
                                    <p class="text-muted no-margin text"><span>Instituciones</span></p>
                                </div>
                            </section>
                        </div>


                        <?php foreach ($facultades as $r){ $tot = $r->fac; } ?>
                        <div class="col-md-4 col-sm-6">
                            <section class="panel panel-box">
                                <div class="panel-left panel-icon bg-info">
                                    <i class="fa fa-university fa-3x text-large stat-icon info-text"></i>
                                </div>
                                <div class="panel-right panel-icon bg-reverse">
                                    <p class="size-h1 no-margin countdown_third"><?=$tot;?></p>
                                    <p class="text-muted no-margin text"><span>Facultades</span></p>
                                </div>
                            </section>
                        </div>

                        <?php foreach ($otros as $r){ $tot = $r->otros; } ?>
                        <div class="col-md-4 col-sm-6">
                            <section class="panel panel-box">
                                <div class="panel-left panel-icon bg-info">
                                    <i class="fa fa-university fa-3x text-large stat-icon info-text"></i>
                                </div>
                                <div class="panel-right panel-icon bg-reverse">
                                    <p class="size-h1 no-margin countdown_third"><?=$tot;?></p>
                                    <p class="text-muted no-margin text"><span>Otro</span></p>
                                </div>
                            </section>
                        </div>

                </div>



                <!-- ESTADISTICAS POR GRADO ACADEMICO -->
                <hr>
                    <p class="lead center">ESTADISTICAS POR GRADO ACADEMICO</p>


                <div class="row dashboard-stats">

                        <?php foreach ($licenciatura as $r){ $tot = $r->niv; } ?>
                        <div class="col-md-4 col-sm-6">
                            <section class="panel panel-box">
                                <div class="panel-left panel-icon bg-info">
                                    <i class="fa fa-university fa-3x text-large stat-icon info-text"></i>
                                </div>
                                <div class="panel-right panel-icon bg-reverse">
                                    <p class="size-h1 no-margin countdown_third"><?php $a = $tot * 100; $por = round($a / $asistencia,2); echo $tot.' - '.$por.'%';?></p>
                                    <p class="text-muted no-margin text"><span>Licenciatura | %</span></p>
                                </div>
                            </section>
                        </div>
                        <?php foreach ($maestria as $r){ $tot = $r->niv; } ?>
                        <div class="col-md-4 col-sm-6">
                            <section class="panel panel-box">
                                <div class="panel-left panel-icon bg-info">
                                    <i class="fa fa-university fa-3x text-large stat-icon info-text"></i>
                                </div>
                                <div class="panel-right panel-icon bg-reverse">
                                    <p class="size-h1 no-margin countdown_third"><?php $a = $tot * 100; $por = round($a / $asistencia,2); echo $tot.' - '.$por.'%';?></p>
                                    <p class="text-muted no-margin text"><span>Mestría | %</span></p>
                                </div>
                            </section>
                        </div>
                        <?php foreach ($doctorado as $r){ $tot = $r->niv; } ?>
                        <div class="col-md-4 col-sm-6">
                            <section class="panel panel-box">
                                <div class="panel-left panel-icon bg-info">
                                    <i class="fa fa-university fa-3x text-large stat-icon info-text"></i>
                                </div>
                                <div class="panel-right panel-icon bg-reverse">
                                    <p class="size-h1 no-margin countdown_third"><?php $a = $tot * 100; $por = round($a / $asistencia,2); echo $tot.' - '.$por.'%';?></p>
                                    <p class="text-muted no-margin text"><span>Doctorado | %</span></p>
                                </div>
                            </section>
                        </div>


                </div>



                <!-- ESTADISTICAS POR REGISTRO EN MESAS -->
                <hr>
                    <p class="lead center">ESTADISTICAS POR REGISTRO EN MESAS</p>


                <div class="row dashboard-stats">

                        <?php foreach ($mesas as $r){ $mesas = $r->total; } ?>
                        <div class="col-md-4 col-sm-6">
                            <section class="panel panel-box">
                                <div class="panel-left panel-icon bg-info">
                                    <i class="fa fa-university fa-3x text-large stat-icon info-text"></i>
                                </div>
                                <div class="panel-right panel-icon bg-reverse">
                                    <p class="size-h1 no-margin countdown_third"><?php $a = $tot * 100; $por = round($a / $ponentes,2); echo $mesas.' - '.$por.'%';?></p>
                                    <p class="text-muted no-margin text"><span>Registro Ponencias</span></p>
                                </div>
                            </section>
                        </div>

                        <?php foreach ($registrop as $r){ $pone = $r->hay; } ?>
                        <div class="col-md-4 col-sm-6">
                            <section class="panel panel-box">
                                <div class="panel-left panel-icon bg-info">
                                    <i class="fa fa-university fa-3x text-large stat-icon info-text"></i>
                                </div>
                                <div class="panel-right panel-icon bg-reverse">
                                    <p class="size-h1 no-margin countdown_third"><?php $faltan =  $ponentes - $pone; echo $faltan;?></p>
                                    <p class="text-muted no-margin text"><span>PONENTES SIN REGISTROS</span></p>
                                </div>
                            </section>
                        </div>

                        <?php foreach ($mesa1 as $r){ $tot = $r->total; } ?>
                        <div class="col-md-4 col-sm-6">
                            <section class="panel panel-box">
                                <div class="panel-left panel-icon bg-info">
                                    <i class="fa fa-university fa-3x text-large stat-icon info-text"></i>
                                </div>
                                <div class="panel-right panel-icon bg-reverse">
                                    <p class="size-h1 no-margin countdown_third"><?php $a = $tot * 100; $por = round($a / $mesas,2); echo $tot.' - '.$por.'%';?></p>
                                    <p class="text-muted no-margin text"><span>Mesa 1 | %</span></p>
                                </div>
                            </section>
                        </div>

            </div>


                <div class="row dashboard-stats">


                        <?php foreach ($mesa2 as $r){ $tot = $r->total; } ?>
                        <div class="col-md-4 col-sm-6">
                            <section class="panel panel-box">
                                <div class="panel-left panel-icon bg-info">
                                    <i class="fa fa-university fa-3x text-large stat-icon info-text"></i>
                                </div>
                                <div class="panel-right panel-icon bg-reverse">
                                    <p class="size-h1 no-margin countdown_third"><?php $a = $tot * 100; $por = round($a / $mesas,2); echo $tot.' - '.$por.'%';?></p>
                                    <p class="text-muted no-margin text"><span>Mesa 2 | %</span></p>
                                </div>
                            </section>
                        </div>
                        <?php foreach ($mesa3 as $r){ $tot = $r->total; } ?>
                        <div class="col-md-4 col-sm-6">
                            <section class="panel panel-box">
                                <div class="panel-left panel-icon bg-info">
                                    <i class="fa fa-university fa-3x text-large stat-icon info-text"></i>
                                </div>
                                <div class="panel-right panel-icon bg-reverse">
                                    <p class="size-h1 no-margin countdown_third"><?php $a = $tot * 100; $por = round($a / $mesas,2); echo $tot.' - '.$por.'%';?></p>
                                    <p class="text-muted no-margin text"><span>Mesa 3 | %</span></p>
                                </div>
                            </section>
                        </div>

                        <?php foreach ($mesa4 as $r){ $tot = $r->total; } ?>
                        <div class="col-md-4 col-sm-6">
                            <section class="panel panel-box">
                                <div class="panel-left panel-icon bg-info">
                                    <i class="fa fa-university fa-3x text-large stat-icon info-text"></i>
                                </div>
                                <div class="panel-right panel-icon bg-reverse">
                                    <p class="size-h1 no-margin countdown_third"><?php $a = $tot * 100; $por = round($a / $mesas,2); echo $tot.' - '.$por.'%';?></p>
                                    <p class="text-muted no-margin text"><span>Mesa 4 | %</span></p>
                                </div>
                            </section>
                        </div>

                </div>

                <div class="row dashboard-stats">

                        <?php foreach ($mesa5 as $r){ $tot = $r->total; } ?>
                        <div class="col-md-4 col-sm-6">
                            <section class="panel panel-box">
                                <div class="panel-left panel-icon bg-info">
                                    <i class="fa fa-university fa-3x text-large stat-icon info-text"></i>
                                </div>
                                <div class="panel-right panel-icon bg-reverse">
                                    <p class="size-h1 no-margin countdown_third"><?php $a = $tot * 100; $por = round($a / $mesas,2); echo $tot.' - '.$por.'%';?></p>
                                    <p class="text-muted no-margin text"><span>Mesa 5 | %</span></p>
                                </div>
                            </section>
                        </div>
                        <?php foreach ($mesa6 as $r){ $tot = $r->total; } ?>
                        <div class="col-md-4 col-sm-6">
                            <section class="panel panel-box">
                                <div class="panel-left panel-icon bg-info">
                                    <i class="fa fa-university fa-3x text-large stat-icon info-text"></i>
                                </div>
                                <div class="panel-right panel-icon bg-reverse">
                                    <p class="size-h1 no-margin countdown_third"><?php $a = $tot * 100; $por = round($a / $mesas,2); echo $tot.' - '.$por.'%';?></p>
                                    <p class="text-muted no-margin text"><span>Mesa 6 | %</span></p>
                                </div>
                            </section>
                        </div>

                        <?php foreach ($mesa7 as $r){ $tot = $r->total; } ?>
                        <div class="col-md-4 col-sm-6">
                            <section class="panel panel-box">
                                <div class="panel-left panel-icon bg-info">
                                    <i class="fa fa-university fa-3x text-large stat-icon info-text"></i>
                                </div>
                                <div class="panel-right panel-icon bg-reverse">
                                    <p class="size-h1 no-margin countdown_third"><?php $a = $tot * 100; $por = round($a / $mesas,2); echo $tot.' - '.$por.'%';?></p>
                                    <p class="text-muted no-margin text"><span>Mesa 7 | %</span></p>
                                </div>
                            </section>
                        </div>

                </div>

                <div class="row dashboard-stats">


                        <?php foreach ($mesa8 as $r){ $tot = $r->total; } ?>
                        <div class="col-md-4 col-sm-6">
                            <section class="panel panel-box">
                                <div class="panel-left panel-icon bg-info">
                                    <i class="fa fa-university fa-3x text-large stat-icon info-text"></i>
                                </div>
                                <div class="panel-right panel-icon bg-reverse">
                                    <p class="size-h1 no-margin countdown_third"><?php $a = $tot * 100; $por = round($a / $mesas,2); echo $tot.' - '.$por.'%';?></p>
                                    <p class="text-muted no-margin text"><span>Mesa 8 | %</span></p>
                                </div>
                            </section>
                        </div>
                        <?php foreach ($mesa9 as $r){ $tot = $r->total; } ?>
                        <div class="col-md-4 col-sm-6">
                            <section class="panel panel-box">
                                <div class="panel-left panel-icon bg-info">
                                    <i class="fa fa-university fa-3x text-large stat-icon info-text"></i>
                                </div>
                                <div class="panel-right panel-icon bg-reverse">
                                    <p class="size-h1 no-margin countdown_third"><?php $a = $tot * 100; $por = round($a / $mesas,2); echo $tot.' - '.$por.'%';?></p>
                                    <p class="text-muted no-margin text"><span>Mesa 9 | %</span></p>
                                </div>
                            </section>
                        </div>

                        <?php foreach ($mesa10 as $r){ $tot = $r->total; } ?>
                        <div class="col-md-4 col-sm-6">
                            <section class="panel panel-box">
                                <div class="panel-left panel-icon bg-info">
                                    <i class="fa fa-university fa-3x text-large stat-icon info-text"></i>
                                </div>
                                <div class="panel-right panel-icon bg-reverse">
                                    <p class="size-h1 no-margin countdown_third"><?php $a = $tot * 100; $por = round($a / $mesas,2); echo $tot.' - '.$por.'%';?></p>
                                    <p class="text-muted no-margin text"><span>Mesa 10 | %</span></p>
                                </div>
                            </section>
                        </div>

                </div>





                <!-- ESTADISTICAS USUARIOS EVALUADORES -->
                <hr>
                    <p class="lead center">PONENCIAS Y EVALUACIONES</p>
                <div class="row dashboard-stats">

                        <?php foreach ($eva as $r){ $toteva = $r->total; } ?>
                        <div class="col-md-4 col-sm-6">
                            <section class="panel panel-box">
                                <div class="panel-left panel-icon bg-info">
                                    <i class="fa fa-university fa-3x text-large stat-icon info-text"></i>
                                </div>
                                <div class="panel-right panel-icon bg-reverse">
                                    <p class="size-h1 no-margin countdown_third"><?php echo $toteva;?></p>
                                    <p class="text-muted no-margin text"><span>Evaluadores</span></p>
                                </div>
                            </section>
                        </div>
                        <?php foreach ($evaluados as $r){ $toteval = $r->hay; } ?>
                        <div class="col-md-4 col-sm-6">
                            <section class="panel panel-box">
                                <div class="panel-left panel-icon bg-info">
                                    <i class="fa fa-university fa-3x text-large stat-icon info-text"></i>
                                </div>
                                <div class="panel-right panel-icon bg-reverse">
                                    <p class="size-h1 no-margin countdown_third"><?php echo $toteval;?></p>
                                    <p class="text-muted no-margin text"><span>Ponencias Evaluadas</span></p>
                                </div>
                            </section>
                        </div>
                        <?php foreach ($noevaluados as $r){ $totevalu = $r->hay; } ?>
                        <div class="col-md-4 col-sm-6">
                            <section class="panel panel-box">
                                <div class="panel-left panel-icon bg-info">
                                    <i class="fa fa-university fa-3x text-large stat-icon info-text"></i>
                                </div>
                                <div class="panel-right panel-icon bg-reverse">
                                    <p class="size-h1 no-margin countdown_third"><?php echo $totevalu;?></p>
                                     <p class="text-muted no-margin text"><span>Ponencias No Evaluadas</span></p>
                                </div>
                            </section>
                        </div>


                </div>

                <div class="row dashboard-stats">
                    <p class="lead center">PONENCIAS MESA 1</p>
                        <?php foreach ($evaluadores1 as $r){ $evalm1 = $r->mesa1; } ?>
                        <div class="col-md-3 col-sm-4">
                            <section class="panel panel-box">
                                <div class="panel-left panel-icon bg-info">
                                    <i class="fa fa-university fa-3x text-large stat-icon info-text"></i>
                                </div>
                                <div class="panel-right panel-icon bg-reverse">
                                    <p class="size-h1 no-margin countdown_third"><?php echo $evalm1;?></p>
                                    <p class="text-muted no-margin text" ><span>Evaluadores</span></p>
                                </div>
                            </section>
                        </div>
                        <?php foreach ($porevaluar1 as $r){ $tot = $r->totevaluar; } ?>
                        <div class="col-md-3 col-sm-4">
                            <section class="panel panel-box">
                                <div class="panel-left panel-icon bg-info">
                                    <i class="fa fa-university fa-3x text-large stat-icon info-text"></i>
                                </div>
                                <div class="panel-right panel-icon bg-reverse">
                                    <p class="size-h1 no-margin countdown_third"><?php echo $tot;?></p>
                                    <p class="text-muted no-margin text" ><span>No Evaluados</span></p>
                                </div>
                            </section>
                        </div>
                        <?php foreach ($evaluados1 as $r){ $toteva1 = $r->total; } ?>
                        <div class="col-md-3 col-sm-4">
                            <section class="panel panel-box">
                                <div class="panel-left panel-icon bg-info">
                                    <i class="fa fa-university fa-3x text-large stat-icon info-text"></i>
                                </div>
                                <div class="panel-right panel-icon bg-reverse">
                                    <p class="size-h1 no-margin countdown_third"><?php echo $toteva1?></p>
                                    <p class="text-muted no-margin text" ><span>Aprobados</span></p>
                                </div>
                            </section>
                        </div>
                        <?php foreach ($noevaluados1 as $r){ $totnoeva1 = $r->total; } ?>
                        <div class="col-md-3 col-sm-4">
                            <section class="panel panel-box">
                                <div class="panel-left panel-icon bg-info">
                                    <i class="fa fa-university fa-3x text-large stat-icon info-text"></i>
                                </div>
                                <div class="panel-right panel-icon bg-reverse">
                                    <p class="size-h1 no-margin countdown_third"><?php echo $totnoeva1;?></p>
                                     <p class="text-muted no-margin text" ><span>No Aprobados</span></p>
                                </div>
                            </section>
                        </div>

                </div>


                <div class="row dashboard-stats">
                    <p class="lead center">PONENCIAS MESA 2</p>
                        <?php foreach ($evaluadores2 as $r){ $evalm2 = $r->eva2; } ?>
                        <div class="col-md-3 col-sm-4">
                            <section class="panel panel-box">
                                <div class="panel-left panel-icon bg-info">
                                    <i class="fa fa-university fa-3x text-large stat-icon info-text"></i>
                                </div>
                                <div class="panel-right panel-icon bg-reverse">
                                    <p class="size-h1 no-margin countdown_third"><?php echo $evalm2;?></p>
                                    <p class="text-muted no-margin text" ><span>Evaluadores</span></p>
                                </div>
                            </section>
                        </div>
                        <?php foreach ($porevaluar2 as $r){ $tot = $r->totevaluar; } ?>
                        <div class="col-md-3 col-sm-4">
                            <section class="panel panel-box">
                                <div class="panel-left panel-icon bg-info">
                                    <i class="fa fa-university fa-3x text-large stat-icon info-text"></i>
                                </div>
                                <div class="panel-right panel-icon bg-reverse">
                                    <p class="size-h1 no-margin countdown_third"><?php echo $tot;?></p>
                                    <p class="text-muted no-margin text" ><span>No Evaluados</span></p>
                                </div>
                            </section>
                        </div>
                        <?php foreach ($evaluados2 as $r){ $toteva2 = $r->total; } ?>
                        <div class="col-md-3 col-sm-4">
                            <section class="panel panel-box">
                                <div class="panel-left panel-icon bg-info">
                                    <i class="fa fa-university fa-3x text-large stat-icon info-text"></i>
                                </div>
                                <div class="panel-right panel-icon bg-reverse">
                                    <p class="size-h1 no-margin countdown_third"><?php echo $toteva2?></p>
                                    <p class="text-muted no-margin text" ><span>Aprobados</span></p>
                                </div>
                            </section>
                        </div>
                        <?php foreach ($noevaluados2 as $r){ $totnoeva2 = $r->total; } ?>
                        <div class="col-md-3 col-sm-4">
                            <section class="panel panel-box">
                                <div class="panel-left panel-icon bg-info">
                                    <i class="fa fa-university fa-3x text-large stat-icon info-text"></i>
                                </div>
                                <div class="panel-right panel-icon bg-reverse">
                                    <p class="size-h1 no-margin countdown_third"><?php echo $totnoeva2;?></p>
                                     <p class="text-muted no-margin text" ><span>No Aprobados</span></p>
                                </div>
                            </section>
                        </div>

                </div>



                <div class="row dashboard-stats">
                    <p class="lead center">PONENCIAS MESA 3</p>
                        <?php foreach ($evaluadores3 as $r){ $evalm3 = $r->eva3; } ?>
                        <div class="col-md-3 col-sm-4">
                            <section class="panel panel-box">
                                <div class="panel-left panel-icon bg-info">
                                    <i class="fa fa-university fa-3x text-large stat-icon info-text"></i>
                                </div>
                                <div class="panel-right panel-icon bg-reverse">
                                    <p class="size-h1 no-margin countdown_third"><?php echo $evalm3;?></p>
                                    <p class="text-muted no-margin text" ><span>Evaluadores</span></p>
                                </div>
                            </section>
                        </div>
                        <?php foreach ($porevaluar3 as $r){ $tot = $r->totevaluar; } ?>
                        <div class="col-md-3 col-sm-4">
                            <section class="panel panel-box">
                                <div class="panel-left panel-icon bg-info">
                                    <i class="fa fa-university fa-3x text-large stat-icon info-text"></i>
                                </div>
                                <div class="panel-right panel-icon bg-reverse">
                                    <p class="size-h1 no-margin countdown_third"><?php echo $tot;?></p>
                                    <p class="text-muted no-margin text" ><span>No Evaluados</span></p>
                                </div>
                            </section>
                        </div>
                        <?php foreach ($evaluados3 as $r){ $toteva3 = $r->total; } ?>
                        <div class="col-md-3 col-sm-4">
                            <section class="panel panel-box">
                                <div class="panel-left panel-icon bg-info">
                                    <i class="fa fa-university fa-3x text-large stat-icon info-text"></i>
                                </div>
                                <div class="panel-right panel-icon bg-reverse">
                                    <p class="size-h1 no-margin countdown_third"><?php echo $toteva3?></p>
                                    <p class="text-muted no-margin text" ><span>Aprobados</span></p>
                                </div>
                            </section>
                        </div>
                        <?php foreach ($noevaluados3 as $r){ $totnoeva3 = $r->total; } ?>
                        <div class="col-md-3 col-sm-4">
                            <section class="panel panel-box">
                                <div class="panel-left panel-icon bg-info">
                                    <i class="fa fa-university fa-3x text-large stat-icon info-text"></i>
                                </div>
                                <div class="panel-right panel-icon bg-reverse">
                                    <p class="size-h1 no-margin countdown_third"><?php echo $totnoeva3;?></p>
                                     <p class="text-muted no-margin text" ><span>No Aprobados</span></p>
                                </div>
                            </section>
                        </div>

                </div>

                <div class="row dashboard-stats">
                    <p class="lead center">PONENCIAS MESA 4</p>
                        <?php foreach ($evaluadores4 as $r){ $evalm4 = $r->eva4; } ?>
                        <div class="col-md-3 col-sm-4">
                            <section class="panel panel-box">
                                <div class="panel-left panel-icon bg-info">
                                    <i class="fa fa-university fa-3x text-large stat-icon info-text"></i>
                                </div>
                                <div class="panel-right panel-icon bg-reverse">
                                    <p class="size-h1 no-margin countdown_third"><?php echo $evalm4;?></p>
                                    <p class="text-muted no-margin text" ><span>Evaluadores</span></p>
                                </div>
                            </section>
                        </div>
                        <?php foreach ($porevaluar4 as $r){ $tot = $r->totevaluar; } ?>
                        <div class="col-md-3 col-sm-4">
                            <section class="panel panel-box">
                                <div class="panel-left panel-icon bg-info">
                                    <i class="fa fa-university fa-3x text-large stat-icon info-text"></i>
                                </div>
                                <div class="panel-right panel-icon bg-reverse">
                                    <p class="size-h1 no-margin countdown_third"><?php echo $tot;?></p>
                                    <p class="text-muted no-margin text" ><span>No Evaluados</span></p>
                                </div>
                            </section>
                        </div>
                        <?php foreach ($evaluados4 as $r){ $toteva4 = $r->total; } ?>
                        <div class="col-md-3 col-sm-4">
                            <section class="panel panel-box">
                                <div class="panel-left panel-icon bg-info">
                                    <i class="fa fa-university fa-3x text-large stat-icon info-text"></i>
                                </div>
                                <div class="panel-right panel-icon bg-reverse">
                                    <p class="size-h1 no-margin countdown_third"><?php echo $toteva4?></p>
                                    <p class="text-muted no-margin text" ><span>Aprobados</span></p>
                                </div>
                            </section>
                        </div>
                        <?php foreach ($noevaluados4 as $r){ $totnoeva4 = $r->total; } ?>
                        <div class="col-md-3 col-sm-4">
                            <section class="panel panel-box">
                                <div class="panel-left panel-icon bg-info">
                                    <i class="fa fa-university fa-3x text-large stat-icon info-text"></i>
                                </div>
                                <div class="panel-right panel-icon bg-reverse">
                                    <p class="size-h1 no-margin countdown_third"><?php echo $totnoeva4;?></p>
                                     <p class="text-muted no-margin text" ><span>No Aprobados</span></p>
                                </div>
                            </section>
                        </div>

                </div>



                <div class="row dashboard-stats">
                    <p class="lead center">PONENCIAS MESA 5</p>
                        <?php foreach ($evaluadores5 as $r){ $evalm5 = $r->eva5; } ?>
                        <div class="col-md-3 col-sm-4">
                            <section class="panel panel-box">
                                <div class="panel-left panel-icon bg-info">
                                    <i class="fa fa-university fa-3x text-large stat-icon info-text"></i>
                                </div>
                                <div class="panel-right panel-icon bg-reverse">
                                    <p class="size-h1 no-margin countdown_third"><?php echo $evalm5;?></p>
                                    <p class="text-muted no-margin text" ><span>Evaluadores</span></p>
                                </div>
                            </section>
                        </div>
                        <?php foreach ($porevaluar5 as $r){ $tot = $r->totevaluar; } ?>
                        <div class="col-md-3 col-sm-4">
                            <section class="panel panel-box">
                                <div class="panel-left panel-icon bg-info">
                                    <i class="fa fa-university fa-3x text-large stat-icon info-text"></i>
                                </div>
                                <div class="panel-right panel-icon bg-reverse">
                                    <p class="size-h1 no-margin countdown_third"><?php echo $tot;?></p>
                                    <p class="text-muted no-margin text" ><span>No Evaluados</span></p>
                                </div>
                            </section>
                        </div>
                        <?php foreach ($evaluados5 as $r){ $toteva5 = $r->total; } ?>
                        <div class="col-md-3 col-sm-4">
                            <section class="panel panel-box">
                                <div class="panel-left panel-icon bg-info">
                                    <i class="fa fa-university fa-3x text-large stat-icon info-text"></i>
                                </div>
                                <div class="panel-right panel-icon bg-reverse">
                                    <p class="size-h1 no-margin countdown_third"><?php echo $toteva5?></p>
                                    <p class="text-muted no-margin text" ><span>Aprobados</span></p>
                                </div>
                            </section>
                        </div>
                        <?php foreach ($noevaluados5 as $r){ $totnoeva5 = $r->total; } ?>
                        <div class="col-md-3 col-sm-4">
                            <section class="panel panel-box">
                                <div class="panel-left panel-icon bg-info">
                                    <i class="fa fa-university fa-3x text-large stat-icon info-text"></i>
                                </div>
                                <div class="panel-right panel-icon bg-reverse">
                                    <p class="size-h1 no-margin countdown_third"><?php echo $totnoeva5;?></p>
                                     <p class="text-muted no-margin text" ><span>No Aprobados</span></p>
                                </div>
                            </section>
                        </div>

                </div>


                <div class="row dashboard-stats">
                    <p class="lead center">PONENCIAS MESA 6</p>
                        <?php foreach ($evaluadores6 as $r){ $evalm6 = $r->eva6; } ?>
                        <div class="col-md-3 col-sm-4">
                            <section class="panel panel-box">
                                <div class="panel-left panel-icon bg-info">
                                    <i class="fa fa-university fa-3x text-large stat-icon info-text"></i>
                                </div>
                                <div class="panel-right panel-icon bg-reverse">
                                    <p class="size-h1 no-margin countdown_third"><?php echo $evalm6;?></p>
                                    <p class="text-muted no-margin text" ><span>Evaluadores</span></p>
                                </div>
                            </section>
                        </div>
                        <?php foreach ($porevaluar6 as $r){ $tot = $r->totevaluar; } ?>
                        <div class="col-md-3 col-sm-4">
                            <section class="panel panel-box">
                                <div class="panel-left panel-icon bg-info">
                                    <i class="fa fa-university fa-3x text-large stat-icon info-text"></i>
                                </div>
                                <div class="panel-right panel-icon bg-reverse">
                                    <p class="size-h1 no-margin countdown_third"><?php echo $tot;?></p>
                                    <p class="text-muted no-margin text" ><span>No Evaluados</span></p>
                                </div>
                            </section>
                        </div>
                        <?php foreach ($evaluados6 as $r){ $toteva6 = $r->total; } ?>
                        <div class="col-md-3 col-sm-4">
                            <section class="panel panel-box">
                                <div class="panel-left panel-icon bg-info">
                                    <i class="fa fa-university fa-3x text-large stat-icon info-text"></i>
                                </div>
                                <div class="panel-right panel-icon bg-reverse">
                                    <p class="size-h1 no-margin countdown_third"><?php echo $toteva6;?></p>
                                    <p class="text-muted no-margin text" ><span>Aprobados</span></p>
                                </div>
                            </section>
                        </div>
                        <?php foreach ($noevaluados6 as $r){ $totnoeva6 = $r->total; } ?>
                        <div class="col-md-3 col-sm-4">
                            <section class="panel panel-box">
                                <div class="panel-left panel-icon bg-info">
                                    <i class="fa fa-university fa-3x text-large stat-icon info-text"></i>
                                </div>
                                <div class="panel-right panel-icon bg-reverse">
                                    <p class="size-h1 no-margin countdown_third"><?php echo $totnoeva6;?></p>
                                     <p class="text-muted no-margin text" ><span>No Aprobados</span></p>
                                </div>
                            </section>
                        </div>

                </div>

                <div class="row dashboard-stats">
                    <p class="lead center">PONENCIAS MESA 7</p>
                        <?php foreach ($evaluadores7 as $r){ $evalm7 = $r->eva7; } ?>
                        <div class="col-md-3 col-sm-4">
                            <section class="panel panel-box">
                                <div class="panel-left panel-icon bg-info">
                                    <i class="fa fa-university fa-3x text-large stat-icon info-text"></i>
                                </div>
                                <div class="panel-right panel-icon bg-reverse">
                                    <p class="size-h1 no-margin countdown_third"><?php echo $evalm7;?></p>
                                    <p class="text-muted no-margin text" ><span>Evaluadores</span></p>
                                </div>
                            </section>
                        </div>
                        <?php foreach ($porevaluar7 as $r){ $tot = $r->totevaluar; } ?>
                        <div class="col-md-3 col-sm-4">
                            <section class="panel panel-box">
                                <div class="panel-left panel-icon bg-info">
                                    <i class="fa fa-university fa-3x text-large stat-icon info-text"></i>
                                </div>
                                <div class="panel-right panel-icon bg-reverse">
                                    <p class="size-h1 no-margin countdown_third"><?php echo $tot;?></p>
                                    <p class="text-muted no-margin text" ><span>No Evaluados</span></p>
                                </div>
                            </section>
                        </div>
                        <?php foreach ($evaluados7 as $r){ $toteva7 = $r->total; } ?>
                        <div class="col-md-3 col-sm-4">
                            <section class="panel panel-box">
                                <div class="panel-left panel-icon bg-info">
                                    <i class="fa fa-university fa-3x text-large stat-icon info-text"></i>
                                </div>
                                <div class="panel-right panel-icon bg-reverse">
                                    <p class="size-h1 no-margin countdown_third"><?php echo $toteva7;?></p>
                                    <p class="text-muted no-margin text" ><span>Aprobados</span></p>
                                </div>
                            </section>
                        </div>
                        <?php foreach ($noevaluados7 as $r){ $totnoeva7 = $r->total; } ?>
                        <div class="col-md-3 col-sm-4">
                            <section class="panel panel-box">
                                <div class="panel-left panel-icon bg-info">
                                    <i class="fa fa-university fa-3x text-large stat-icon info-text"></i>
                                </div>
                                <div class="panel-right panel-icon bg-reverse">
                                    <p class="size-h1 no-margin countdown_third"><?php echo $totnoeva7;?></p>
                                     <p class="text-muted no-margin text" ><span>No Aprobados</span></p>
                                </div>
                            </section>
                        </div>

                </div>



                <div class="row dashboard-stats">
                    <p class="lead center">PONENCIAS MESA 8</p>
                        <?php foreach ($evaluadores8 as $r){ $evalm8 = $r->eva8; } ?>
                        <div class="col-md-3 col-sm-4">
                            <section class="panel panel-box">
                                <div class="panel-left panel-icon bg-info">
                                    <i class="fa fa-university fa-3x text-large stat-icon info-text"></i>
                                </div>
                                <div class="panel-right panel-icon bg-reverse">
                                    <p class="size-h1 no-margin countdown_third"><?php echo $evalm8;?></p>
                                    <p class="text-muted no-margin text" ><span>Evaluadores</span></p>
                                </div>
                            </section>
                        </div>
                       <?php foreach ($porevaluar8 as $r){ $tot = $r->totevaluar; } ?>
                        <div class="col-md-3 col-sm-4">
                            <section class="panel panel-box">
                                <div class="panel-left panel-icon bg-info">
                                    <i class="fa fa-university fa-3x text-large stat-icon info-text"></i>
                                </div>
                                <div class="panel-right panel-icon bg-reverse">
                                    <p class="size-h1 no-margin countdown_third"><?php echo $tot;?></p>
                                    <p class="text-muted no-margin text" ><span>No Evaluados</span></p>
                                </div>
                            </section>
                        </div>
                        <?php foreach ($evaluados8 as $r){ $toteva8 = $r->total; } ?>
                        <div class="col-md-3 col-sm-4">
                            <section class="panel panel-box">
                                <div class="panel-left panel-icon bg-info">
                                    <i class="fa fa-university fa-3x text-large stat-icon info-text"></i>
                                </div>
                                <div class="panel-right panel-icon bg-reverse">
                                    <p class="size-h1 no-margin countdown_third"><?php echo $toteva8;?></p>
                                    <p class="text-muted no-margin text" ><span>Aprobados</span></p>
                                </div>
                            </section>
                        </div>
                        <?php foreach ($noevaluados8 as $r){ $totnoeva8 = $r->total; } ?>
                        <div class="col-md-3 col-sm-4">
                            <section class="panel panel-box">
                                <div class="panel-left panel-icon bg-info">
                                    <i class="fa fa-university fa-3x text-large stat-icon info-text"></i>
                                </div>
                                <div class="panel-right panel-icon bg-reverse">
                                    <p class="size-h1 no-margin countdown_third"><?php echo $totnoeva8;?></p>
                                     <p class="text-muted no-margin text" ><span>No Aprobados</span></p>
                                </div>
                            </section>
                        </div>

                </div>



                <div class="row dashboard-stats">
                    <p class="lead center">PONENCIAS MESA 9</p>
                        <?php foreach ($evaluadores9 as $r){ $evalm9 = $r->eva9; } ?>
                        <div class="col-md-3 col-sm-4">
                            <section class="panel panel-box">
                                <div class="panel-left panel-icon bg-info">
                                    <i class="fa fa-university fa-3x text-large stat-icon info-text"></i>
                                </div>
                                <div class="panel-right panel-icon bg-reverse">
                                    <p class="size-h1 no-margin countdown_third"><?php echo $evalm9;?></p>
                                    <p class="text-muted no-margin text" ><span>Evaluadores</span></p>
                                </div>
                            </section>
                        </div>
                        <?php foreach ($porevaluar9 as $r){ $tot = $r->totevaluar; } ?>
                        <div class="col-md-3 col-sm-4">
                            <section class="panel panel-box">
                                <div class="panel-left panel-icon bg-info">
                                    <i class="fa fa-university fa-3x text-large stat-icon info-text"></i>
                                </div>
                                <div class="panel-right panel-icon bg-reverse">
                                    <p class="size-h1 no-margin countdown_third"><?php echo $tot;?></p>
                                    <p class="text-muted no-margin text" ><span>No Evaluados</span></p>
                                </div>
                            </section>
                        </div>
                        <?php foreach ($evaluados9 as $r){ $toteva9 = $r->total; } ?>
                        <div class="col-md-3 col-sm-4">
                            <section class="panel panel-box">
                                <div class="panel-left panel-icon bg-info">
                                    <i class="fa fa-university fa-3x text-large stat-icon info-text"></i>
                                </div>
                                <div class="panel-right panel-icon bg-reverse">
                                    <p class="size-h1 no-margin countdown_third"><?php echo $toteva9;?></p>
                                    <p class="text-muted no-margin text" ><span>Aprobados</span></p>
                                </div>
                            </section>
                        </div>
                        <?php foreach ($noevaluados9 as $r){ $totnoeva9 = $r->total; } ?>
                        <div class="col-md-3 col-sm-4">
                            <section class="panel panel-box">
                                <div class="panel-left panel-icon bg-info">
                                    <i class="fa fa-university fa-3x text-large stat-icon info-text"></i>
                                </div>
                                <div class="panel-right panel-icon bg-reverse">
                                    <p class="size-h1 no-margin countdown_third"><?php echo $totnoeva9;?></p>
                                     <p class="text-muted no-margin text" ><span>No Aprobados</span></p>
                                </div>
                            </section>
                        </div>

                </div>


                <div class="row dashboard-stats">
                    <p class="lead center">PONENCIAS MESA 10</p>
                        <?php foreach ($evaluadores10 as $r){ $evalm10 = $r->eva10; } ?>
                        <div class="col-md-3 col-sm-4">
                            <section class="panel panel-box">
                                <div class="panel-left panel-icon bg-info">
                                    <i class="fa fa-university fa-3x text-large stat-icon info-text"></i>
                                </div>
                                <div class="panel-right panel-icon bg-reverse">
                                    <p class="size-h1 no-margin countdown_third"><?php echo $evalm10;?></p>
                                    <p class="text-muted no-margin text" ><span>Evaluadores</span></p>
                                </div>
                            </section>
                        </div>
                        <?php foreach ($porevaluar10 as $r){ $tot = $r->totevaluar; } ?>
                        <div class="col-md-3 col-sm-4">
                            <section class="panel panel-box">
                                <div class="panel-left panel-icon bg-info">
                                    <i class="fa fa-university fa-3x text-large stat-icon info-text"></i>
                                </div>
                                <div class="panel-right panel-icon bg-reverse">
                                    <p class="size-h1 no-margin countdown_third"><?php echo $tot;?></p>
                                    <p class="text-muted no-margin text" ><span>No Evaluados</span></p>
                                </div>
                            </section>
                        </div>
                        <?php foreach ($evaluados10 as $r){ $toteva10 = $r->total; } ?>
                        <div class="col-md-3 col-sm-4">
                            <section class="panel panel-box">
                                <div class="panel-left panel-icon bg-info">
                                    <i class="fa fa-university fa-3x text-large stat-icon info-text"></i>
                                </div>
                                <div class="panel-right panel-icon bg-reverse">
                                    <p class="size-h1 no-margin countdown_third"><?php echo $toteva10;?></p>
                                    <p class="text-muted no-margin text" ><span>Aprobados</span></p>
                                </div>
                            </section>
                        </div>
                        <?php foreach ($noevaluados10 as $r){ $totnoeva10 = $r->total; } ?>
                        <div class="col-md-3 col-sm-4">
                            <section class="panel panel-box">
                                <div class="panel-left panel-icon bg-info">
                                    <i class="fa fa-university fa-3x text-large stat-icon info-text"></i>
                                </div>
                                <div class="panel-right panel-icon bg-reverse">
                                    <p class="size-h1 no-margin countdown_third"><?php echo $totnoeva10;?></p>
                                     <p class="text-muted no-margin text" ><span>No Aprobados</span></p>
                                </div>
                            </section>
                        </div>

                </div>



</div>


</div>
</div>
</div>
</section>
