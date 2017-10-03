<?php
  $user = $this->session->userdata('id_usuarios');
  $nombre = $this->session->userdata('nombre');
  $a_paterno = $this->session->userdata('a_paterno');
  $a_materno = $this->session->userdata('a_materno');

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

  foreach ($ponenciass as $row) {
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


<div class="row">

    <div class="col-lg-6">
        <div class="form-group">
            <label class="control-label ">Folio:</label>
            <div class="input-group">
                <div class="input-group-addon"><span class="fa fa-ticket"> CECTI-</span>
                </div>
                <input type="text" value="<?=$folio;?>" class='form-control' readonly>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label ">Nombre:</label>
            <div class="input-group">
                <div class="input-group-addon"><span class="fa fa-user-o"></span>
                </div>
                <input type="text" value="<?=$autor;?>" class='form-control' readonly>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label ">Correo:</label>
            <div class="input-group">
                <div class="input-group-addon"><span class="fa fa-envelope-o"></span>
                </div>
                <input type="text" value="<?=$email;?>" class='form-control' readonly>
            </div>
        </div>
        <div class="form-group">
            <label  for="id" class="control-label ">Nivel Académico:</label>
            <div class="input-group">
                <div class="input-group-addon"><span class="fa fa-graduation-cap"></span>
                </div>
                <input type="text" value="<?=$nivel;?>" class='form-control' readonly>
            </div>
        </div>

    </div>
    <div class="col-lg-6">
        <div class="form-group">
            <label  for="id" class="control-label ">Título de la propuesta:</label>
            <div class="input-group">
                <div class="input-group-addon"><span class="fa fa-book"></span>
                </div>
                <input type="text" value="<?=$titulo;?>" class='form-control' readonly>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label ">Modalidad de Exposición:</label>
            <div class="input-group">
                <div class="input-group-addon"><span class="fa fa-bookmark-o"></span>
                </div>
                <input type="text" value="<?=$modalidad;?>" class='form-control' readonly>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label ">Mesa:</label>
            <div class="input-group">
                <div class="input-group-addon"><span class="fa fa-bookmark-o"></span>
                </div>
                <input type="text" value="<?=$mesa;?>" class='form-control' readonly>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label ">Estado:</label>
            <div class="input-group">
                <div class="input-group-addon"><span class="fa fa-info"></span>
                </div>
                <input type="text" value="<?=$estado;?>" class='form-control' readonly>
            </div>
        </div>
    </div>

<?php echo form_open('encuentro/add_evaluacion'); ?>
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
        <td><?php echo form_input(array('id' => 'calificacion_1', 'name' => 'calificacion_1', 'type' => 'number','min' => '0', 'max' => '10', 'class' => 'form-control sum', 'required' => 'required', 'onchange' => 'sumar(this.value);')); ?></th>
    </tr>
    <tr>
        <td ><b>La investigación se ubica en un campo específico de interés y actualidad.</b></td>
        <td><?php echo form_input(array('id' => 'calificacion_2', 'name' => 'calificacion_2', 'type' => 'number','min' => '0', 'max' => '10', 'class' => 'form-control sum', 'required' => 'required', 'onchange' => 'sumar(this.value);')); ?></td>
    </tr>
    <tr>
        <td ><b>Contribuye significativamente al enriquecimiento de un campo específico.</b></td>
        <td><?php echo form_input(array('id' => 'calificacion_3', 'name' => 'calificacion_3', 'type' => 'number','min' => '0', 'max' => '10', 'class' => 'form-control sum', 'required' => 'required', 'onchange' => 'sumar(this.value);')); ?></td>
    </tr>
    <tr>
        <td ><b>Se encuentra desarrollada con apego al rigor metodológico.</b></td>
        <td><?php echo form_input(array('id' => 'calificacion_4', 'name' => 'calificacion_4', 'type' => 'number', 'min' => '0', 'max' => '10', 'class' => 'form-control sum', 'required' => 'required', 'onchange' => 'sumar(this.value);')); ?></td>
    </tr>
    <tr>
        <td ><b>Contribuye a erradicar una problemática en el estado.</b></td>
        <td><?php echo form_input(array('id' => 'calificacion_5', 'name' => 'calificacion_5', 'type' => 'number','min' => '0', 'max' => '10', 'class' => 'form-control sum', 'required' => 'required', 'onchange' => 'sumar(this.value);')); ?></td>
    </tr>
    <tr>
        <td ><b>Es lógica y coherente.</b></td>
        <td><?php echo form_input(array('id' => 'calificacion_6', 'name' => 'calificacion_6', 'type' => 'number', 'min' => '0', 'max' => '10', 'class' => 'form-control sum', 'required' => 'required', 'onchange' => 'sumar(this.value);')); ?></td>
    </tr>
    <tr>
        <td ><b>Tiene argumentos claros y pertinentes.</b></td>
        <td><?php echo form_input(array('id' => 'calificacion_7', 'name' => 'calificacion_7', 'type' => 'number', 'min' => '0', 'max' => '10', 'class' => 'form-control sum', 'required' => 'required', 'onchange' => 'sumar(this.value);')); ?></td>
    </tr>
    <tr>
        <td ><b>Las fuentes de información utilizadas son suficientes, actuales y pertinentes.</b></td>
        <td><?php echo form_input(array('id' => 'calificacion_8', 'name' => 'calificacion_8', 'type' => 'number', 'min' => '0', 'max' => '10', 'class' => 'form-control sum', 'required' => 'required', 'onchange' => 'sumar(this.value);')); ?></td>
    </tr>
    <tr>
        <td ><b>La redacción es correcta ortográfica y gramaticalmente.</b></td>
        <td><?php echo form_input(array('id' => 'calificacion_9', 'name' => 'calificacion_9', 'type' => 'number', 'min' => '0', 'max' => '10', 'class' => 'form-control sum', 'required' => 'required', 'onchange' => 'sumar(this.value);')); ?></td>
    </tr>
    <tr>


        <td ><b>PROMEDIO FINAL</b></td>
        <td>
        <?php echo form_input(array('id' => 'promedio', 'name' => 'promedio', 'class' => 'form-control', 'readonly' => 'TRUE', 'style' => 'font-size:30px;')); ?>
        </td>
    </tr>

</tbody>
</table>
</div>


<!--con la funcion validation_errors ci nos muestra los errores al pulsar el botón submit, la podemos colocar donde queramos-->
<font color="red" style="font-weight: bold; font-size: 14px; text-decoration: underline"><?php echo validation_errors(); ?></font>
<?php echo form_input(array('id' => 'ponencia_id', 'name' => 'ponencia_id', 'value'=> $folio, 'type' => 'hidden')); ?>
<?php echo form_input(array('id' => 'evaluador_id', 'name' => 'evaluador_id', 'value'=> $user, 'type' => 'hidden')); ?>
<?php echo form_input(array('id' => 'status_id', 'name' => 'status_id', 'value'=> '5', 'type' => 'hidden')); ?>
<?php echo form_submit(array('id' => 'submit', 'name' => 'submit', 'value' => 'Guardar', 'class' => 'btn btn-outlined btn-theme btn-lg btn-block', 'data-wow-delay=' => '0.7s')); ?>
<?php echo form_close(); ?><br/>



</section>