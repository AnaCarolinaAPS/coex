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

                            <p class="price">Precio: <span> <span class="price" id = "price"><?php if(($producto['precio']>0)){ echo number_format($producto['precio'], 0, ',', '.')." gs"; } else{ echo "<span class='price-consult'>Sobre Consulta</span>";} ?></span>
                            </p>
                            <hr>

                           <?php $cant = getStock($id)['stock'];?>
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
                                        <input type="text" value="<?php echo $id; ?>" name="id" id="id" class="d-none">   
                                        <input type="text" value="" name="precio" id="precio" class="d-none">   
                                        
                                        <div id="atributos" class="col-md-4">

                                        </div>

                                        <div class="col-md-2">
                                            Cantidad:
                                            <select class="form-control form-control-lg"  name="qty" id="qtyStock">   
                                            <!-- <option value="1">1</option>    -->
                                                <?php for ($i=1; $i <= $cant; $i++) { ?>                                      
                                                    <option value="<?php echo $i;?>"><?php echo $i;?></option>
                                                <?php } ?>      
                                            </select>
                                        </div>
                                        <br>
                                        <button type="submit" name="action" value="addcart" class="site-btn btn-buy" <?php if ($cant == 0 OR $cant == "" OR $cant == "NULL" ){ echo "disabled"; }?> >  
                                            <i class="fa fa-shopping-cart" aria-hidden="true"></i> Agregar al Carrito
                                        </button>
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

    $(document).ready(function(){
        criaAtributos(); //carrega os dados do combobox
    });

    criaAtributos = function() {
        // var iconCarregando = $("<img src='img/ajax-loader.gif' class='icon'/> <span>Carregando dados. Por favor aguarde...</span>"); //Carrega a Gif
        var url = "funciones/stock.php";//Arquivo php que será chamado no GET
        var param = "1";//GET ALL 
        var producto = document.getElementById("id").value;
        var myParent = document.getElementById("atributos");
        $('#atributos').empty();

        //Vamos usar o metodo generico
        $.ajax({
            type:"GET",            
            url: url,
            cache: false,
            contentType: 'application/json;',
            dataType: "json",
            data: { "parametro":param, "producto":producto },
            beforeSend: function(){
                // $("#ajaxload2").html(iconCarregando);
            },
            complete: function(){
                // $(iconCarregando).remove();             
            },      
            success: function(data) {
                $.each(data.message, function(i,obj){
                    //Create and append select list
                    var titulo = document.createElement("span");
                    titulo.innerText = ""+obj.atributo;
                    myParent.appendChild(titulo);

                    var selectList = document.createElement("select");
                    selectList.id = "sel-"+obj.id;//""+obj.nombre;
                    selectList.className = "form-control";
                    selectList.name = "atributo[]";
                    // selectList.setAttribute("onchange", function(){actualizaCantidad();});
                    selectList.onchange = function(){
                        var atr = document.getElementsByName("atributo[]");
                        for (i = 0; i < atr.length-1; i++) {
                            if ("sel-"+obj.id == atr[i].id) {
                                criaAtributosVal(atr[i+1].id, atr[i+1].id.substring(4), i+1);
                            }
                        }
                        actualizaCantidad();
                    };
                    myParent.appendChild(selectList);

                    var input = document.createElement("input");
                    input.setAttribute("type", "hidden");
                    input.setAttribute("id", "input-"+obj.id);
                    myParent.appendChild(input);
                });
                
                var atr = document.getElementsByName("atributo[]");
                criaAtributosVal(atr[0].id, atr[0].id.substring(4), 0);
            },
            error: function(data) {
                $("#atributos").empty();
                $("#atributos").html("<p><b> Erro ao carregar os dados.</b></p>");          
            }
        }); 
    }

    criaAtributosVal = function(select, atributo, nro) {
        // var iconCarregando = $("<img src='img/ajax-loader.gif' class='icon'/> <span>Carregando dados. Por favor aguarde...</span>"); //Carrega a Gif
        var url = "funciones/stock.php";//Arquivo php que será chamado no GET
        var param = "2";//GET ALL 
        var producto = document.getElementById("id").value;
        var depen = "";

        if (nro > 0) {
            var atr = document.getElementsByName("atributo[]");
            depen = "";
            for (i = 0; i < nro; i++) {
                if (i > 0) {
                    depen = depen + ",";
                }
                depen = depen + atr[i].value;
            }
        } else {
            depen = "NULL";
        }
        // console.log("---> COMBOS ANTERIORES -->" + depen);
        
        $.ajax({
            type:"GET",            
            url: url,
            cache: false,
            contentType: 'application/json;',
            dataType: "json",
            data: { "parametro":param, "dependencia":depen, "atributo":atributo },
            beforeSend: function(){
                // $("#ajaxload2").html(iconCarregando);
            },
            complete: function(){
                // $(iconCarregando).remove();    
            },      
            success: function(data) {
                var primer = " selected";
                var primeiro = "";
                $('#'+select).empty();
                $.each(data.message, function(i,obj){
                    if (primer == " selected") {
                        document.getElementById("input-"+atributo).value = obj.id; 
                        primeiro = obj.id;
                    }
                    $('#'+select).append('<option value="' + obj.id + '"'+primer+'>' + obj.nombre + '</option>');
                    primer = "";
                    console.log('->'+select+" ->"+atributo);
                });
                
                var atr = document.getElementsByName("atributo[]");
                if (atr.length-1 > nro) {
                    nro++;
                    criaAtributosVal(atr[nro].id, atr[nro].id.substring(4), nro);
                } else {
                    // $("#qtyStock").empty();
                    // console.log('---->ESVAZIA A QUANTIDADE');
                    actualizaCantidad();
                }
            },
            error: function(data) {
                $("#atributos").empty();
                $("#atributos").html("<p><b> Erro ao carregar os dados.</b></p>");          
            }
        }); 
    }

    actualizaCantidad = function() {
        // var iconCarregando = $("<img src='img/ajax-loader.gif' class='icon'/> <span>Carregando dados. Por favor aguarde...</span>"); //Carrega a Gif
        var url = "funciones/stock.php";//Arquivo php que será chamado no GET
        var param = "3";//GET ALL 
        var producto = document.getElementById("id").value;

        var atr = document.getElementsByName("atributo[]");
        var valores = "";
        for (i = 0; i < atr.length; i++) {
            if (i > 0) {
                valores = valores + ",";
            }
            valores = valores + atr[i].value;
        }
    
        // console.log ("---> Valores "+valores);

        $("#qtyStock").empty();

        $.ajax({
            type:"GET",            
            url: url,
            cache: false,
            contentType: 'application/json;',
            dataType: "json",
            data: { "parametro":param, "valores":valores},
            beforeSend: function(){
                // $("#ajaxload2").html(iconCarregando);
            },
            complete: function(){
                // $(iconCarregando).remove();             
            },      
            success: function(data) {
                $.each(data.message, function(i,obj){
                    var precio = formatMoney(obj.precio) + " gs";
                    document.getElementById("price").innerText = precio; 
                    document.getElementById("precio").value = obj.precio; //input
                    //atualiza select de quantidades
                    for (i = 0; i < obj.stock; i++){
                        var nro = i+1;
                        $('#qtyStock').append($('<option>', {
                            value: nro,
                            text: ''+nro
                        }));
                        // console.log('->'+nro);
                    } 
                });
            },
            error: function(data) {
                $("#atributos").empty();
                $("#atributos").html("<p><b> Erro ao carregar os dados.</b></p>");          
            }
        }); 
    }

    function formatMoney(amount, decimalCount = 0, decimal = ",", thousands = ".") {
        try {
            decimalCount = Math.abs(decimalCount);
            decimalCount = isNaN(decimalCount) ? 2 : decimalCount;

            const negativeSign = amount < 0 ? "-" : "";

            let i = parseInt(amount = Math.abs(Number(amount) || 0).toFixed(decimalCount)).toString();
            let j = (i.length > 3) ? i.length % 3 : 0;

            return negativeSign + (j ? i.substr(0, j) + thousands : '') + i.substr(j).replace(/(\d{3})(?=\d)/g, "$1" + thousands) + (decimalCount ? decimal + Math.abs(amount - i).toFixed(decimalCount).slice(2) : "");
        } catch (e) {
            console.log(e)
        }
    };
    

</script>



<?php include("includes/scripts.php"); ?>

  
  </body>
</html>
