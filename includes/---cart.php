<?php
$sms= ' <script language="javascript">
Swal.fire({
	title: "CARRITO DE COMPRAS ",
	text: "¡Hemos añadido este producto a su carrito!",
	icon:"success",
	showCancelButton: true,
	confirmButtonText: "Finalizar Compra",
	cancelButtonText: "Continuar Comprando",
}).then((result) => {
	/* Read more about isConfirmed, isDenied below */
	if (result.isConfirmed) {
	window.location.href = "direccion.php";
	} else if (result.isDenied) {
	Swal.fire("Changes are not saved", "", "info")
	}
})
</script>';


if (isset($_POST['action']) && $_POST['action'] == 'addcart') {
	// $_SESSION['Carrito'] = array();
	$id =$_POST['id'];
	$qty=$_POST['qty'];
		
		//funcion que obtienen datos del producto
		$producto= getProducto($id);
		$imagen= getProdImage($id);
		
        $_SESSION['total'];
        
		$precio =  $producto['precio'];

		$newitem = array(
			'idproducto' => $id, 
			'referencia' => $producto['referencia'], 
			'nombre' => $producto['nombre'], 
			'descripcion' => $producto['descripcion_corta'], 
			'img_producto' => $imagen['url'], 
			'precio' =>  $precio, 
			'qty' => $qty
		);

		/*if not empty
		if(!empty($_SESSION['cart']))
		{    
			//and if session cart same 
			if(isset($_SESSION['cart'][$id]) == $id) {
				$_SESSION['cart'][$id]['qty']++;
			} else { 
				//if not same put new storing
				$_SESSION['cart'][$id] = $newitem;
			}
		} else  {
			$_SESSION['cart'] = array();
			$_SESSION['cart'][$id] = $newitem;
		}
		*/

		//if not empty
		if(!empty($_SESSION['cart']))
		{    
			//and if session cart same 
			if(isset($_SESSION['cart'][$id]) == $id) {
				$_SESSION['cart'][$id]['qty']= $_SESSION['cart'][$id]['qty']+$qty;
				echo $sms;

			} else { 
				//if not same put new storing
				$_SESSION['cart'][$id] = $newitem;
				echo $sms;
			}
		} else  {
			$_SESSION['cart'] = array();
			$_SESSION['cart'][$id] = $newitem;
			echo $sms;
		}
	
	
} else if (isset($_POST['action']) && $_POST['action'] == 'updatecart') {
	$id =$_POST['id'];
	$qty=$_POST['qty'];

	if(isset($_SESSION['cart'][$id]) == $id) {
		$_SESSION['cart'][$id]['qty'] = $_POST['qty'];
	}
} else if(isset($_POST['action']) && $_POST['action'] == 'deletecart') {
	$id =$_POST['id'];
	if(isset($_SESSION['cart'][$id]) == $id) {
		unset($_SESSION['cart'][$id]);
	}
}else{}
?>