<?php 
    headerAdmin($data); 
?>
    <div id="contentAjax"></div> 
    <main class="app-content">
      <div class="app-title">
        <div>
            <h1><i class="fas fa-user-tag"></i> <?= $data['page_title'] ?>
              <?php if($_SESSION['permisosMod']['w']){ ?>
              <?php } ?> 
            </h1>
        </div>
        <ul class="app-breadcrumb breadcrumb">
          <li class="breadcrumb-item"><i class="fa fa-home fa-lg"></i></li>
          <li class="breadcrumb-item"><a href="<?= base_url(); ?>/venta"><?= $data['page_title'] ?></a></li>
        </ul>
      </div>

      <?php


require 'model/Persona.php';
require 'controller/personController.php';

require 'model/Producto.php';
require 'controller/productController.php';

$productController = new productController();
$personController = new personController();


?>


<div class="container">
<form method="POST" action="">

    <div class="jumbotron well">
        <div class="text-center">
            <h1>FACTURA DE VENTA</h1>
        </div>
        <br>
        <div class="text-right">
            <div class="input-group input-group-lg col-sm-offset-10" align="left">
                <span class="input-group-addon" for="nofactura">No. Factura:</span>
                <input type="text"  name="nofactura" id="nofactura" style="width:100px">
            </div>
        </div>
        <br>
        <blockquote>
            <div class="form-horizontal">
                <div class="form-group">
                    <label for="selectCliente" class="col-sm-2 control-label">Cliente</label>
                    <div class="col-sm-10">
                        <select class="form-control" id="selectCliente" name="selectCliente">
                            <?php foreach ($personController->listPerson() as $result) { ?>
                                <option value="<?php echo $result->__get('idpersona'); ?>"><?php echo $result->__get('nombres'); ?></option>
                            <?php } ?>
                        </select>
                    </div>
                </div>
                <div class="form-group">
                    <label for="txtDate" class="col-sm-2 control-label">Fecha</label>
                    <div class="col-sm-10">
                        <input type="date" min="2000-01-02" class="form-control" id="txtDate" name="txtDate">
                    </div>
                </div>
            </div>
        </blockquote>
        <br>
        <blockquote>
            <div class="form-horizontal">
                <div class="form-group">
                    <label for="selectProducto" class="col-sm-2 control-label">Producto</label>
                    <div class="col-sm-10">
                        <select class="form-control" id="selectProducto" name="selectProducto">
                            <?php foreach ($productController->listProduct() as $result) { ?>
                                <option title="<?php echo $result->__get('precio'); ?>" value="<?php echo $result->__get('idproducto'); ?>"><?php echo $result->__get('nombre'); ?></option>
                            <?php } ?>
                        </select>
                    </div>
                </div>
                <div class="form-group">
                    <label for="txtCantidad" class="col-sm-2 control-label">Cantidad</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="txtCantidad" name="txtCantidad">
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                        <button type="button" class="btn btn-info" id="btnAgregar">Agregar</button>
                    </div>
                </div>
            </div>
        </blockquote>
        <br>
        <br>
        <blockquote>
            <table class="table table-hover" id="tablaDatos">
                <thead>
                    <th>Código producto</th>
                    <th>Descripción</th>
                    <th>Cantidad</th>
                    <th>Valor Total</th>
                </thead>
                <tbody id="recibeDatos">

                </tbody>
            </table>
            <br><br><br>
            <div class="form-inline col-sm-offset-2">
                <div class="form-group">
                    <label for="txtTotalArt">Total artículos</label>
                    <input type="text" class="form-control" id="txtTotalArt" name="txtTotalArt" readonly="">
                </div>
                <div class="form-group">
                    <label for="txtTotalVenta">Total Venta</label>
                    <input type="text" class="form-control" id="txtTotalVenta"  name="txtTotalVenta" readonly="">
                </div>
            </div>

        </blockquote>
        <br>
        <br>
        <blockquote>
                <div align="center">
                <button type="submit" class="btn btn-danger btn-lg" id="btnGuardar" name="btnGuardar">GUARDAR</button>
                </div>
        </blockquote>

    </div>
    </form>

</div>



<?php 
$conexion=new PDO('mysql:host=localhost;dbname=agroveterinaria','root','');

$factura = $_POST['nofactura'];
$cliente = $_POST['selectCliente'];
$producto = $_POST['selectProducto'];
$cantidad = $_POST['txtTotalArt'];
$total = $_POST['txtTotalVenta'];

$precio="'SELECT precio FROM producto WHERE idproducto='$producto'";


if(isset($_POST['btnGuardar'])){
$consulta =$conexion->prepare("CALL sp_ingreso_venta('$factura','$cliente','$producto','$cantidad','$precio','$total')");

$consulta->execute();

  }
  
?>

    </main>
<?php footerAdmin($data); ?>
    