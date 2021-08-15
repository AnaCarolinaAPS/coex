<?php 
	session_start();
	if (!isset($_SESSION['logueado'])) {
		header('Location: login.php');
	}
?>
<!DOCTYPE html>
<html>
<head>
    <title><?php echo $_SESSION['empresa'];?> | Cad. Productos</title>
	<?php include 'includes/head.php'; ?>
</head>
<body class="hold-transition skin-green sidebar-mini">
	<div class="wrapper">
		<!-- MAIN HEADER -->
		<?php include 'includes/header.php'; ?>
		<!-- MAIN HEADER END -->

		<!-- ASIDE BAR -->
		<?php include 'includes/aside.php'; ?>
		<!-- ASIDE BAR END -->

		<?php include_once "mods/objs/producto.php";?>

		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Cabicera de Contenido (Título) -->
			<section class="content-header">
				<h1>
					Productos
					<small>Registro de los productos.</small>
				</h1>
			</section>

			<!-- Contenido Principal -->
			<section class="content">
				<div class="box">
					<div class="box-header with-border">
						<!-- Botón para crear más cursos -->
						<div class="col-md-3 pull-left">
							<a href="producto_detalle.php" class="btn btn-primary" style="margin-bottom: 5px;">+ Nuevo</a>
							<!-- <button id="btnAdd" type="button" class="btn btn-primary" style="margin-bottom: 5px;">+ Nuevo</button> -->
						</div>
					</div>
					<div class="modal fade modal-mensaje" id="modal-mensaje" tabindex="-1" role="dialog">
						<div class="modal-dialog">
							<div class="modal-content">
								<div class="modal-header modal-mensaje-<?php echo $tipomensaje;?>" > <!-- modal-mensaje-success or modal-mensaje-error -->
									<button type="button" class="close" data-dismiss="modal" aria-label="Close">
										<span aria-hidden="true">&times;</span>
									</button>
									<h1 class="modal-title text-center">
										<?php if ($tipomensaje == 'success') {?>
											<img src="img/success-icon.png"> 
										<?php } else { ?>
											<img src="img/error-icon.png">
										<?php }?>
									</h1>
								</div>
								<div class="modal-body text-center">
									<p>  <?php echo $mensaje; ?></p>
								</div>
							</div>
						</div>
					</div>
					<!-- Corpo de Caja -->
					<div class="box-body">
						<div class="box-body table-responsive">
							<table class="table table-striped table-bordered display nowra" id="tabladatos">
							<thead>
								<tr>
								    <th>ID</th>
									<th>Referencia</th>
									<th>Categoría</th>
									<th>Marca</th>
									<th>Nombre</th>
									<th>Precio</th>
									<th>Valor Descuento</th>
									<th>Destaque</th>
									<th>Activo</th>
								</tr>
							</thead>
							<tbody>
								<?php 
									$_SESSION['prod_tab'] = "detalles";
									if ($productos != null) { 
										foreach ($productos as $row) {
								?>
								<tr onclick="window.location.href = 'producto_detalle.php?producto=<?php echo $row['id'];?>';">
								<td><?php echo $row['id'];?></td>
									<td><?php echo $row['referencia'];?></td>
									<td>
									<?php
										$categoriasprod = getProdCategorias($row['id']);
										// var_dump($categoriasprod);
										foreach ($categoriasprod as $categoria) {
											echo '<b>'.$categoria['nombre'].'</b><br>';
											$subcategoriasprod = getProdSubCategorias($categoria['id'], $row['id']);
											if ($subcategoriasprod != null) { 
												foreach ($subcategoriasprod as $subcategoria) {
													echo '<i class="fa fa-caret-right"></i> '.$subcategoria['nombre'].'<br>';
													$subsubcategorias = getProdSubCategorias($subcategoria['id'], $row['id']);
													if ($subsubcategorias != null) { 
														foreach ($subsubcategorias as $subsubcategoria) {
															echo '<i class="fa fa-caret-right"></i> <i class="fa fa-caret-right"></i> '.$subsubcategoria['nombre'].'<br>';
															$subsubsubcategorias = getProdSubCategorias($subsubcategoria['id'], $row['id']);
															if ($subsubsubcategorias != null) { 
																foreach ($subsubsubcategorias as $subsubsubcategoria) {
																	echo '<i class="fa fa-caret-right"></i> <i class="fa fa-caret-right"></i> <i class="fa fa-caret-right"></i>'.$subsubsubcategoria['nombre'].'<br>';
																}
															}
														}
													}
												}
											}
										}
									?>
									</td>
									<td><?php echo $row['marca'];?></td>
									<td><?php echo $row['nombre'];?></td>
									<td>
									<?php
										$minorista = "";
										if ($row['precio'] > 0) {
											$minorista = number_format($row['precio'], 0, ',', '.')." gs";
										} else {
											$minorista = "Sob consulta ";
										}
										echo $minorista;
									?>
									</td>
									<td>
									<?php
										$mayorista = "";
										if ($row['valor_descuento'] > 0) {
											$mayorista = number_format($row['valor_descuento'], 0, ',', '.')." gs";
										} else {
											$mayorista = "Sob consulta ";
										}
										echo $mayorista;
									?>
									</td>
									<td>
									<?php
										$circle_color = "";
										if ($row['destaque'] == 1) {
											echo '<span style="color: white">S</span><i class="fa fa-star text-warning"></i>';
										} else {
											echo '<span style="color: white">N</span><i class="fa fa-minus text-muted"></i>';
										}
									?>
									</td>
									<td>
									<?php
										$circle_color = "";
										if ($row['activo'] == 1) {
											echo '<span style="color: white">S</span><i class="fa fa-check text-success"></i>';
										} else {
											echo '<span style="color: white">N</span><i class="fa fa-close text-danger"></i>';
										}
									?>
									</td>
								</tr>
								<?php }}?>
							</tbody>
							</table>
						</div>
					</div>
					<!-- /.box-body -->
				</div>
				<!-- /.Caja de Texto de color gris (Default) -->
			</section>
		</div> <!-- /.content-wrapper -->

		<!-- FOOTER -->
		<?php include "includes/footer.php"; ?>
		<!-- ./FOOTER -->
	</div>
	<!-- ./Contenido -->

	<!-- SCRIPTS (js) -->
	<script type="text/javascript">
		<?php include_once "mods/js/producto.js"; ?>
	</script>
	<?php include "includes/scripts.php"; ?>
	<!-- ./SCRIPTS (js) -->
</body>
</html>