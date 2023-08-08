<?php 
    headerAdmin($data);
    getModal('modalRoles',$data); 
?>
    <div id="contentAjax"></div>
    <main class="app-content">
      <div class="app-title">
        <div>
          <h1><i class="fa fa-tachometer" aria-hidden="true"></i> <?= $data['page_title'] ?>
          <!--<button class="btn btn-primary" type="button" onClick="openModal();"><i class="fa fa-plus-circle" aria-hidden="true"></i>Nuevo</button>-->
        
        </h1>
          <!-- <p>Start a beautiful journey here</p> -->
        </div>
        <ul class="app-breadcrumb breadcrumb">
          <!-- openModal() hace referencia al functions_roles.js para mostrar el modal -->
          <?php if($_SESSION['permisosMod']['w']){ ?>
          <button class="btn btn-primary" type="button" onClick="openModal();"><i class="fa fa-plus-circle" aria-hidden="true"></i>Nuevo</button>
          <?php } ?> 
          <!-- <li class="breadcrumb-item"><i class="fa fa-home fa-lg"></i></li> -->
          <!-- <li class="breadcrumb-item"><a href="<?= base_url(); ?>/roles"> <?= $data['page_title'] ?></a></li> -->
        </ul>
      </div>
      <!-- CONTENIDO DE TABLE -->
      <div class="row">
        <div class="col-md-12">
          <div class="tile">
            <div class="tile-body">
              <div class="table-responsive">
                <!-- id tableRoles hace referencia al functions_roles.js para mostrar la tabla-->
                <table class="table table-hover table-bordered" id="tableRoles">
                  <thead>
                    <tr>
                      <th>ID</th>
                      <th>Nombre</th>
                      <th>Descripción</th>
                      <th>Estado</th>
                      <th>Accioness</th>
                    </tr>
                  </thead>
                  <tbody>
                    
                  </tbody>
                </table>
              </div>
            </div>
          </div>
        </div>
      </div>
    </main>
    <?php footerAdmin($data); ?> 