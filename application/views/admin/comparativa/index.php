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


<div class="gap"></div>

                    <p class="lead center">ESTADISTICAS DE CONGRESOS (Comparativas)</p>

                <!-- ESTADISTICAS EN TIEMPO REAL REGISTROS -->
                <hr>
   <div class="row dashboard-stats">

                   <p class="lead center">ASISTENTES</p>


                        <div class="col-md-4 col-sm-6">
                            <section class="panel panel-box">
                                <div class="panel-left panel-icon bg-success">
                                    <i class="fa fa-users fa-3x text-large stat-icon success-text"></i>
                                </div>
                                <div class="panel-right panel-icon bg-reverse">
                                    <p class="size-h1 no-margin countdown_first">1493</p>
                                    <p class="text-muted no-margin text"><span>CECTI IX</span></p>
                                </div>
                            </section>
                        </div>
                        
                        <div class="col-md-4 col-sm-6">
                            <section class="panel panel-box">
                                <div class="panel-left panel-icon bg-ponente">
                                    <i class="fa fa-users fa-3x text-large stat-icon ponente-text"></i>
                                </div>
                                <div class="panel-right panel-icon bg-reverse">
                                    <p class="size-h1 no-margin countdown_second">845</p>
                                    <p class="text-muted no-margin text"><span>Hombres</span></p>
                                </div>
                            </section>
                        </div>
                           
                        <div class="col-md-4 col-sm-6">
                            <section class="panel panel-box">
                                <div class="panel-left panel-icon bg-evaluador">
                                    <i class="fa fa-users fa-3x text-large stat-icon evaluador-text"></i>
                                </div>
                                <div class="panel-right panel-icon bg-reverse">
                                    <p class="size-h1 no-margin countdown_third">648</p>
                                    <p class="text-muted no-margin text"><span>Mujeres</span></p>
                                </div>
                            </section>
                        </div>

                        <div class="col-md-4 col-sm-6">
                            <section class="panel panel-box">
                                <div class="panel-left panel-icon bg-success">
                                    <i class="fa fa-users fa-3x text-large stat-icon success-text"></i>
                                </div>
                                <div class="panel-right panel-icon bg-reverse">
                                    <p class="size-h1 no-margin countdown_first">1658</p>
                                    <p class="text-muted no-margin text"><span>CECTI X</span></p>
                                </div>
                            </section>
                        </div>
                        
                        <div class="col-md-4 col-sm-6">
                            <section class="panel panel-box">
                                <div class="panel-left panel-icon bg-ponente">
                                    <i class="fa fa-users fa-3x text-large stat-icon ponente-text"></i>
                                </div>
                                <div class="panel-right panel-icon bg-reverse">
                                    <p class="size-h1 no-margin countdown_second">959</p>
                                    <p class="text-muted no-margin text"><span>Hombres</span></p>
                                </div>
                            </section>
                        </div>
                           
                        <div class="col-md-4 col-sm-6">
                            <section class="panel panel-box">
                                <div class="panel-left panel-icon bg-evaluador">
                                    <i class="fa fa-users fa-3x text-large stat-icon evaluador-text"></i>
                                </div>
                                <div class="panel-right panel-icon bg-reverse">
                                    <p class="size-h1 no-margin countdown_third">699</p>
                                    <p class="text-muted no-margin text"><span>Mujeres</span></p>
                                </div>
                            </section>
                        </div>

                        <div class="col-md-4 col-sm-6">
                            <section class="panel panel-box">
                                <div class="panel-left panel-icon bg-success">
                                    <i class="fa fa-users fa-3x text-large stat-icon success-text"></i>
                                </div>
                                <div class="panel-right panel-icon bg-reverse">
                                    <p class="size-h1 no-margin countdown_first">1820</p>
                                    <p class="text-muted no-margin text"><span>CECTI XI</span></p>
                                </div>
                            </section>
                        </div>
                        
                        <div class="col-md-4 col-sm-6">
                            <section class="panel panel-box">
                                <div class="panel-left panel-icon bg-ponente">
                                    <i class="fa fa-users fa-3x text-large stat-icon ponente-text"></i>
                                </div>
                                <div class="panel-right panel-icon bg-reverse">
                                    <p class="size-h1 no-margin countdown_second">926</p>
                                    <p class="text-muted no-margin text"><span>Hombres</span></p>
                                </div>
                            </section>
                        </div>
                           
                        <div class="col-md-4 col-sm-6">
                            <section class="panel panel-box">
                                <div class="panel-left panel-icon bg-evaluador">
                                    <i class="fa fa-users fa-3x text-large stat-icon evaluador-text"></i>
                                </div>
                                <div class="panel-right panel-icon bg-reverse">
                                    <p class="size-h1 no-margin countdown_third">874</p>
                                    <p class="text-muted no-margin text"><span>Mujeres</span></p>
                                </div>
                            </section>
                        </div>
                        <?php foreach ($asistentes as $row){ $asistentes = $row->total; } ?>
                        <div class="col-md-4 col-sm-6">
                            <section class="panel panel-box">
                                <div class="panel-left panel-icon bg-success">
                                    <i class="fa fa-users fa-3x text-large stat-icon success-text"></i>
                                </div>
                                <div class="panel-right panel-icon bg-reverse">
                                    <p class="size-h1 no-margin countdown_first"><?=$asistentes;?></p>
                                    <p class="text-muted no-margin text"><span>CECTI XII</span></p>
                                </div>
                            </section>
                        </div>
                        <?php foreach ($hombres as $r){ $tot = $r->masculino; } ?>
                        <div class="col-md-4 col-sm-6">
                            <section class="panel panel-box">
                                <div class="panel-left panel-icon bg-ponente">
                                    <i class="fa fa-users fa-3x text-large stat-icon ponente-text"></i>
                                </div>
                                <div class="panel-right panel-icon bg-reverse">
                                    <p class="size-h1 no-margin countdown_second"><?=$tot;?></p>
                                    <p class="text-muted no-margin text"><span>Hombres</span></p>
                                </div>
                            </section>
                        </div>
                          <?php foreach ($mujeres as $r){ $tot = $r->mujeres; } ?>
                        <div class="col-md-4 col-sm-6">
                            <section class="panel panel-box">
                                <div class="panel-left panel-icon bg-evaluador">
                                    <i class="fa fa-users fa-3x text-large stat-icon evaluador-text"></i>
                                </div>
                                <div class="panel-right panel-icon bg-reverse">
                                    <p class="size-h1 no-margin countdown_third"><?=$tot;?></p>
                                    <p class="text-muted no-margin text"><span>Mujeres</span></p>
                                </div>
                            </section>
                        </div>

    </div>





                <!-- ESTADISTICAS EN TIEMPO REAL PONENTES -->
                <hr>
   <div class="row dashboard-stats">

                   <p class="lead center">PONENTES</p>


                        <div class="col-md-4 col-sm-6">
                            <section class="panel panel-box">
                                <div class="panel-left panel-icon bg-success">
                                    <i class="fa fa-users fa-3x text-large stat-icon success-text"></i>
                                </div>
                                <div class="panel-right panel-icon bg-reverse">
                                    <p class="size-h1 no-margin countdown_first">301</p>
                                    <p class="text-muted no-margin text"><span>CECTI IX</span></p>
                                </div>
                            </section>
                        </div>
                        
                        <div class="col-md-2 col-sm-6">
                            <section class="panel panel-box">
                                <div class="panel-right panel-icon bg-reverse">
                                    <p class="size-h1 no-margin countdown_second">216</p>
                                    <p class="text-muted no-margin text"><span>Oral</span></p>
                                </div>
                            </section>
                        </div>
                           
                        <div class="col-md-2 col-sm-6">
                            <section class="panel panel-box">
                                <div class="panel-right panel-icon bg-reverse">
                                    <p class="size-h1 no-margin countdown_second">85</p>
                                    <p class="text-muted no-margin text"><span>Cartel</span></p>
                                </div>
                            </section>
                        </div>


                        <div class="col-md-2 col-sm-6">
                            <section class="panel panel-box">
                                <div class="panel-right panel-icon bg-reverse">
                                    <p class="size-h1 no-margin countdown_third">260</p>
                                    <p class="text-muted no-margin text"><span>Hombres</span></p>
                                </div>
                            </section>
                        </div>

                        <div class="col-md-2 col-sm-6">
                            <section class="panel panel-box">
                                <div class="panel-right panel-icon bg-reverse">
                                    <p class="size-h1 no-margin countdown_third">233</p>
                                    <p class="text-muted no-margin text"><span>Mujeres</span></p>
                                </div>
                            </section>
                        </div>


