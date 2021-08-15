<?php session_start();?>
<!doctype html>
<html lang="es">
<?php 
  require "funciones/funciones.php";
  include("includes/head.php"); 
  include("includes/cart.php");
  if (isset($_SESSION['cart'])) { $cart = array($_SESSION['cart']); }
?>
  <body>
  <?php include("includes/header.php"); ?>
<div class="container">

<br><br>
	<table id="cart" class="table table-hover table-condensed">
    				<thead>
						<tr>
							<th style="width:50%">PRODUCTO</th>
							<th style="width:10%">PRECIO</th>
							<th style="width:8%">CANT.</th>
							<th style="width:22%" class="text-center">SUB TOTAL</th>
							<th style="width:10%"></th>
						</tr>
					</thead>
					<tbody>
                       
                           
                    <?php foreach ($_SESSION['cart'] as $producto) { ?>	        
						<tr>
                        <form action=""  method="post" ?>
                        <input type="text" name="id" value="<?php echo $producto['idproducto'] ?>" class="d-none">

							<td data-th="Product">
								<div class="row">
									<div class="col-sm-3 hidden-xs"><img src="img/productos/<?php if (isset($producto['img_producto'])) {
										echo $producto['img_producto'];
									} else {
										echo "no-image.png";
									}?>" alt="..." class="img-responsive"/></div>
									<div class="col-sm-9">
										<h4 class="nomargin"><?php echo $producto['nombre'] ?></h4>
										<!--p>Quis aute iure reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor sit amet.</p-->
									</div>
								</div>
							</td>
							<td data-th="Price"><?php echo number_format($producto['precio'], 0, ',', '.')." Gs";?></td>
							<td data-th="Quantity">
								<input type="number" name="qty" class="form-control text-center" value="<?php echo($producto['qty']) ?>">
                            </td>
                            <?php $precio = number_format($producto['qty']*$producto['precio'], 0, ',', '.')." Gs";?>
							<td data-th="Subtotal" class="text-center">	<?php echo $precio ?></td>
							<td class="actions" data-th="">
								<button type="submit" class="btn btn-info btn-sm" name="action" value="updatecart" ><i class="fa fa-refresh"></i></button>
								<button type="submit" class="btn btn-danger btn-sm" name="action" value="deletecart" ><i class="fa fa-trash-o"></i></button>								
                            </td>
                            
                            </form>	
                        </tr>


                    <?php 	} ?>   
					</tbody>
					<tfoot>
						<tr class="visible-xs">
							<td class="text-center"><strong>	<?php echo number_format(getTotalCart(), 0, ',', '.')." Gs";?></strong></td>
						</tr>
						<tr>
							<td><a href="#" class="btn btn-warning"><i class="fa fa-angle-left"></i> Continuar Comprando</a></td>
							<td colspan="2" class="hidden-xs"></td>
							<td class="hidden-xs text-center"><strong>Total <?php echo number_format(getTotalCart(), 0, ',', '.')." Gs";?></strong></td>
							<td><a href="direccion.php" class="btn btn-success btn-block">Finalizar Pedido <i class="fa fa-angle-right"></i></a></td>
						</tr>
					</tfoot>
                </table>
                




</div>