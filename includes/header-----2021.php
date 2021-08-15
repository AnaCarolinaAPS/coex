<?php 

if (isset($_POST['boletin'])) {
  $guardarnewsletter = saveNewsletter ($_POST['email']);
   if ($guardarnewsletter > 1) {
    $tipomensaje = 'success';			   
    $mensaje= '<p class="text-center alert alert-success"> Gracias por suscribirte a nuestro boletin de Noticias :)</p>';
//echo "<script type='text/javascript'>document.location.href='pedido-completado.php?ped=".$guardarpedido."';</script>";
   }	else if ($guardarnewsletter == null) {
      $tipomensaje = 'error';
      $mensaje = '<p class="text-center alert alert-danger">Consulte al administrador de sistemas.<br>Registro NO ENCONTRADO</p>';
      } else {
      $tipomensaje = 'error';
      $mensaje = '<p class="text-center alert alert-danger">Consulte al administrador de sistemas.<br>Error->"'.$guardarnewsletter.'"</p>';
        }  
    }

    $unidades = getUnidades();

?>
 
<header>

<nav class="navbar menu-top" >
    <div class="col-md-1 col-sm-12 block-logo">
      <a class="navbar-brand" href="#"><img src="https://coexma.com.py/assets/site/imagens/coexma.png" alt="" class="img-fluid"></a>
      
    </div>
      <div class="col-md-4 col-sm-12">
        <nav class="top-menu">
            <ul>
              <li><a href="index.php">Inicio</a></li>
              <li><a href="categoria.php?cat=<?php echo $_SESSION['tienda'] ?>">Productos</a></li>
              <li><a href="quienes-somos.php">Quienes Somos</a></li>
              <li><a href="contactos.php">Contacto</a></li>
          </ul>
        </nav>
      </div>

      <div class="col-md-4 col-sm-12 info-contact-header">
          <form class="form-inline mt-2 mt-md-0" method="GET" action="categoria.php">
            <input class="form-control mr-sm-2" type="text" placeholder="Que estas buscando?" aria-label=" Que estas Buscando?" name="search"  required>
            <button class="btn btn-outline-success my-2 my-sm-0" type="submit"><i class="fa fa-search" aria-hidden="true"></i>
            Buscar</button>
          </form>
       </div>
       
       <div class="col-md-3 info-contact-header">
        <div class="dropdown show">                     

              <?php	if (!isset($_SESSION['usuario'])){?>
                <a href="login.php" class="user-menu register icon-link"> <i class="fa fa-user-o" aria-hidden="true"></i> Login</a>	
                <a href="registro.php" class="user-menu register icon-link" style="margin-left: 0px;">Registrarme</a>	
                <?php } else { ?>
                <a class="btn btn-secondary dropdown-toggle icon-link" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <i class="fa fa-user-o"  aria-hidden="true"></i>  Hola <?php echo $_SESSION['usuario'];?> :)                  
                </a>
                <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                  <a href="salir.php" class="dropdown-item"  href="#" >Salir</a>
                </div>
              <?php } ?>
           
        		<a href="carrito.php" class="card-bag"><i class="fa fa-shopping-cart" aria-hidden="true"></i>
         <span><?php echo countCart(); ?></span></a>								
         </div>

         </div>
