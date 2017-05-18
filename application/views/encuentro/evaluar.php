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


?>

<section id="title" class="emerald">
<div class="container">
<div class="row">
<div class="col-sm-6">
<h1>Evaluador: <?php echo $nombre .' '.$a_paterno .' '.$a_materno ?></h1>
</div>
<div class="col-sm-6">
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

<?php echo form_open('encuentro/add_evaluacion'); ?>

<div class="row">

    <div class="col-lg-6">
        <div class="form-group">
            <label class="control-label ">Folio:</label>
            <div class="input-group">
                <div class="input-group-addon"><span class="fa fa-ticket"> CECTI-</span>
                </div>
                <?php echo form_input(array('id' => 'ponencia_id', 'name' => 'ponencia_id', 'type' => 'number', 'min' => '0', 'max' => '10', 'class' => 'form-control', 'required' => 'required', 'value' => $folio, 'readonly' => 'TRUE')); ?>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label ">Nombre:</label>
            <div class="input-group">
                <div class="input-group-addon"><span class="fa fa-user-o"></span>
                </div>
                <?php echo form_input(array('id' => 'ponente', 'name' => 'ponente', 'class' => 'form-control', 'value' => $autor, 'readonly' => 'TRUE')); ?>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label ">Correo:</label>
            <div class="input-group">
                <div class="input-group-addon"><span class="fa fa-envelope-o"></span>
                </div>
                <?php echo form_input(array('id' => 'correo', 'name' => 'correo', 'class' => 'form-control', 'value' => $email, 'readonly' => 'TRUE')); ?>
            </div>
        </div>
        <div class="form-group">
            <label  for="id" class="control-label ">Nivel Académico:</label>
            <div class="input-group">
                <div class="input-group-addon"><span class="fa fa-graduation-cap"></span>
                </div>
                <?php echo form_input(array('id' => 'nivel', 'name' => 'nivel', 'class' => 'form-control', 'value' => $nivel, 'readonly' => 'TRUE')); ?>
            </div>
        </div>

    </div>
    <div class="col-lg-6">
        <div class="form-group">
            <label  for="id" class="control-label ">Título de la propuesta:</label>
            <div class="input-group">
                <div class="input-group-addon"><span class="fa fa-book"></span>
                </div>
                <?php echo form_input(array('id' => 'titulo', 'name' => 'titulo', 'class' => 'form-control', 'value' => $titulo, 'readonly' => 'TRUE')); ?>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label ">Modalidad de Exposición:</label>
            <div class="input-group">
                <div class="input-group-addon"><span class="fa fa-bookmark-o"></span>
                </div>
                <?php echo form_input(array('id' => 'modalidad', 'name' => 'modalidad', 'class' => 'form-control', 'value' => $modalidad, 'readonly' => 'TRUE')); ?>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label ">Mesa:</label>
            <div class="input-group">
                <div class="input-group-addon"><span class="fa fa-bookmark-o"></span>
                </div>
                <?php echo form_input(array('id' => 'mesa', 'name' => 'mesa', 'class' => 'form-control', 'value' => $mesa, 'readonly' => 'TRUE')); ?>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label ">Estado:</label>
            <div class="input-group">
                <div class="input-group-addon"><span class="fa fa-info"></span>
                </div>
                <?php echo form_input(array('id' => 'status', 'name' => 'status', 'class' => 'form-control', 'value' => $estado, 'readonly' => 'TRUE')); ?>
            </div>
        </div>
    </div>

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
        <td><?php echo form_input(array('id' => 'calificacion_1', 'name' => 'calificacion_1', 'type' => 'number', 'type' => 'number', 'min' => '0', 'max' => '10', 'class' => 'form-control', 'required' => 'required', 'onchange' => 'sumar(this.value);')); ?></th>
    </tr>
    <tr>
        <td ><b>La investigación se ubica en un campo específico de interés y actualidad.</b></td>
        <td><?php echo form_input(array('id' => 'calificacion_2', 'name' => 'calificacion_2', 'type' => 'number', 'type' => 'number', 'min' => '0', 'max' => '10', 'class' => 'form-control', 'required' => 'required', 'onchange' => 'sumar(this.value);')); ?></td>
    </tr>
    <tr>
        <td ><b>La investigación contribuye significativamente al enrequecimiento de un campo específico.</b></td>
        <td><?php echo form_input(array('id' => 'calificacion_3', 'name' => 'calificacion_3', 'type' => 'number', 'type' => 'number', 'min' => '0', 'max' => '10', 'class' => 'form-control', 'required' => 'required', 'onchange' => 'sumar(this.value);')); ?></td>
    </tr>
    <tr>
        <td ><b>Los resultados de la investigación contribuyen a erradicar una problemática en el estado.</b></td>
        <td><?php echo form_input(array('id' => 'calificacion_4', 'name' => 'calificacion_4', 'type' => 'number', 'type' => 'number', 'min' => '0', 'max' => '10', 'class' => 'form-control', 'required' => 'required', 'onchange' => 'sumar(this.value);')); ?></td>
    </tr>
    <tr>
        <td ><b>La investigación es lógica y coherente.</b></td>
        <td><?php echo form_input(array('id' => 'calificacion_5', 'name' => 'calificacion_5', 'type' => 'number', 'type' => 'number', 'min' => '0', 'max' => '10', 'class' => 'form-control', 'required' => 'required', 'onchange' => 'sumar(this.value);')); ?></td>
    </tr>
    <tr>
        <td ><b>La investigación tiene argumentos claros y pertinentes.</b></td>
        <td><?php echo form_input(array('id' => 'calificacion_6', 'name' => 'calificacion_6', 'type' => 'number', 'type' => 'number', 'min' => '0', 'max' => '10', 'class' => 'form-control', 'required' => 'required', 'onchange' => 'sumar(this.value);')); ?></td>
    </tr>
    <tr>
        <td ><b>Las fuentes de información utilizadas en esta investigación son suficientes, actuales y pertinentes.</b></td>
        <td><?php echo form_input(array('id' => 'calificacion_7', 'name' => 'calificacion_7', 'type' => 'number', 'type' => 'number', 'min' => '0', 'max' => '10', 'class' => 'form-control', 'required' => 'required', 'onchange' => 'sumar(this.value);')); ?></td>
    </tr>
    <tr>
        <td ><b>La redacción es correcta ortográfica y gramaticalmente.</b></td>
        <td><?php echo form_input(array('id' => 'calificacion_8', 'name' => 'calificacion_8', 'type' => 'number', 'type' => 'number', 'min' => '0', 'max' => '10', 'class' => 'form-control', 'required' => 'required', 'onchange' => 'sumar(this.value);')); ?></td>
    </tr>
    <tr>
        <td ><b>TOTAL FINAL</b></td>
        <td style="font-size:20px;"><span id="promedio" name="promedio" class='form-control' readonly></span></td>
    </tr>

</tbody>
</table>
</div>
<!--con la funcion validation_errors ci nos muestra los errores al pulsar el botón submit, la podemos colocar donde queramos-->
<font color="red" style="font-weight: bold; font-size: 14px; text-decoration: underline"><?php echo validation_errors(); ?></font>
<?php echo form_input(array('id' => 'evaluador_id', 'name' => 'evaluador_id', 'value'=> $user, 'type' => 'hidden')); ?>
<?php echo form_input(array('id' => 'status_id', 'name' => 'status_id', 'value'=> '5', 'type' => 'hidden')); ?>
<?php echo form_submit(array('id' => 'submit', 'name' => 'submit', 'value' => 'Guardar', 'class' => 'btn btn-outlined btn-theme btn-lg btn-block', 'data-wow-delay=' => '0.7s')); ?>
<?php echo form_close(); ?><br/>



</section>