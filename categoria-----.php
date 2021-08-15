<?php session_start();?>
<!doctype html>
<html lang="es">
<?php 
	require "funciones/funciones.php";
  include("includes/head.php"); 

  define('NUM_ITEMS_BY_PAGE', 6);

	$totalSubCategorias = 0;
  
  if (isset($_GET['cat']) && $_GET['cat'] > 0) {
		$categoria = $_GET['cat'];
		$productos = getProdbyCategoria($categoria,0);
	} else {
    $categoria = $_SESSION['tienda'];
    $productos = getProdbyCategoria($_SESSION['tienda'],0);;
	}

	//ordenar productos
	$orderby='id';
  $order='DESC';
  
	if (isset($_GET['search'])) {
		$search=$_GET['search'];
		$productos = getProdbySearch($search);
  }
  
	if (isset($_GET['orderby']) && isset($_GET['order'])) {
		$orderby=$_GET['orderby'];
		$order=$_GET['order'];
		//validacion
		if ($_GET['order'] != 'DESC' && $_GET['order'] != 'ASC') {
			$order='DESC';
    }
    
	}


?>
  <body>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
	<!-- Header section -->
	<?php include("includes/header.php"); ?>
	<!-- Header section end -->
    <main role="main">
    <section id="page-info">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                   <a href="index.php">Inicio / </a> <a href="categoria.php?cat=<?php echo $_SESSION['tienda']; ?>">Categorias / </a> <a href=""><?php echo getCategoria($categoria)['nombre']; ?></a>
                </div>
            </div>
        </div>
    </section > 
        <section id="product-area">
            <div class="container">
            <div class="row">
             <?php $menu = getAllMenuCategorias($categoria, 'cat');?>
             
                             <!-- MENU CATEGORIAS -->
                <div class="col-md-3">                
               
                 <?php if (isset($menu)) {
                 foreach ($menu as $menuitem) { ?> 
                  <?php 
                   $submenu = getAllMenuCategorias($menuitem['id'], 'cat');
                    if (($submenu != NULL)) { ?>
                        <div class="accordion-wrap">
                        <div class="accordion-item">
                          <p class="accordion-header"> <?php echo $menuitem['nombre'];?> <i class="fa fa-angle-down" aria-hidden="true"></i> </p>
                        </div>
                        <div class="accordion-text">
                            <?php  foreach ($submenu as $submenu_item) { ?>                           
                              <p><a href="categoria.php?cat=<?php echo $submenu_item['id'];?> "><?php echo $submenu_item['nombre'];?> </a></p>                           
                            <?php } ?>
                        </div>
                        </div>
                    <?php } else { ?> 
                      <div class="accordion-item">
                    <p class="category-menu"><a href="categoria.php?cat=<?php echo $menuitem['id'];?> "><?php echo $menuitem['nombre'];?> </a></p>   
                    </div>
                    <?php } } }?>
                   



               
               </div>

                <!-- PRODUCTOS DE CATEGORIA -->
                <div class=" <?php if (isset($menu)) { ?> col-md-9 <?php }else { ?> col-md-12 <?php } ?>">
                    <div class="row">
                    <?php 
                        if ($productos == NULL){
                      ?>
                      <div class="alert alert-danger" role="alert">
                        Ops! No encontramos ningun producto en tu busqueda :D<br>
                        <a href="index.php" style="color: black">Volver al <a href="index.php">Inicio</a>
                      </div>
                      
                        <?php } else { 
                          $cantProd = count($productos);
                          foreach ($productos as $row) {?>
                          <div class="col-md-4 col-sm-6">
                            <div class="product-grid">
                                <div class="product-image">
                                <a href="producto.php?id=<?php echo $row['id']; ?>">
                                        <?php if (isset(getProdImage($row['id'])['url'])) { ?>

                                           <img class="pic-1" src="img/productos/<?php echo getProdImage($row['id'])['url']; ?>">
                                           <img class="pic-2" src="img/productos/<?php echo getProdImage($row['id'])['url']; ?>">
                                        
                                       <?php  } else { ?> 
                                       <img class="" src="img/productos/no-image.png">
                                       <?php } ?>
                                           
                                        </a>
                                    <a class="add-to-cart" href="producto.php?id=<?php echo $row['id']; ?>">Ver mas..</a>
                                </div>
                                <div class="product-content">
                                    <h3 class="title"><a href="producto.php?id=<?php echo $row['id']; ?>"><?php echo $row['nombre']; ?></a></h3>
                                    <span class="price"><?php if(($row['precio']>0)){ echo number_format($row['precio'], 0, ',', '.')." gs"; } else{ echo "<span class='price-consult'>Sobre Consulta</span>";} ?></span>
                              </div>
                            </div>
                        </div>
                        <?php } } ?> 
                    </div>
                 
                </div>
            </div>
            </div>
        </section>
   



    	<!-- Header section -->
	    <?php include("includes/footer.php"); ?>
    	<!-- Header section end -->	    

                 

    </main>

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
    
    <script src="js/bootstrap.min.js"></script>
    <script src="js/holder.min.js"></script>
    <!-- Just to make our placeholder images work. Don't actually copy the next line! -->

    <script>
    
    $(".accordion-wrap").on("click", function(){   
      $(this).children().eq(1).slideToggle(300);  
      $(this).children().eq(0).toggleClass("accordion-no-bar");
      $(this).siblings().find(".accordion-header").removeClass("accordion-gold");
      $(this).siblings().find(".accordion-header i").removeClass("rotate-fa");
      $(this).find(".accordion-header").toggleClass("accordion-gold");
      $(this).find(".fa").toggleClass("rotate-fa");

    $(".accordion-wrap .accordion-text").not($(this).children().eq(1)).slideUp(300);
});


    </script>

<?php include("includes/scripts.php"); ?>



  
  </body>
</html>
