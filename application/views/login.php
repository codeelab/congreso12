<section id="title" class="emerald">
<div class="container">
<div class="row">
<div class="col-sm-6">
<h1>INICIO DE SESIÓN</h1>
</div>
<div class="col-sm-6">
<ul class="breadcrumb pull-right">
<li><a href="<?php base_url();?>">INICIO</a></li>
<li class="active">ACCESO</li>
</ul>
</div>
</div>
</div>
</section>

<section id="registration" class="container">
    <div class="login-signup">
      <div class="row">
        <div class="col-sm-12 nav-tab-holder">
        <ul class="nav nav-tabs row" role="tablist">
          <li role="presentation" class="active col-sm-6"><a href="#ingreso" aria-controls="ingreso" role="tab" data-toggle="tab">Ingreso</a></li>
          <li role="presentation" class="col-sm-6"><a href="#recuperar" aria-controls="recuperar" role="tab" data-toggle="tab">Recuperar Cuenta</a></li>
        </ul>
        </div>
      </div>
        <?php
            messages_flash('danger',validation_errors(),'Errores del formulario', true);

            //si hay error enviando el email
            messages_flash('danger','not_email_send','Error enviando el email');

            //si se ha enviando el email correctamente
            messages_flash('success','mail_send','Email enviado correctamente');

            //si hay error enviando el email
            messages_flash('danger','expired_request','Error recuperación password');

            //si hay error modificando el password lo mostramos
            messages_flash('danger','error_password_changed','Error modificando el password');

            //si se ha modificado el password correctamente
            messages_flash('success','password_changed','Password modificado correctamente');

            $error = $this->session->flashdata('error');

        ?>

            <?php if ($error) :?>
            <div class="panel panel-danger">
                <div class="panel-heading"><b>Errores del formulario</b></div>
                 <div class="panel-body">
                    <?php echo $error; ?>
                 </div>
            </div>
            <?php endif ?>


      <div class="tab-content">
        <div role="tabpanel" class="tab-pane active" id="ingreso">
          <div class="row">

            <div class="col-sm-12 mobile-pull">
              <article role="login" class='signup form-horizontal'>
                <h3 class="text-center"><i class="fa fa-users"></i>
                    Acceso a usuarios registrados en el <br>Congreso Estatal de Ciencia, Tecnología e Innovación <?=date('Y')?>
                </h3>
                <?=form_open(base_url().'login/new_user')?>
                   <div class="form-group">
                        <label for="usuario" class="col-sm-2 control-label">Usuario</label>
                    <div class="col-sm-10">
                        <input type="text" name="username" value="<?php echo set_value('username') ?>" id="username" class="form-control">
                    </div>

                  </div>
                  <div class="form-group">
                        <label for="password" class="col-sm-2 control-label">Contraseña</label>
                    <div class="col-sm-10">
                        <input type="password" name="password" id="password" class="form-control">
                    </div>
                  </div>
                  <div class="form-group">
                  <div class="table-responsive">

                  </div>
                  </div>
                        <input type="submit" value="Inicio de sesión" class="btn btn-success btn-block">
                        <?=form_hidden('token',$token)?>
                        <?php echo form_close(); ?>

                </div>

          </div>
          <!-- end of row -->
        </div>
        <!-- end of home -->

      <div role="tabpanel" class="tab-pane" id="recuperar">
        <div class="row">

          <div class="col-sm-12 mobile-pull">
            <article role="login" class='signup form-horizontal'>
              <h3 class="text-center"><i class="fa fa-lock"></i> Recuperación de Contraseña</h3>
              <?=form_open(base_url().'login/request_password')?>
              <form class="signup">
                  <div class="form-group">
                        <label for="email" class="col-sm-2 control-label">Correo</label>
                    <div class="col-sm-10">
                  <input type="email" class="form-control" placeholder="Correo electrónico" name="email" id="email" value="<?php echo set_value('email')?>">
                </div>
                </div>

                <div class="form-group">
                <div class="col-sm-12">
                  <input type="submit" class="btn btn-success btn-block"  value="SUBMIT">
                </div>
                </div>
              <?php echo form_close(); ?>
            </article>
          </div>

        </div>
      </div>
  </div>
</section>