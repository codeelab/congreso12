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


      <div class="tab-content">
        <div role="tabpanel" class="tab-pane active" id="ingreso">
          <div class="row">


      <div role="tabpanel" class="tab-pane" id="recuperar">
        <div class="row">

          <div class="col-sm-12 mobile-pull">
            <article role="login" class='signup form-horizontal'>
              <h3 class="text-center"><i class="fa fa-lock"></i> Recuperación de Contraseña</h3>
              <form class="signup">
              <?=form_open(base_url().'login/update_password')?>

              <div class="input-group col-md-12">
                  <span class="input-group-addon">Nueva Contraseña</span>
                  <input type="password" id="password" name="password" class="form-control">
              </div><br>

              <div class="input-group col-md-12">
                  <span class="input-group-addon">Confirmar Contraseña</span>
                  <input type="password" id="conf_password" name="conf_password" class="form-control">
              </div>
              <div class="input-group col-md-12">
              <input type="hidden" name="token" value="<?php echo $token ?>">

              </div>
              <br>
              <button type="submit" class="btn btn-success col-md-4 col-md-offset-8">Cambiar el password</button>
              <br>
              <?php echo form_close() ?>

            </article>
          </div>

        </div>
      </div>
  </div>
</section>