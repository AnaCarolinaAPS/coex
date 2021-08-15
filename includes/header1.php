<?php 

if (isset($_POST['email'])) {
  $guardarnewsletter = saveNewsletter ($_POST['email']);
if ($guardarnewsletter > 1) {
$tipomensaje = 'success';			   
$mensaje= '<p class="text-center alert alert-success"> Gracias por suscribirte a nuestro boletin de Noticias :)</p>';
//echo "<script type='text/javascript'>document.location.href='pedido-completado.php?ped=".$guardarpedido."';</script>";
}	else if ($guardarpedido == null) {
$tipomensaje = 'error';
$mensaje = '<p class="text-center alert alert-danger">Consulte al administrador de sistemas.<br>Registro NO ENCONTRADO</p>';
} else {
$tipomensaje = 'error';
$mensaje = '<p class="text-center alert alert-danger">Consulte al administrador de sistemas.<br>Error->"'.$guardarnewsletter.'"</p>';
  }  
}



?>
 
<header>
  <?php $menu = getAllMenuCategorias( $_SESSION['tienda'], 'menu');?>
      <nav class="navbar navbar-expand-md navbar-dark fixed-top">
        <a class="navbar-brand" href="#"><img src="https://coexma.com.py/assets/site/imagens/coexma.png" alt="" class="img-fluid"></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarCollapse">
          <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
              <a class="nav-link" href="index.php">Inicio <span class="sr-only">(current)</span></a>
            </li>
            <?php foreach ($menu as $mainmenu) {
              if (getAllMenuCategorias($mainmenu['id'],'menu')) {  ?>
              <li class="nav-item dropdown">

              <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="color:rgb(40 40 40)">
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
             

           <?php  }
           if ($_SESSION['tienda'] == 1) { ?>
              <li class="nav-item">
                  <a class="nav-link nav-tienda" href="refrigeracion-gastronomia.php"> <i class="fa fa-reply" aria-hidden="true"></i> | Refrigeración y Gastronomía </a>
              </li>
          <?php } else { ?>
              <li class="nav-item">
                  <a class="nav-link nav-tienda" href="index.php?tienda=1"> <i class="fa fa-reply" aria-hidden="true"></i> | Muebes de Oficina</a>
              </li>

            <?php } ?>
           

           
          </ul>
          <div class="col-md-3 info-contact-header">
          <form class="form-inline mt-2 mt-md-0" method="GET" action="categoria.php">
            <input class="form-control mr-sm-2" type="text" placeholder="Que estas buscando?" aria-label=" Que estas Buscando?" name="search">
            <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Buscar</button>
          </form>
          </div>
          <div class="col-md-3 info-contact-header">
          <div class="dropdown show">
              <a class="btn btn-secondary dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
              <i class="fa fa-volume-control-phone" aria-hidden="true"></i> Televentas
              </a>

            <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
              <a class="dropdown-item" href="#"><span>C.D.E</span>: (061) 500972</a>
              <a class="dropdown-item" href="#"><span>Asunción: </span>(021) 510111</a>
            </div>
            <a href="vendedores.php"><i class="fa fa-address-card-o" aria-hidden="true"></i>
 Vendedores</a>
          </div>
                    
            

           
            </div>
        </div>
      </nav>
      
     
      <a href="https://api.whatsapp.com/send?phone=595973642631&text=Hola,%20quiero%20saber%20mas%20sobre%20sus%20productos" class="whatsapp" target="_blank"> <i class="fa fa-whatsapp whatsapp-icon"></i></a>


      <a id="button"></a>
    </header>

  