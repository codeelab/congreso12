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
<h2>REPORTE GENERAL MESAS</h2>
</div>

<div class="gap"></div>
<div id="pricing-table" class="row">

<div class="row">
<div class="col-md-12">
<?php foreach ($asistencias as $row){ $asistencia = $row->total; } ?>
                <div class="row dashboard-stats">

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

                        <?php foreach ($mesas as $r){ $mesas = $r->total; } ?>
                        <div class="col-md-4 col-sm-6">
                            <section class="panel panel-box">
                                <div class="panel-left panel-icon bg-info">
                                    <i class="fa fa-university fa-3x text-large stat-icon info-text"></i>
                                </div>
                                <div class="panel-right panel-icon bg-reverse">
                                    <p class="size-h1 no-margin countdown_third"><?php echo $mesas;?></p>
                                    <p class="text-muted no-margin text"><span>PONENCIAS REGISTRADAS</span></p>
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
            </div>


                <div class="row dashboard-stats">

                        <?php foreach ($mesa1 as $r){ $mesa1 = $r->total; } ?>
                        <div class="col-md-4 col-sm-6">
                            <section class="panel panel-box">
                                <div class="panel-left panel-icon bg-info">
                                    <i class="fa fa-university fa-3x text-large stat-icon info-text"></i>
                                </div>
                                <div class="panel-right panel-icon bg-reverse">
                                    <p class="size-h1 no-margin countdown_third"><?php $a = $mesa1 * 100; $por1 = round($a / $mesas,2); echo $mesa1.' - '.$por1.'%';?></p>
                                    <p class="text-muted no-margin text"><span>Mesa 1 | %</span></p>
                                </div>
                            </section>
                        </div>
                        <?php foreach ($mesa2 as $r){ $mesa2 = $r->total; } ?>
                        <div class="col-md-4 col-sm-6">
                            <section class="panel panel-box">
                                <div class="panel-left panel-icon bg-info">
                                    <i class="fa fa-university fa-3x text-large stat-icon info-text"></i>
                                </div>
                                <div class="panel-right panel-icon bg-reverse">
                                    <p class="size-h1 no-margin countdown_third"><?php $a = $mesa2 * 100; $por2 = round($a / $mesas,2); echo $mesa2.' - '.$por2.'%';?></p>
                                    <p class="text-muted no-margin text"><span>Mesa 2 | %</span></p>
                                </div>
                            </section>
                        </div>
                        <?php foreach ($mesa3 as $r){ $mesa3 = $r->total; } ?>
                        <div class="col-md-4 col-sm-6">
                            <section class="panel panel-box">
                                <div class="panel-left panel-icon bg-info">
                                    <i class="fa fa-university fa-3x text-large stat-icon info-text"></i>
                                </div>
                                <div class="panel-right panel-icon bg-reverse">
                                    <p class="size-h1 no-margin countdown_third"><?php $a = $mesa3 * 100; $por3 = round($a / $mesas,2); echo $mesa3.' - '.$por3.'%';?></p>
                                    <p class="text-muted no-margin text"><span>Mesa 3 | %</span></p>
                                </div>
                            </section>
                        </div>


                </div>


                <div class="row dashboard-stats">

                        <?php foreach ($mesa4 as $r){ $tot = $r->total; } ?>
                        <div class="col-md-4 col-sm-6">
                            <section class="panel panel-box">
                                <div class="panel-left panel-icon bg-info">
                                    <i class="fa fa-university fa-3x text-large stat-icon info-text"></i>
                                </div>
                                <div class="panel-right panel-icon bg-reverse">
                                    <p class="size-h1 no-margin countdown_third"><?php $a = $tot * 100; $por4 = round($a / $mesas,2); echo $tot.' - '.$por4.'%';?></p>
                                    <p class="text-muted no-margin text"><span>Mesa 4 | %</span></p>
                                </div>
                            </section>
                        </div>
                        <?php foreach ($mesa5 as $r){ $tot = $r->total; } ?>
                        <div class="col-md-4 col-sm-6">
                            <section class="panel panel-box">
                                <div class="panel-left panel-icon bg-info">
                                    <i class="fa fa-university fa-3x text-large stat-icon info-text"></i>
                                </div>
                                <div class="panel-right panel-icon bg-reverse">
                                    <p class="size-h1 no-margin countdown_third"><?php $a = $tot * 100; $por5 = round($a / $mesas,2); echo $tot.' - '.$por5.'%';?></p>
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
                                    <p class="size-h1 no-margin countdown_third"><?php $a = $tot * 100; $por6 = round($a / $mesas,2); echo $tot.' - '.$por6.'%';?></p>
                                    <p class="text-muted no-margin text"><span>Mesa 6 | %</span></p>
                                </div>
                            </section>
                        </div>


                </div>

                <div class="row dashboard-stats">

                        <?php foreach ($mesa7 as $r){ $tot = $r->total; } ?>
                        <div class="col-md-4 col-sm-6">
                            <section class="panel panel-box">
                                <div class="panel-left panel-icon bg-info">
                                    <i class="fa fa-university fa-3x text-large stat-icon info-text"></i>
                                </div>
                                <div class="panel-right panel-icon bg-reverse">
                                    <p class="size-h1 no-margin countdown_third"><?php $a = $tot * 100; $por7 = round($a / $mesas,2); echo $tot.' - '.$por7.'%';?></p>
                                    <p class="text-muted no-margin text"><span>Mesa 7 | %</span></p>
                                </div>
                            </section>
                        </div>
                        <?php foreach ($mesa8 as $r){ $tot = $r->total; } ?>
                        <div class="col-md-4 col-sm-6">
                            <section class="panel panel-box">
                                <div class="panel-left panel-icon bg-info">
                                    <i class="fa fa-university fa-3x text-large stat-icon info-text"></i>
                                </div>
                                <div class="panel-right panel-icon bg-reverse">
                                    <p class="size-h1 no-margin countdown_third"><?php $a = $tot * 100; $por8 = round($a / $mesas,2); echo $tot.' - '.$por8.'%';?></p>
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
                                    <p class="size-h1 no-margin countdown_third"><?php $a = $tot * 100; $por9 = round($a / $mesas,2); echo $tot.' - '.$por9.'%';?></p>
                                    <p class="text-muted no-margin text"><span>Mesa 9 | %</span></p>
                                </div>
                            </section>
                        </div>


                </div>

                <div class="row dashboard-stats">

                        <?php foreach ($mesa10 as $r){ $tot = $r->total; } ?>
                        <div class="col-md-4 col-sm-6">
                            <section class="panel panel-box">
                                <div class="panel-left panel-icon bg-info">
                                    <i class="fa fa-university fa-3x text-large stat-icon info-text"></i>
                                </div>
                                <div class="panel-right panel-icon bg-reverse">
                                    <p class="size-h1 no-margin countdown_third"><?php $a = $tot * 100; $por10 = round($a / $mesas,2); echo $tot.' - '.$por10.'%';?></p>
                                    <p class="text-muted no-margin text"><span>Mesa 10 | %</span></p>
                                </div>
                            </section>
                        </div>


                </div>


