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
         <div class="panel panel-default">
                <div class="panel-heading">
                        <strong>12 CONGRESO ESTATAL DE CIENCIA, TECNOLOGÍA E INNOVACIÓN</strong>
                </div>
                <div class="panel-body">
                    <?=form_open(base_url().'login/new_user')?>
                        <div class="form-group">
                                <label for="username">Usuario</label>
                                        <div class="input-group">
                                                <span class="input-group-addon">
                                                        <i class="fa fa-user"></i>
                                                </span>
                                        <input type="text" name="username" value="<?php echo set_value('username') ?>" id="username" class="form-control">
                                        </div>
                                        <?php echo form_error('username', '<p class="list-group-item list-group-item-danger"><b>', '</b></p>'); ?>
                        </div>
                        <div class="form-group">
                                <label for="password">Contraseña</label>
                                        <div class="input-group">
                                                <span class="input-group-addon">
                                                        <i class="fa fa-lock"></i>
                                                </span>
                                        <input type="password" name="password" id="password" class="form-control">
                                        </div>
                                        <?php echo form_error('password', '<p class="list-group-item list-group-item-danger"><b>', '</b></p>'); ?>
                        </div>
                        <div class="table-responsive">
                        <div class="form-group">
                        <?php echo $recaptcha_html; ?>
                        <?php if ($this->session->flashdata('error') !== FALSE) { echo $this->session->flashdata('error'); } ?>
                        </div>
                        </div>

                        <input type="submit" value="Login" class="btn btn-primary btn-md btn-block">
                        <?=form_hidden('token',$token)?>
                        <?php echo form_close(); ?>

                </div>
        </div>

</section>