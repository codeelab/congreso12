<?php
  $user = $this->session->userdata('id_usuarios');
  $nombre = $this->session->userdata('nombre');
  $a_paterno = $this->session->userdata('a_paterno');
  $a_materno = $this->session->userdata('a_materno');

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
<h2>Evaluación del Participante</h2>
</div>
<hr>

<div class="row">
<div class="col-md-12">
<div class="table-responsive">
<form action="" method="post">
<?php foreach ($editar as $row):?>

<?php  $total = $row->calificacion_1+$row->calificacion_2+$row->calificacion_3+$row->calificacion_4+$row->calificacion_5+$row->calificacion_6+$row->calificacion_7+$row->calificacion_8; ?>

<table class="table">
<tbody">
<tr>
<td colspan="2" style="font-size:14px;color:#fff;background-color:#29bdbe;">EN UNA ESCALA DE 0 A 10 (DONDE 0 ES EL MÍNIMO Y 10 ES EL MÁXIMO) CALIFIQUE LOS SIGUIENTES ASPECTOS:</td>
  <td></td>
</tr>

    <tr>
        <td ><b>La investigación y sus resultados son innovadores.</b></td>
        <td><?php echo form_input(array('id' => 'calificacion_1', 'name' => 'calificacion_1', 'type' => 'number', 'min' => '0', 'max' => '10', 'class' => 'form-control', 'required' => 'required', 'value' => $row->calificacion_1)); ?></th>
    </tr>
    <tr>
        <td ><b>La investigación se ubica en un campo específico de interés y actualidad.</b></td>
        <td><?php echo form_input(array('id' => 'calificacion_2', 'name' => 'calificacion_2', 'type' => 'number', 'min' => '0', 'max' => '10', 'class' => 'form-control', 'required' => 'required', 'value' => $row->calificacion_2)); ?></td>
    </tr>
    <tr>
        <td ><b>La investigación contribuye significativamente al enrequecimiento de un campo específico.</b></td>
        <td><?php echo form_input(array('id' => 'calificacion_3', 'name' => 'calificacion_3', 'type' => 'number', 'min' => '0', 'max' => '10', 'class' => 'form-control', 'required' => 'required', 'value' => $row->calificacion_3)); ?></td>
    </tr>
    <tr>
        <td ><b>Los resultados de la investigación contribuyen a erradicar una problemática en el estado.</b></td>
        <td><?php echo form_input(array('id' => 'calificacion_4', 'name' => 'calificacion_4', 'type' => 'number', 'min' => '0', 'max' => '10', 'class' => 'form-control', 'required' => 'required', 'value' => $row->calificacion_4)); ?></td>
    </tr>
    <tr>
        <td ><b>La investigación es lógica y coherente.</b></td>
        <td><?php echo form_input(array('id' => 'calificacion_5', 'name' => 'calificacion_5', 'type' => 'number', 'min' => '0', 'max' => '10', 'class' => 'form-control', 'required' => 'required', 'value' => $row->calificacion_5)); ?></td>
    </tr>
    <tr>
        <td ><b>La investigación tiene argumentos claros y pertinentes.</b></td>
        <td><?php echo form_input(array('id' => 'calificacion_6', 'name' => 'calificacion_6', 'type' => 'number', 'min' => '0', 'max' => '10', 'class' => 'form-control', 'required' => 'required', 'value' => $row->calificacion_6)); ?></td>
    </tr>
    <tr>
        <td ><b>Las fuentes de información utilizadas en esta investigación son suficientes, actuales y pertinentes.</b></td>
        <td><?php echo form_input(array('id' => 'calificacion_7', 'name' => 'calificacion_7', 'type' => 'number', 'min' => '0', 'max' => '10', 'class' => 'form-control', 'required' => 'required', 'value' => $row->calificacion_7)); ?></td>
    </tr>
    <tr>
        <td ><b>La redacción es correcta ortográfica y gramaticalmente.</b></td>
        <td><?php echo form_input(array('id' => 'calificacion_8', 'name' => 'calificacion_8', 'type' => 'number', 'min' => '0', 'max' => '10', 'class' => 'form-control', 'required' => 'required', 'value' => $row->calificacion_8)); ?></td>
    </tr>
    <tr>
        <td ><b>TOTAL FINAL</b></td>
        <td style="font-size:20px;"><?php echo $total; ?></td>
    </tr>

</tbody>
</table>
 <button type="submit" name="submit" value="Evaluar" class="btn btn-default">Guardar</button>
</form>
<?php endforeach;?>
</div>

</section>