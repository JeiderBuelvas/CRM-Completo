<?php
include 'is_logged.php'; //Archivo verifica que el usario que intenta acceder a la URL esta logueado
$id_factura = $_SESSION['id_factura'];
// Inicia validacion del lado del servidor
if (empty($_POST['id_cliente'])) {

    $errors[] = "ID vac¨ªo";

} else if (empty($_POST['id_vendedor'])) {

    $errors[] = "Selecciona el vendedor";

} else if (empty($_POST['condiciones'])) {

    $errors[] = "Selecciona forma de pago";

} else if ($_POST['estado_factura'] == "") {

    $errors[] = "Selecciona el estado de la cotizaci¨®n";

} else if (!empty($_POST['id_cliente']) && !empty($_POST['id_vendedor']) && !empty($_POST['condiciones']) && $_POST['estado_factura'] != "") {

    /* Connect To Database*/
    require_once "../config/db.php"; //Contiene las variables de configuracion para conectar a la base de datos
    require_once "../config/conexion.php"; //Contiene funcion que conecta a la base de datos
    // escaping, additionally removing everything that could be (html/javascript-) code

    $id_cliente = intval($_POST['id_cliente']);
    $id_vendedor = intval($_POST['id_vendedor']);
    $condiciones = intval($_POST['condiciones']);

    $estado_factura = intval($_POST['estado_factura']);

    // AGREGA ESTE CAMPO EN TU CONSULTA UPDATE
    $nota = $_POST['nota'];
    $tiempo_entrega = $_POST['tiempo_entrega'];

    // YA SE AGREGO EL CAMPO NOTA
    $sql = "UPDATE facturas SET id_cliente='" . $id_cliente . "', id_vendedor='" . $id_vendedor . "', condiciones='" . $condiciones . "', estado_factura='" . $estado_factura . "', nota='" . $nota . "', tiempo_entrega='" . $tiempo_entrega . "' WHERE id_factura='" . $id_factura . "'";
    $query_update = mysqli_query($con, $sql);

    if ($query_update) {
        $messages[] = "Cambio realizado...";
    } else {
        $errors[] = "Lo siento algo ha salido mal intenta nuevamente." . mysqli_error($con);
    }

} else {

    $errors[] = "Error desconocido.";

}

if (isset($errors)) {?>
    <div class="alert alert-danger" role="alert">
        <button type="button" class="close" data-dismiss="alert">&times;</button>
        <strong>Error!</strong>
        <?php foreach ($errors as $error) {echo $error;}?>
    </div>
<?php }
if (isset($messages)) {?>
    <div class="alert alert-success" role="alert">
        <button type="button" class="close" data-dismiss="alert">&times;</button>
        <strong>Loading!</strong>
        <?php foreach ($messages as $message) {echo $message;}?>
    </div>
<?php }?>