</div>
</div>
<?php
    foreach($chart as $result)
        {
         $mes[] =  (int) $result->total;
        }

?>
<div class="row">
    <div class="col-md-6 col-sm-6">
        <div id="container"></div>
    </div>

    <div class="col-md-6 col-sm-6">
        <div id="container_dona"></div>
    </div>
</div>


</div>
</div>
</div>
</section>
<script type="text/javascript">

Highcharts.chart('container', {
    chart: {
        type: 'column'
    },
    title: {
        text: ''
    },
    yAxis: [{
        className: 'highcharts-color-0',
        title: {
            text: 'PONENCIAS'
        }
    }],
    xAxis: {
        categories: ['Mesa 1', 'Mesa 2', 'Mesa 3', 'Mesa 4', 'Mesa 5', 'Mesa 6', 'Mesa 7', 'Mesa 8', 'Mesa 9', 'Mesa 10']
    },
    credits: {
        enabled: false
    },
    plotOptions: {
        column: {borderRadius: 5},
        series: {
            colorByPoint: true,
            dataLabels: {
                enabled: true,
                borderRadius: 2,
                y: -10,
                shape: 'callout'
            }
        }
    },
    series: [{
        name: 'PONENCIAS',
        data:  <?php echo json_encode($mes);?>
    }],
    responsive: {
        rules: [{
            condition: {
                maxWidth: 500
            },
            chartOptions: {
                legend: {
                    align: 'center',
                    verticalAlign: 'bottom',
                    layout: 'horizontal'
                },
                yAxis: {
                    labels: {
                        align: 'left',
                        x: 0,
                        y: -5
                    },
                    title: {
                        text: null
                    }
                },
                subtitle: {
                    text: null
                },
                credits: {
                    enabled: false
                }
            }
        }]
    }
});

$('#small').click(function () {
    chart.setSize(400, 300);
});

$('#large').click(function () {
    chart.setSize(600, 300);
});



$(document).ready(function () {

    // Build the chart
    Highcharts.chart('container_dona', {
        chart: {
            plotBackgroundColor: null,
            plotBorderWidth: null,
            plotShadow: false,
            type: 'pie'
        },
        title: {
            text: ''
        },
        tooltip: {
            pointFormat: '{series.name}: <b>{point.percentage:.2f}%</b>'
        },
        plotOptions: {
            pie: {
                allowPointSelect: true,
                cursor: 'pointer',
                dataLabels: {
                    enabled: false
                },
                showInLegend: true
            },
        },
        series: [{
            name: 'Ponencias',
            colorByPoint: true,
            data: [{
                name: 'Mesa 1',
                y: <?php echo json_encode($por1);?>
            }, {
                name: 'Mesa 2',
                y: <?php echo json_encode($por2);?>
            }, {
                name: 'Mesa 3',
                y: <?php echo json_encode($por3);?>
            }, {
                name: 'Mesa 4',
                y: <?php echo json_encode($por4);?>
            }, {
                name: 'Mesa 5',
                y: <?php echo json_encode($por5);?>
            }, {
                name: 'Mesa 6',
                y: <?php echo json_encode($por6);?>
            }, {
                name: 'Mesa 7',
                y: <?php echo json_encode($por7);?>
            }, {
                name: 'Mesa 8',
                y: <?php echo json_encode($por8);?>
            }, {
                name: 'Mesa 9',
                y: <?php echo json_encode($por9);?>
            }, {
                name: 'Mesa 10',
                y: <?php echo json_encode($por10);?>
            }]
        }]
    });
});

</script>