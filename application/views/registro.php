<section id="title" class="emerald">
<div class="container">
<div class="row">
<div class="col-sm-6">
<h1>REGISTRO</h1>
</div>
<div class="col-sm-6">

</div>
</div>
</div>
</section>

<div class="container">

    <div class="row">

        <div class="col-md-4">
            <div class="card hovercard">
               <img src="<?php echo base_url()?>assets/images/Registro_ponentes.jpg" alt=""/>
               <div class="avatar">
                  <img src="<?php echo base_url()?>assets/images/Icono_1.jpg" alt="" />
               </div>
               <div class="info">
                  <div class="title">
                     PONENTES
                  </div>
               </div>
               <div class="bottom">
                  <a href="ponentes"><button class="btn btn-default">REGISTRO</button></a>
               </div>
            </div>
        </div>

        <div class="col-md-4">
            <div class="card hovercard">
               <img src="<?php echo base_url()?>assets/images/Registro_evaluadores.jpg" alt=""/>
               <div class="avatar">
                  <img src="<?php echo base_url()?>assets/images/Icono_4.jpg" alt="" />
               </div>
               <div class="info">
                  <div class="title">
                     EVALUADORES
                  </div>
               </div>
               <div class="bottom">
                 <button class="btn btn-default"  data-toggle="modal" data-target="#myModal">REGISTRO</button>
               </div>
                <?php if (isset($error) && $error): ?>
                  <div class="alert alert-danger" role="alert">
                    <b>Clave de acceso incorrecta!</b>
                  </div>
                <?php endif; ?>
            </div>
        </div>


        <div class="col-md-4">
            <div class="card hovercard">
               <img src="<?php echo base_url()?>assets/images/Registro_moderadores.jpg" alt=""/>
               <div class="avatar">
                  <img src="<?php echo base_url()?>assets/images/Icono_2.jpg" alt="" />
               </div>
               <div class="info">
                  <div class="title">
                     MODERADORES
                  </div>
               </div>
               <div class="bottom">
                 <button class="btn btn-default"  data-toggle="modal" data-target="#myModal">REGISTRO</button>
               </div>
                <?php if (isset($error) && $error): ?>
                  <div class="alert alert-danger" role="alert">
                    <b>Clave de acceso incorrecta!</b>
                  </div>
                <?php endif; ?>
            </div>
        </div>

        <div class="col-md-4">
            <div class="card hovercard">
               <img src="<?php echo base_url()?>assets/images/Registro_relatores.jpg" alt=""/>
               <div class="avatar">
                  <img src="<?php echo base_url()?>assets/images/Icono_6.jpg" alt="" />
               </div>
               <div class="info">
                  <div class="title">
                     RELATORES
                  </div>
               </div>
               <div class="bottom">
                 <button class="btn btn-default"  data-toggle="modal" data-target="#myModal">REGISTRO</button>
               </div>
                <?php if (isset($error) && $error): ?>
                  <div class="alert alert-danger" role="alert">
                    <b>Clave de acceso incorrecta!</b>
                  </div>
                <?php endif; ?>
            </div>
        </div>

        <div class="col-md-4">
            <div class="card hovercard">
               <img src="<?php echo base_url()?>assets/images/Registro_logistica.jpg" alt=""/>
               <div class="avatar">
                  <img src="<?php echo base_url()?>assets/images/Icono_5.jpg" alt="" />
               </div>
               <div class="info">
                  <div class="title">
                     APOYO LOGÍSTICO
                  </div>
               </div>
               <div class="bottom">
                 <button class="btn btn-default"  data-toggle="modal" data-target="#myModal">REGISTRO</button>
               </div>
                <?php if (isset($error) && $error): ?>
                  <div class="alert alert-danger" role="alert">
                    <b>Clave de acceso incorrecta!</b>
                  </div>
                <?php endif; ?>
            </div>
        </div>


        <div class="col-md-4">
            <div class="card hovercard">
               <img src="<?php echo base_url()?>assets/images/Registro_asistentes.jpg" alt=""/>
               <div class="avatar">
                  <img src="<?php echo base_url()?>assets/images/Icono_3.jpg" alt="" />
               </div>
               <div class="info">
                  <div class="title">
                     ASISTENTES
                  </div>
               </div>
               <div class="bottom">
                  <a href="asistente"><button class="btn btn-default">REGISTRO</button></a>
               </div>
            </div>
        </div>



    </div>

</div>


<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
        <div class="modal-header" style="padding:35px 50px;">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4><span class="fa fa-lock"></span> ACCESO A REGISTRO</h4>
        </div>
            <div class="modal-body" style="padding:40px 50px;">
              <?php echo form_open('inicio/acceso') ?>
                <div class="form-group">
                  <label for="usrname"><i class="fa fa-user"></i> Usuario</label>
                  <input type="text" class="form-control" id="usuario" name="usuario" placeholder="Usuario" required>
                </div>
                <div class="form-group">
                  <label for="psw"><i class="fa fa-key"></i> Password</label>
                  <input type="text" class="form-control" id="clave" name="clave" placeholder="Clave" required>
                </div>
                  <button type="submit" name="submit" class="btn btn-success btn-block"><i class="fa fa-paper-plane-o"></i>    Ingresar</button>
              </form>
            </div>
        </div>
    </div>
</div>