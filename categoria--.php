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
		$categoria = "";
	}

	//ordenar productos
	$orderby='id';
	$order='DESC';

	if (isset($_GET['orderby']) && isset($_GET['order'])) {
		$orderby=$_GET['orderby'];
		$order=$_GET['order'];
		//validacion
		if ($_GET['order'] != 'DESC' && $_GET['order'] != 'ASC') {
			$order='DESC';
    }
    
	}

	if (isset($_GET['search'])) {
		$search=$_GET['search'];
		$productos = getProdbySearch($search);
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
                    <a href="">Home/Caregorias/</a>
                </div>
            </div>
        </div>
    </section > 
        <section id="product-area">
            <div class="container">
            <div class="row">
                <!-- MENU CATEGORIAS -->
                <div class="col-md-3">
                <button class="accordion">Muebles de Oficina</button>
                    <div class="panel">
                    <p><a href="">Sillas</a> </p>
                    <p> <a href="">Muebles</a></p>
                    <p><a href="">Persianas</a></p>
                    <p><a href="">Bar</a></p>
                    
                    </div>

                    <button class="accordion">Refrigeracion y gastronomia</button>
                    <div class="panel">
                    <p>Lorem ipsum...</p>
                    </div>
                </div>

                <!-- PRODUCTOS DE CATEGORIA -->
                <div class="col-md-9">
                    <div class="row">
                    <?php 
                        if ($productos == NULL){
                      ?>
                      <div class="alert alert-danger" role="alert">
                        Ops! não encontramos nenhum resultado para sua busca :D<br>
                        <a href="index.php" style="color: black">Voltar para o Inicio</a>
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
                                    <span class="price"><?php echo number_format($row['precio'], 0, ',', '.')." gs"; ?></span>
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
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery-slim.min.js"><\/script>')</script>
    
    <script src="js/bootstrap.min.js"></script>
    <script src="js/holder.min.js"></script>
    <!-- Just to make our placeholder images work. Don't actually copy the next line! -->
    <script>
var acc = document.getElementsByClassName("accordion");
var i;

for (i = 0; i < acc.length; i++) {
  acc[i].addEventListener("click", function() {
    this.classList.toggle("active");
    var panel = this.nextElementSibling;
    if (panel.style.display === "block") {
      panel.style.display = "none";
    } else {
      panel.style.display = "block";
    }
  });
}
</script>


  
  </body>
</html>
