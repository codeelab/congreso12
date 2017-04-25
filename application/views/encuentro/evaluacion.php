<?php
  $user = $this->session->userdata('id_usuarios');
  $nombre = $this->session->userdata('nombre');
  $a_paterno = $this->session->userdata('a_paterno');
  $a_materno = $this->session->userdata('a_materno');

  foreach ($ponencias as $row) {
    $autor = $row->autor;
    $folio = $row->id_ponencias;
    $email = $row->email;
    $nivel = $row->nombre_aca;
    $titulo = $row->titulo;
    $modalidad = $row->nombre_trabajo;
    $mesa = $row->nombre_tem;
    $estado = $row->status;
  }

    foreach ($promedio as $rows) {
    $eva1 = $rows->calificacion_1;
    $eva2 = $rows->calificacion_2;
    $eva3 = $rows->calificacion_3;
    $eva4 = $rows->calificacion_4;
    $eva5 = $rows->calificacion_5;
    $eva6 = $rows->calificacion_6;
    $eva7 = $rows->calificacion_7;
    $eva8 = $rows->calificacion_8;
    $prom = $rows->calificacion_1;

  }

?>

<section id="title" class="emerald">
<div class="container">
<div class="row">
<div class="col-sm-6">
<br>
<br>
<br>
<br>
<br>
<h1>Evaluador: <?php echo $nombre .' '.$a_paterno .' '.$a_materno ?></h1>
</div>
<div class="col-sm-6">
<br>
<br>
<br>
<br>
<ul class="breadcrumb pull-right lead">
    <li class="active"><a href="<?php echo site_url('encuentro/index') ?>">Inicio</a></li>
    <li><a href="<?php echo site_url("login/salir") ?>">Salir</a></li>
</ul>
</div>
</div>
</div>
</section>

<section id="career" class="container">
<div class="center">
<h2>Evaluación del Participante <br> <?php echo $autor; ?></h2>
</div>
<hr>
<div class="row">
<div class="col-md-12">
<div class="table-responsive">

<table class="table">
<tbody">
<tr>
<td colspan="2" style="font-size:14px;color:#fff;background-color:#29bdbe;">EN UNA ESCALA DE 0 A 10 (DONDE 0 ES EL MÍNIMO Y 10 ES EL MÁXIMO) CALIFIQUE LOS SIGUIENTES ASPECTOS:</td>
  <td></td>
</tr>

    <tr>
        <td ><b>La investigación y sus resultados son innovadores.</b></td>
        <td><?php echo form_input(array('id' => 'calificacion_1', 'name' => 'calificacion_1', 'class' => 'form-control', 'value' => $eva1)); ?></th>
    </tr>
    <tr>
        <td ><b>La investigación se ubica en un campo específico de interés y actualidad.</b></td>
        <td><?php echo form_input(array('id' => 'calificacion_2', 'name' => 'calificacion_2', 'class' => 'form-control', 'onchange' => 'sumar(this.value);')); ?></td>
    </tr>
    <tr>
        <td ><b>La investigación contribuye significativamente al enrequecimiento de un campo específico.</b></td>
        <td><?php echo form_input(array('id' => 'calificacion_3', 'name' => 'calificacion_3', 'class' => 'form-control', 'onchange' => 'sumar(this.value);')); ?></td>
    </tr>
    <tr>
        <td ><b>Los resultados de la investigación contribuyen a erradicar una problemática en el estado.</b></td>
        <td><?php echo form_input(array('id' => 'calificacion_4', 'name' => 'calificacion_4', 'class' => 'form-control', 'onchange' => 'sumar(this.value);')); ?></td>
    </tr>
    <tr>
        <td ><b>La investigación es lógica y coherente.</b></td>
        <td><?php echo form_input(array('id' => 'calificacion_5', 'name' => 'calificacion_5', 'class' => 'form-control', 'onchange' => 'sumar(this.value);')); ?></td>
    </tr>
    <tr>
        <td ><b>La investigación tiene argumentos claros y pertinentes.</b></td>
        <td><?php echo form_input(array('id' => 'calificacion_6', 'name' => 'calificacion_6', 'class' => 'form-control', 'onchange' => 'sumar(this.value);')); ?></td>
    </tr>
    <tr>
        <td ><b>Las fuentes de información utilizadas en esta investigación son suficientes, actuales y pertinentes.</b></td>
        <td><?php echo form_input(array('id' => 'calificacion_7', 'name' => 'calificacion_7', 'class' => 'form-control', 'onchange' => 'sumar(this.value);')); ?></td>
    </tr>
    <tr>
        <td ><b>La redacción es correcta ortográfica y gramaticalmente.</b></td>
        <td><?php echo form_input(array('id' => 'calificacion_8', 'name' => 'calificacion_8', 'class' => 'form-control', 'onchange' => 'sumar(this.value);')); ?></td>
    </tr>
    <tr>
        <td ><b>TOTAL FINAL</b></td>
        <td style="font-size:20px;"><span id="promedio" name="promedio" class='form-control' readonly></span></td>
    </tr>

</tbody>
</table>



</div>
</div>
</div>
</section>