</nav>


  <?php $menu = getAllMenuCategorias( $_SESSION['tienda'], 'menu');?>

      <nav class="navbar navbar-expand-md navbar-dark " >     
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
        <div class="collapse navbar-collapse" id="navbarCollapse">
          <ul class="navbar-nav mr-auto">
                  
                 <?php foreach ($menu as $mainmenu) {
                    if (getAllMenuCategorias($mainmenu['id'],'menu')) {  ?>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" >
                            <?php echo $mainmenu['nombre'] ?> 
                            </a>
                          <div class="dropdown-menu" aria-labelledby="navbarDropdown">                        
                              <?php 
                              $submenu = getAllMenuCategorias($mainmenu['id'],'menu');
                              foreach ($submenu as $subm) { ?>
                                  <a class="dropdown-item" href="categoria.php?cat=<?php echo $subm['id'] ?>"><?php echo $subm['nombre'] ?> </a>
                              <?php } ?>
                           </div>
                        </li>                
                    <?php } else { ?>
                      <li class="nav-item">
                        <a class="nav-link" href="categoria.php?cat=<?php echo $mainmenu['id'] ?>"><?php echo $mainmenu['nombre'] ?> </a>
                      </li>
                    <?php } ?>
                 <?php  } ?>
           
          
          </ul>

          <?php  
           if ($_SESSION['tienda'] == 1) { ?>
             
               <a class="nav-link nav-tienda" href="refrigeracion-gastronomia.php"> <i class="fa fa-snowflake-o" aria-hidden="true"></i>
                  </i>  Refrigeración y Gastronomía </a>
           
          <?php } else { ?>
            
                  <a class="nav-link nav-tienda" href="index.php?tienda=1"> <i class="nav-icon fa fa-reply" aria-hidden="true"></i> Muebes de Oficina</a>
         

            <?php } ?>
          <!--ul class="social-network social-circle">
                <?php// if ($_SESSION["tienda"] == 1) { ?>
                  <li><a href="https://www.facebook.com/CoexmaParaguay/" class="icoFacebook" title="Facebook"><i class="fa fa-facebook"></i></a></li>
                  <li><a href="https://www.instagram.com/coexmasrl/" class="icoInstagram" title="Instagram"><i class="fa fa-instagram"></i></a></li>
               
               <?php //} else { ?>
                <li><a href="https://www.facebook.com/CoexmaaPy" class="icoFacebook" title="Facebook"><i class="fa fa-facebook"></i></a></li>
                  <li><a href="https://www.instagram.com/coexmapy/" class="icoInstagram" title="Instagram"><i class="fa fa-instagram"></i></a></li>
               

                <?php //} ?>
                
             
                
              </ul-->
         
                    
            

           
            </div>
        </div>
       
            <a data-toggle="modal" data-target="#whatsmodal" class="whatsapp" > <i class="fa fa-whatsapp whatsapp-icon parpadea"></i></a>


      </nav>
      
     
     <div class="col-md-6">
  
     </div>
      <a id="button"></a>
    </header>


          <div class="modal fade" id="whatsmodal" tabindex="-1" role="dialog" aria-labelledby="whatsmodallabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
              <div class="modal-content">
                <div class="modal-header">
                  <h5 class="modal-title" id="whatsmodallabel">Vendedores Online</h5>
                  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                  </button>
                </div>
                <div class="modal-body">
                <form method="post">
                  <div class="row">
                    <div class="form-group col-md-6">
                      <input type="text" class="form-control" id="whats_nombre" name="whats_nombre" placeholder="Su Nombre">
                    </div>
                  <div class="form-group col-md-6">
                    <input type="text" class="form-control" id="whats_nro" name="whats_nro" placeholder="Su Whatsapp">
                  </div>
                
                </div>

                  <div class="form-group">
                  <label for="unidades">Seleccione Una Localidad</label>
                  <select class="form-control" id="unidades" name= "unidades">
                  <option value="">Seleccione una Localidad:</option>
                  <?php foreach ($unidades as $unidad) { ?>  
                    <option value="<?php echo $unidad["id"] ?>">-<?php echo $unidad["nombre"] ?></option>
                  <?php } ?>      
                  </select>
                  <?php
                  //$vendedores = getVendedores($unidad); 
                  //foreach ($vendedores as $vendedor) { ?>
                  
                  <div class="col-md-12" id="vendedores">      
                  </div>
              </div>
              </form>

                </div>
            
              </div>
            </div>
          </div>



<div class="modal fade" id="modal-carrito" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        ...
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div>
    </div>
  </div>
</div>
      

  