</div>
 <div class="row dashboard-stats">



                        <div class="col-md-4 col-sm-6">
                            <section class="panel panel-box">
                                <div class="panel-left panel-icon bg-success">
                                    <i class="fa fa-users fa-3x text-large stat-icon success-text"></i>
                                </div>
                                <div class="panel-right panel-icon bg-reverse">
                                    <p class="size-h1 no-margin countdown_first">469</p>
                                    <p class="text-muted no-margin text"><span>CECTI X</span></p>
                                </div>
                            </section>
                        </div>
                        
                        
                        <div class="col-md-2 col-sm-6">
                            <section class="panel panel-box">
                                <div class="panel-right panel-icon bg-reverse">
                                    <p class="size-h1 no-margin countdown_second">367</p>
                                    <p class="text-muted no-margin text"><span>Oral</span></p>
                                </div>
                            </section>
                        </div>
                           
                        <div class="col-md-2 col-sm-6">
                            <section class="panel panel-box">
                                <div class="panel-right panel-icon bg-reverse">
                                    <p class="size-h1 no-margin countdown_second">102</p>
                                    <p class="text-muted no-margin text"><span>Cartel</span></p>
                                </div>
                            </section>
                        </div>


                        <div class="col-md-2 col-sm-6">
                            <section class="panel panel-box">
                                <div class="panel-right panel-icon bg-reverse">
                                    <p class="size-h1 no-margin countdown_third">352</p>
                                    <p class="text-muted no-margin text"><span>Hombres</span></p>
                                </div>
                            </section>
                        </div>

                        <div class="col-md-2 col-sm-6">
                            <section class="panel panel-box">
                                <div class="panel-right panel-icon bg-reverse">
                                    <p class="size-h1 no-margin countdown_third">305</p>
                                    <p class="text-muted no-margin text"><span>Mujeres</span></p>
                                </div>
                            </section>
                        </div>


