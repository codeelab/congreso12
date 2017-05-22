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
               <img src="http://placehold.it/300x200/000000/&text=Header" alt=""/>
               <div class="avatar">
                  <img src="http://placehold.it/80X80/333333/&text=Head" alt="" />
               </div>
               <div class="info">
                  <div class="title">
                     PONENTES
                  </div>
               </div>
               <div class="bottom">
                  <button class="btn btn-default">REGISTRO</button>
               </div>
            </div>
        </div>

        <div class="col-md-4">
            <div class="card hovercard">
               <img src="http://placehold.it/300x200/000000/&text=Header" alt=""/>
               <div class="avatar">
                  <img src="http://placehold.it/80X80/333333/&text=Head" alt="" />
               </div>
               <div class="info">
                  <div class="title">
                     EVALUADORES
                  </div>
               </div>
               <div class="bottom">
                  <button class="btn btn-default">REGISTRO</button>
               </div>
            </div>
        </div>

        <div class="col-md-4">
            <div class="card hovercard">
               <img src="http://placehold.it/300x200/000000/&text=Header" alt=""/>
               <div class="avatar">
                  <img src="http://placehold.it/80X80/333333/&text=Head" alt="" />
               </div>
               <div class="info">
                  <div class="title">
                     MODERADORES Y RELATORES
                  </div>
               </div>
               <div class="bottom">
                  <button class="btn btn-default">REGISTRO</button>
               </div>
            </div>
        </div>


        <div class="col-md-4">
            <div class="card hovercard">
               <img src="http://placehold.it/300x200/000000/&text=Header" alt=""/>
               <div class="avatar">
                  <img src="http://placehold.it/80X80/333333/&text=Head" alt="" />
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
               <img src="http://placehold.it/300x200/000000/&text=Header" alt=""/>
               <div class="avatar">
                  <img src="http://placehold.it/80X80/333333/&text=Head" alt="" />
               </div>
               <div class="info">
                  <div class="title">
                     ASISTENTES
                  </div>
               </div>
               <div class="bottom">
                  <button class="btn btn-default">REGISTRO</button>
               </div>
            </div>
        </div>

    </div>

</div>


<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">Modal title</h4>
      </div>
      <div class="modal-body">
               <?php echo form_open('inicio/acceso','class="form-horizontal"') ?>
                  <div class="col-md-8">
                  <input type="text" class="form-control" id="usuario" name="usuario" placeholder="Usuario">
                      <input type="password" class="form-control" id="clave" name="clave" placeholder="Clave">
                  </div>
                  <div class="col-md-4">
                  <button type="submit" name="submit" class="btn btn-info btn-block">Acceder</button>
                  </div>
                </form>
                <br>
      </div>
      <div class="modal-footer">
      </div>
    </div>
  </div>
</div>
