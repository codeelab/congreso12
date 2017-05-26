<section id="title" class="emerald">
<div class="container">
<div class="row">
<div class="col-sm-6">
<h1>REGISTRO PONENTES</h1>
</div>
<div class="col-sm-6">

</div>
</div>
</div>
</section>

<section id="contact-page" class="container">
        <?php
            messages_flash('danger',validation_errors(),'Errores del formulario', true);

            messages_flash('success','registered','Correcto');
        ?>
    <?php echo form_open('inicio/regPonente'); ?>
        <div class="row">
            <div class="col-md-6">
                <label for="nombre">Nombre</label>
                <input type="email" class="form-control" id="nombre" name="nombre" placeholder="Nombre">
            </div>
            <div class="col-md-6">
                <label for="nacionalidad">Nacionalidad</label>
                <select name="nacionalidad" id="nacionalidad" class="form-control">
                <?php
                foreach ($nac as $i => $nacionalidad)
                   echo '<option value="',$i,'">',$nacionalidad,'</option>';
                ?>
                </select>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6">
                <label for="a_paterno">Apellido Paterno</label>
                <input type="email" class="form-control" id="a_paterno" name="a_paterno" placeholder="Apellido Paterno">
            </div>
            <div class="col-md-6">
                <label for="estado">Estado</label>
              <?php
                $options = array ('' => 'Elija estado de procedencia');
                foreach($estados as $estado)
                    $options[$estado->id_estado] = $estado->nombre_est;
                echo form_dropdown('estado', $options, '', 'class="form-control" id="estado"');
                ?>

            </div>
        </div>
        <div class="row">
            <div class="col-md-6">
                <label for="a_materno">Apellido Materno</label>
                <input type="email" class="form-control" id="a_materno" name="a_materno" placeholder="Apellido Materno">
            </div>
            <div class="col-md-6">
                <label for="municipio">Municipio</label>
                 <?php
                    $options = array(''=>'Elija un estado');
                    echo form_dropdown('municipio', $options, '', 'class="form-control" id="municipio"');
                ?>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6">
                <label for="email">Correo</label>
                <input type="email" class="form-control" id="email" name="email" placeholder="Correo Electrónico">
            </div>
            <div class="col-md-6">
                <label for="escolaridad">Escolaridad</label>
                <select name="escolaridad" id="escolaridad" class="form-control">
                <?php
                foreach ($esc as $i => $escolaridad)
                   echo '<option value="',$i,'">',$escolaridad,'</option>';
                ?>
                </select>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6">
                <label for="edad">Edad</label>
                <input type="number" min="15" max="99" id="edad" name="edad" class="form-control">
            </div>
            <div class="col-md-6">
                <label for="institucion">Institución</label>
              <?php
                $options = array ('' => 'Elija institución educativa');
                foreach($instituciones as $ins)
                    $options[$ins->id_institucion] = $ins->nombre_ins;
                echo form_dropdown('institucion', $options, '', 'class="form-control" id="institucion"');
                ?>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6">
                <label for="genero">Genero</label>
                <select name="genero" id="genero" class="form-control">
                <?php
                foreach ($gen as $i => $genero)
                   echo '<option value="',$i,'">',$genero,'</option>';
                ?>
                </select>
            </div>
            <div class="col-md-6">
                <label for="facultad">Facultad</label>
                 <?php
                    $options = array(''=>'Elija su carrera');
                    echo form_dropdown('facultad', $options, '', 'class="form-control" id="facultad"');
                ?>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6">
                <label for="usuario">Usuario</label>
                <input type="email" class="form-control" id="usuario" name="usuario" placeholder="Usuario">
            </div>
            <div class="col-md-6">
                <label for="password">Contraseña</label>
                <input type="email" class="form-control" id="password" name="password" placeholder="Contraseña">
            </div>
        </div>
            <input type="hidden" class="form-control" id="puesto" name="puesto" value="ponente">
            <button type="button" class="btn btn-primary btn-block btn-md btn-white">Registrar</button>
    <?php echo form_close();?>


</section>
