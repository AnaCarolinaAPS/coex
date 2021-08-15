<?php session_start();
/*var_dump($_SESSION['cart']);
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);*/
?>
<!doctype html>
<html lang="es">
<?php 
	require "funciones/funciones.php";
    include("includes/head.php");            
    if(isset($_GET['id'])){$id=$_GET['id'];}else{$id='1';}

      $producto =getProducto($id);


			if (isset($_POST['nombre'])) {
                $guardarpedido = savePedidoExpress ($_POST['nombre'], $_POST['telefono'], $_POST['email'], $_POST['ciudad'],$id, $_POST['mensaje']);
				if ($guardarpedido > 0) {
					$tipomensaje = 'success';			   
                    $mensaje= '<p class="text-center alert alert-success">Tu pedido se generó de forma exitosa, en breve nos pondremos en contacto contigo :)</p>';
                   
                    // the message
                    $nombre=  "Nombre: ". $_POST['nombre'];
                    $telefono= "Telefono: ".$_POST['telefono'];
                    $ciudad= "Ciudad: ".$_POST['ciudad'];
                    $mensajeform = "Mensaje: ".$_POST['mensaje'];
                    $msg = $nombre."\n".  $telefono."\n".$mensajeform."\n".$ciudad;

                    // use wordwrap() if lines are longer than 70 characters
                    // $msg = wordwrap($msg,300);
                    // send email
                    //    mail("capacitcursoscde@gmail.com","Nuevo Pedido Express",$msg);



                    $to = "capacitcursoscde@gmail.com";
                    $subject = "Nuevo Pedido Express";
                    //$txt = $msg;
                    $headers = "From:capacitcursoscde@gmail.com" . "\r\n" .
                    "CC: capacitparaguay@gmail.com";

                    mail($to,$subject,$msg,$headers);
                  
					//echo "<script type='text/javascript'>document.location.href='pedido-completado.php?ped=".$guardarpedido."';</script>";
				}	else if ($guardarpedido == null) {
					$tipomensaje = 'error';
					$mensaje = '<p class="text-center alert alert-danger">Csdonsulte al administrador de sistemas.<br>Registro NO ENCONTRADO</p>';
				} else {
					$tipomensaje = 'error';
					$mensaje = '<p class="text-center alert alert-success">sdsdsdConsulte al administrador de sistemas>Error->"'.$guardarpedido.'"</p>';
                }
                
            }

         
			
		      
?>
  <body>
<!--script src="//code.jquery.com/jquery-1.11.1.min.js"></script-->
    	<!-- Header section -->
    <?php 
    include("includes/header.php"); 
    include("includes/cart.php"); 
    ?>
    
	<!-- Header section end -->
    <main role="main">
    <section id="page-info">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <a href="index.php">Inicio / </a><a href="categoria.php">Productos / </a> <a href="#"><?php echo  $producto['nombre']; ?></a>
                </div>
            </div>
        </div>
    </section > 
        <section id="product-area">
        
        <div class="container"><?php  include("includes/mensaje.php"); ?></div>
        
            <div class="container">           
                <div class="row">                
                    <!-- MENU CATEGORIAS -->
                    <?php $images =getProdImages($id) ?>                    
                        <div class="col-md-6">
                            <div class="owl-carousel owl-theme" id="owl-product">	
                                    <?php if (isset($images)) { ?>		
                                        <?php foreach ($images as $row) { ?>                                           
                                        
                                            <div class="item">
                                                <div class="product-single-img">
                                                    <figure>                                                
                                                        <img src="img/productos/<?php echo $row['url'];?>" class="img-fluid" alt="">                                                   
                                                    </figure>
                                                </div>
                                            </div>
                                            <?php }?>
                                        <?php } else { ?> 
                                        <img class="" src="img/productos/no-image.png">
                                    <?php } ?>
                            </div>
                         </div>
                    <!-- PRODUCTOS DE CATEGORIA -->
                    
                    <div class="col-md-6">
                        
                        <hr>
                            <H1><?php echo  $producto['nombre']; ?></H1>
                            <hr>
                           <?php if (isset($producto['referencia'])) { ?>
                            <p class="price">Referencia:<?php echo $producto['referencia'];?></p>
                                <?php } ?>
                            <p><?php echo  $producto['descripcion_corta']; ?></p>

                            <p class="price">Precio: <span> <span class="price"><?php if(($producto['precio']>0)){ echo number_format($producto['precio'], 0, ',', '.')." gs"; } else{ echo "<span class='price-consult'>Sobre Consulta</span>";} ?></span>
