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
<h2>REPORTE GENERAL GENERO</h2>
</div>

<div class="gap"></div>
<div id="pricing-table" class="row">

<div class="row">
<div class="col-md-12">
<?php foreach ($asistencias as $row){ $asistencia = $row->total; } ?>
   <div class="row dashboard-stats">

                        <?php foreach ($hombres as $r){ $tot = $r->masculino; } ?>
                        <div class="col-md-6 col-sm-6">
                            <section class="panel panel-box">
                                <div class="panel-left panel-icon bg-info">
                                    <i class="fa fa-users fa-3x text-large stat-icon info-text"></i>
                                </div>
                                <div class="panel-right panel-icon bg-reverse">
                                    <p class="size-h1 no-margin countdown_third"><?php $a = $tot * 100; $porh = round($a / $asistencia,2); echo $tot.' - '.$porh.'%';?></p>
                                    <p class="text-muted no-margin text"><span>Usuarios Hombres / %</span></p>
                                </div>
                            </section>
                        </div>

                        <?php foreach ($mujeres as $r){ $tot = $r->mujeres; } ?>
                        <div class="col-md-6 col-sm-6">
                            <section class="panel panel-box">
                                <div class="panel-left panel-icon bg-info">
                                    <i class="fa fa-users fa-3x text-large stat-icon info-text"></i>
                                </div>
                                <div class="panel-right panel-icon bg-reverse">
                                    <p class="size-h1 no-margin countdown_third"><?php $a = $tot * 100; $porm = round($a / $asistencia,2); echo $tot.' - '.$porm.'%';?></p>
                                    <p class="text-muted no-margin text"><span>Usuarios Mujeres / %</span></p>
                                </div>
                            </section>
                        </div>


                      </div>


</div>
</div>
<?php
    $nombre = array();
    foreach($charh as $result)
        {
         $hombress[] =  (int) $result->masculino;
        }
    foreach($charm as $result)
        {
         $mujeress[] =  (int) $result->femenino;
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
<!-- Script untuk memanggil library Highcharts -->
<script type='text/javascript'>
Highcharts.setOptions({
    colors: ['#ED561B','#B42C63']
});

Highcharts.chart('container', {
    chart: {
        type: 'column'
    },
    title: {
        text: ''
    },
    xAxis: {
        categories: ['Hombres', 'Mujeres']
    },
    credits: {
        enabled: false
    },
    series: [{
        name: 'Hombres',
        data:  <?php echo json_encode($hombress);?>
    }, {
        name: 'Mujeres',
        data:  <?php echo json_encode($mujeress);?>
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
            pointFormat: '<b>{point.percentage:.2f}%</b>'
        },
        plotOptions: {
            pie: {
                allowPointSelect: true,
                cursor: 'pointer',
                dataLabels: {
                    enabled: false
                },
                showInLegend: true
            }
        },
        series: [{
            colorByPoint: true,
            sliced: true,
            selected: true,
            data: [{
                name: 'Hombres',
                y: <?php echo $porh;?>
            }, {
                name: 'Mujeres',
                y: <?php echo $porm;?>
            }]
        }]
    });

</script>