<?php 
    headerAdmin($data); 
    getModal('modalUsuarios',$data);
?>
  <main class="app-content">    
      <div class="app-title">
        <div>
            <h1><i class="fa fa-tachometer" aria-hidden="true"></i> <?= $data['page_title'] ?>
                
            </h1>
        </div>
        <?php if($_SESSION['permisosMod']['w']){ ?>
                <button class="btn btn-primary" type="button" onclick="openModal();" ><i class="fas fa-plus-circle"></i> Nuevo</button>
       <?php } ?>
      </div>
        <div class="row">
            <div class="col-md-12">
              <div class="tile">
                <div class="tile-body">
                  <div class="table-responsive">
                    <table class="table table-hover table-bordered" id="tableUsuarios">
                      <thead>
                        <tr>
                          <th>ID</th>
                          <th>Nombres</th>
                          <th>Apellidos</th>
                          <th>Email</th>
                          <th>Teléfono</th>
                          <th>Rol</th>
                          <th>Status</th>
                          <th>Acciones</th>
                        </tr>
                      </thead>
                      <!-- <tbody>
                        <tr>
                          <td>1</td>
                          <td>Carlos</td>
                          <td>Henández</td>
                          <td>carlos@info.com</td>
                          <td>78542155</td>
                          <td>Administrador</td>
                          <td>Activo</td>
                          <td></td>
                        </tr>
                      </tbody> -->
                    </table>
                  </div>
                </div>
              </div>
            </div>
        </div>
    </main>
<?php footerAdmin($data); ?>