</p>
                            <hr>

                            <?php $cant =  getStock($id)['stock']; ?>
                           <?php if ($producto['precio'] == 0 OR $cant == 0 OR $cant == "" OR $cant == "NULL" ) {?>  

                           <!-- Button trigger modal -->
                            <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#consultaproducto">
                            <i class="fa fa-envelope-o" aria-hidden="true"></i>  Realizar Consulta
                            </button>

                            <!-- Modal -->
                            <div class="modal fade" id="consultaproducto" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                            <div class="modal-dialog" role="document">
                                <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="x"> <i class="fa fa-envelope-o" aria-hidden="true"></i> Consultar sobre este producto
                                    </h5>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                                <form class="" method="POST">
                                <div class="modal-body">
                               
                                     
                                            <input type="text" class="form-control" id="nombre" name="nombre" aria-describedby="nombre" placeholder="Nombre" required="true">
                                            <br><input type="text" class="form-control" id="email"  name="email" type="email" aria-describedby="e-mail" placeholder="E-mail" required="true">
                                            <br><input type="text" class="form-control" id="telefono"  name="telefono" aria-describedby="nombre" placeholder="telefono" required="true">
                                            <br><input type="text" class="form-control" id="ciudad"  name="ciudad" aria-describedby="nombre" placeholder="Ciudad" required="true">
                                            <br><textarea class="form-control" id="exampleFormControlTextarea1"  name="mensaje" rows="3" placeholder="mensaje"></textarea>

                                            <!--a href="https://api.whatsapp.com/send?phone=595973642631&text=Hola,%20quiero%20saber%20mas%20sobre%20este%20producto:<?php echo  $producto['nombre']; ?>"  name=" " class="btn btn-success"><i class="fa fa-whatsapp" aria-hidden="true"></i> Hable Con un Vendedor</a-->
                                    
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Salir</button>
                                     <input  type="submit" name="guardar" class="btn btn-primary" value="Enviar Pedido"> 
                                </div>
                                </form>
                                </div>
                            </div>
                            </div>  

                                

                                <?php } else { ?>   

                                    <form action="" method="post">
                                        <input type="text" value="<?php echo $id; ?>" name="id" class="d-none">
                                        <div class="col-md-2">
                                       
                                        
                                        Cantidad:
                                        <select class="form-control form-control-lg"  name="qty"  >  
                                        <option value="1">1</option>   
                                             <?php for ($i=1; $i <= $cant; $i++) { ?>                                      
                                                <option value="<?php echo $i;?>"><?php echo $i;?></option>
                                             <?php } ?>      
                                        </select>

                                        </div>
                                        <br>
                                       
                                        <button type="submit" name="action" value="addcart" class="site-btn btn-buy" <?php if ($cant == 0 OR $cant == "" OR $cant == "NULL" ){ echo "disabled"; }?> >  <i class="fa fa-shopping-cart" aria-hidden="true"></i> Agregar al Carrito</button>
                                        <?php if ($cant == 0 OR $cant == "" OR $cant == "NULL" ){ echo "<br><small style='color: red;'>**Sin Stock**</small>"; } ?>
                                    </form>
                                
                               <?php }  ?>
                          
                     </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <hr>
                        <h3>DETALLES DEL PRODUCTO</h3>
                        <hr>
                        <p><?php echo  $producto['descripcion_detallada']; ?></p>
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
    <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
    
    <script src="js/bootstrap.min.js"></script>
    <script src="js/holder.min.js"></script>       
	<script src="js/owl.carousel.min.js"></script>
    <!-- Just to make our placeholder images work. Don't actually copy the next line! -->
    <script>
$('#owl-product').owlCarousel({
    loop:true,
    margin:0,
	dots:false,
	lazyLoad:true,
	autoplay:true,
    nav:true,
	navText : ['<i class="fa fa-angle-left" aria-hidden="true"></i>','<i class="fa fa-angle-right" aria-hidden="true"></i>'],
    responsive:{
        0:{
            items:1
        },
        600:{
            items:1
        },
        1000:{
            items:1
        }
    }



})
</script>



<?php include("includes/scripts.php"); ?>

  
  </body>
</html>
