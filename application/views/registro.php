<?php

  $actual = date('Y') . '-' . date('m') . '-' . date('d');

  foreach ($alert as $rows) {
    //Para los avisos de subida de resumen y cierre del módulo a todos los ponentes
    $FIR = $rows->fecha_inicio_resumen;
    $FCR = $rows->fecha_cierre_resumen;
    //Para los avisos de estado a todos los ponentes aprobados
    $FIA = $rows->fecha_inicio_estado;
    $FCA = $rows->fecha_cierre_estado;
    //Para los avisos de subida de extensos y cierre del módulo a todos los ponentes aprobados
    $FIE = $rows->fecha_inicio_extenso;
    $FCE = $rows->fecha_cierre_extenso;
    //Para los avisos de CONSTANCIAS a todos los ponentes aprobados
    $FIC = $rows->fecha_inicio_constancia;
    $FCC = $rows->fecha_cierre_constancia;
    //Para el cierre de registro Asistentes
    $FFF = $rows->fecha_cierre_asistente;
  }

?>



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

               <?php if($actual >= $FIR && $actual <= $FCR): ?>
                  <a href="ponentes"><button class="btn btn-success">REGISTRO</button></a>
              <?php else: ?>
                <a href="#"><button class="btn btn-success">REGISTRO CERRADO</button></a>
              <?php endif ?>

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
                     EVALUADORES CONGRESO
                  </div>
               </div>

               <div class="bottom">
               <?php if($actual >= $FIR && $actual <= $FCA): ?>
                 <button class="btn btn-success"  data-toggle="modal" data-target="#myModal">REGISTRO</button>
               <?php else: ?>
               <button class="btn btn-danger">REGISTRO CERRADO</button>
                <?php endif ?>
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
               <img src="<?php echo base_url()?>assets/images/Registro_evaluadores.jpg" alt=""/>
               <div class="avatar">
                  <img src="<?php echo base_url()?>assets/images/Icono_4.jpg" alt="" />
               </div>
               <div class="info">
                  <div class="title">
                     EVALUADORES 6to ENCUENTRO
                  </div>
               </div>
               <div class="bottom">
               <?php if($actual >= $FIR && $actual <= $FCA): ?>
                 <button class="btn btn-success"  data-toggle="modal" data-target="#myModal">REGISTRO</button>
               <?php else: ?>
               <button class="btn btn-danger">REGISTRO CERRADO</button>
                <?php endif ?>
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
               <?php if($actual >= $FIR && $actual <= $FCA): ?>
                 <button class="btn btn-success"  data-toggle="modal" data-target="#myModal">REGISTRO</button>
               <?php else: ?>
               <button class="btn btn-danger">REGISTRO CERRADO</button>
                <?php endif ?>
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
               <?php if($actual >= $FIR && $actual <= $FCA): ?>
                 <button class="btn btn-success"  data-toggle="modal" data-target="#myModal">REGISTRO</button>
               <?php else: ?>
               <button class="btn btn-danger">REGISTRO CERRADO</button>
                <?php endif ?>
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
                     APOYO LOGíSTICO
                  </div>
               </div>
               <div class="bottom">
               <?php if($actual >= $FIR && $actual <= $FIE): ?>
                 <button class="btn btn-warning">PRÓXIMAMENTE</button>

              <?php elseif($actual > $FIE && $actual <= $FCE): ?>
                 <button class="btn btn-success"  data-toggle="modal" data-target="#myModal">REGISTRO</button>

               <?php else: ?>
               <button class="btn btn-danger">REGISTRO CERRADO</button>
                <?php endif ?>

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
               <?php if($actual >= $FIR && $actual <= $FFF): ?>
                  <a href="asistente"><button class="btn btn-success">REGISTRO</button></a>
               <?php else: ?>
                <a href="#"><button class="btn btn-danger">REGISTRO CERRADO</button></a>
               <?php endif ?>
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
                  <input type="password" class="form-control" id="clave" name="clave" placeholder="Clave" required>
                </div>
                  <button type="submit" name="submit" class="btn btn-success btn-block"><i class="fa fa-paper-plane-o"></i>    Ingresar</button>
              </form>
            </div>
        </div>
    </div>
</div>