</div>
 <div class="row dashboard-stats">





                        <div class="col-md-4 col-sm-6">
                            <section class="panel panel-box">
                                <div class="panel-left panel-icon bg-success">
                                    <i class="fa fa-users fa-3x text-large stat-icon success-text"></i>
                                </div>
                                <div class="panel-right panel-icon bg-reverse">
                                    <p class="size-h1 no-margin countdown_first">541</p>
                                    <p class="text-muted no-margin text"><span>CECTI XI</span></p>
                                </div>
                            </section>
                        </div>
                        
                        
                        <div class="col-md-2 col-sm-6">
                            <section class="panel panel-box">
                                <div class="panel-right panel-icon bg-reverse">
                                    <p class="size-h1 no-margin countdown_second">400</p>
                                    <p class="text-muted no-margin text"><span>Oral</span></p>
                                </div>
                            </section>
                        </div>
                           
                        <div class="col-md-2 col-sm-6">
                            <section class="panel panel-box">
                                <div class="panel-right panel-icon bg-reverse">
                                    <p class="size-h1 no-margin countdown_second">141</p>
                                    <p class="text-muted no-margin text"><span>Cartel</span></p>
                                </div>
                            </section>
                        </div>


                        <div class="col-md-2 col-sm-6">
                            <section class="panel panel-box">
                                <div class="panel-right panel-icon bg-reverse">
                                    <p class="size-h1 no-margin countdown_third">339</p>
                                    <p class="text-muted no-margin text"><span>Hombres</span></p>
                                </div>
                            </section>
                        </div>

                        <div class="col-md-2 col-sm-6">
                            <section class="panel panel-box">
                                <div class="panel-right panel-icon bg-reverse">
                                    <p class="size-h1 no-margin countdown_third">481</p>
                                    <p class="text-muted no-margin text"><span>Mujeres</span></p>
                                </div>
                            </section>
                        </div>


</div>
 <div class="row dashboard-stats">




                        <?php foreach ($ponentes as $row){ $ponentes = $row->aprobados; } ?>
                        <div class="col-md-4 col-sm-6">
                            <section class="panel panel-box">
                                <div class="panel-left panel-icon bg-success">
                                    <i class="fa fa-users fa-3x text-large stat-icon success-text"></i>
                                </div>
                                <div class="panel-right panel-icon bg-reverse">
                                    <p class="size-h1 no-margin countdown_first"><?=$ponentes;?></p>
                                    <p class="text-muted no-margin text"><span>CECTI XII</span></p>
                                </div>
                            </section>
                        </div>
                        <?php foreach ($oral as $r){ $total_oral = $r->oral; } ?>
                        <div class="col-md-2 col-sm-6">
                            <section class="panel panel-box">
                                <div class="panel-right panel-icon bg-reverse">
                                    <p class="size-h1 no-margin countdown_second"><?=$total_oral;?></p>
                                    <p class="text-muted no-margin text"><span>Oral</span></p>
                                </div>
                            </section>
                        </div>
                        <?php foreach ($cartel as $r){ $total_cartel = $r->cartel; } ?>
                        <div class="col-md-2 col-sm-6">
                            <section class="panel panel-box">
                                <div class="panel-right panel-icon bg-reverse">
                                    <p class="size-h1 no-margin countdown_second"><?=$total_cartel;?></p>
                                    <p class="text-muted no-margin text"><span>Cartel</span></p>
                                </div>
                            </section>
                        </div>


                        <?php foreach ($homb as $r){ $total_hom = $r->masculino; } ?>
                        <div class="col-md-2 col-sm-6">
                            <section class="panel panel-box">
                                <div class="panel-right panel-icon bg-reverse">
                                    <p class="size-h1 no-margin countdown_second"><?=$total_hom;?></p>
                                    <p class="text-muted no-margin text"><span>Hombres</span></p>
                                </div>
                            </section>
                        </div>
                          <?php foreach ($muje as $r){ $total_muj = $r->femenino; } ?>
                        <div class="col-md-2 col-sm-6">
                            <section class="panel panel-box">
                                <div class="panel-right panel-icon bg-reverse">
                                    <p class="size-h1 no-margin countdown_third"><?=$total_muj;?></p>
                                    <p class="text-muted no-margin text"><span>Mujeres</span></p>
                                </div>
                            </section>
                        </div>


</div>


    </div>










</div>










</div>
</section>
