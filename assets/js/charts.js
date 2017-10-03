$(document).ready(function () {

Highcharts.chart('container', {
        chart: {
            plotBackgroundColor: '#f5f5f5',
            plotBorderWidth: '#f5f5f5',
            plotShadow: false,
            type: 'pie'
        },
        title: {
            text: 'REPORTE GENERAL PONENTE'
        },
        tooltip: {
            pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
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
        responsive: {
          rules: [{
            condition: {
              maxWidth: 500
            },
            chartOptions: {
              legend: {
                enabled: false
              }
            }
          }]
        },
        series: <?=$series_data;?>
});
});