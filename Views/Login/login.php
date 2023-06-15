<!DOCTYPE html>
<html lang="es">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="author" content="Abel OSH">
    <meta name="theme-color" content="#009688">
    <link rel="shortcut icon" href="<?= media();?>/images/favicon.ico">
     <!-- Font-icon css-->
     <!-- <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"> -->
    <!-- Main CSS-->
    <link rel="stylesheet" type="text/css" href="<?= media();?>/css/main.css">
    <!--    <link rel="stylesheet" type="text/css" href="<?= media();?>/css/style.css"> -->
    <link rel="stylesheet" type="text/css" href="<?= media();?>/css/iconslogin.css">
    <link rel="stylesheet" type="text/css" href="<?= media();?>/css/movimiento.css">
    <link rel="stylesheet" type="text/css" href="<?= media();?>/css/login.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
    <title><?= $data['page_tag']; ?></title>
  </head>
  <body>
    <section class="material-half-bg">
      <div class="cover"></div>
      <div class="burbujas">
            <div class="burbuja"></div>
            <div class="burbuja"></div>
            <div class="burbuja"></div>
            <div class="burbuja"></div>
            <div class="burbuja"></div>
            <div class="burbuja"></div>
            <div class="burbuja"></div>
            <div class="burbuja"></div>
            <div class="burbuja"></div>
            <div class="burbuja"></div>
        </div>
    </section>

    <section class="login-content">
      <!-- <div class="logo">
        <h1><?= $data['page_title']; ?></h1>
      </div> -->
      <!-- icono de cargando -->
      <div id="divLoading" >
          <div>
            <img src="<?= media(); ?>/images/loading.svg" alt="Loading">
          </div>
        </div>
      <!-- Nuevo Login -->
      <main>
      <div class="box">
        <div class="inner-box">
          <div class="forms-wrap">
            <form action="index.html" autocomplete="off" class="sign-in-form" name="formLogin" id="formLogin">
              <div class="logo-login">
                <img src="<?= media(); ?>/images/logo.png" alt="easyclass" />
                <h4>Nombre de Empresa</h4>
              </div>

              <div class="heading">
                <h2>Iniciar Sesión</h2>
                <h6>Te olvidaste tu contraseña?</h6>
                <a href="#" class="toggle">Recuperar</a>
              </div>

              <div class="actual-form">
                <div class="input-wrap">
                  <input id="txtEmail" name="txtEmail" class="form-control" type="email" placeholder="Email" autofocus
                    minlength="4"
                    autocomplete="off"
                  />
                  <!-- <label>Correo</label> -->
                </div>

                <div class="input-wrap">
                  <input id="txtPassword" name="txtPassword" class="form-control" type="password" placeholder="Contraseña"
                    minlength="4"
                    autocomplete="off"
                  />
                  <!-- <label>Password</label> -->
                </div>

                <div id="alertLogin" class="text-center"></div>
                <div class="form-group btn-container">
                <button type="submit" value="Sign In" class="sign-btn">INICIAR SESIÓN</button>
                </div>

                <!-- <input type="submit" value="Sign In" class="sign-btn" /> -->

                <p class="text">
                 Desarrollado por Codware
                  <!-- <a href="#">Get help</a> signing in -->
                </p>
              </div>
            </form>

            <form action="index.html" autocomplete="off" class="sign-up-form" id="formRecetPass" name="formRecetPass">
              <div class="logo-login">
              <img src="<?= media(); ?>/images/logo.png" alt="easyclass" />
                <h4>Nombre de Empresa</h4>
              </div>

              <div class="heading">
                <h2>Recuperar tu cuenta</h2>
                <h6>Iniciar Sesión</h6>
                <a href="#" class="toggle">Volver</a>
              </div>

                <div class="input-wrap">
                  <input id="txtEmailReset" name="txtEmailReset" class="form-control" type="email" placeholder="E-mail"
                    autocomplete="off"/>
                </div>
                <div class="form-group btn-container">
                <button type="submit" value="Sign Up" class="sign-btn"><i class="fa fa-unlock fa-lg fa-fw"></i> Buscar</button>
                </div>

                <p class="text">
                  Desarrollado por Codware
                  <!-- <a href="#">Terms of Services</a> and
                  <a href="#">Privacy Policy</a> -->
                </p>
              </div>
            </form>
          </div>

          <div class="carousel">
            <div class="images-wrapper">
              <img src="<?= media(); ?>/images/image1.png" class="image img-1 show" alt="" />
              <img src="<?= media(); ?>/images/image2.png" class="image img-2" alt="" />
              <img src="<?= media(); ?>/images/image3.png" class="image img-3" alt="" />
            </div>

            <div class="text-slider">
              <div class="text-wrap">
                <div class="text-group">
                  <h2>Fácil de usar</h2>
                  <h4>También disponible para móvil</h4>
                  <h4>Gracias por la confianza a nuestros clientes</h4>
                </div>
              </div>

              <div class="bullets">
                <span class="active" data-value="1"></span>
                <span data-value="2"></span>
                <span data-value="3"></span>
              </div>
            </div>
          </div>
        </div>
      </div>
    </main>
    <!-- Fin Login -->
    <div class="wrapper">
         <div class="button">
            <div class="icon">
               <i class="fab fa-facebook-f"></i>
            </div>
            <span>Facebook</span>
         </div>
         <div class="button">
            <div class="icon">
               <i class="fab fa-twitter"></i>
            </div>
            <span>Twitter</span>
         </div>
         <div class="button">
            <div class="icon">
               <i class="fab fa-instagram"></i>
            </div>
            <span>Instagram</span>
         </div>
         <div class="button">
            <div class="icon">
               <i class="fab fa-codepen"></i>
            </div>
            <span>Codepen</span>
         </div>
         <div class="button">
            <div class="icon">
               <i class="fab fa-youtube"></i>
            </div>
            <span>YouTube</span>
         </div>
      </div>

    </section>
    <script>
        const base_url = "<?= base_url(); ?>";
    </script>
    <!-- Essential javascripts for application to work-->
    <!--Icon-Font-->
    <!-- Login -->
    <script src="<?= media(); ?>/js/login.min.js"></script>
    <!-- barra -->
    <script src="https://kit.fontawesome.com/eb496ab1a0.js" crossorigin="anonymous"></script>

    <script src="<?= media(); ?>/js/jquery-3.3.1.min.js"></script>
    <script src="<?= media(); ?>/js/popper.min.js"></script>
    <script src="<?= media(); ?>/js/bootstrap.min.js"></script>
    <!-- <script src="<?= media(); ?>/js/fontawesome.js"></script> -->
    <script src="<?= media(); ?>/js/main.js"></script>
    <!-- The javascript plugin to display page loading on top-->
    <script src="<?= media(); ?>/js/plugins/pace.min.js"></script>
    
    <!-- Alerta -->
    <script type="text/javascript" src="<?= media();?>/js/plugins/sweetalert.min.js"></script>
    <script src="<?= media(); ?>/js/<?= $data['page_functions_js']; ?>"></script>
  </body>
</html>