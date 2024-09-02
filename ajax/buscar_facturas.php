<?php
include 'is_logged.php'; // Archivo que verifica que el usuario que intenta acceder a la URL está logueado
require_once "../config/db.php"; // Contiene las variables de configuración para conectar a la base de datos
require_once "../config/conexion.php"; // Contiene función que conecta a la base de datos

$action = (isset($_REQUEST['action']) && $_REQUEST['action'] != null) ? $_REQUEST['action'] : '';
if (isset($_GET['id'])) {
    $numero_factura = intval($_GET['id']);
    $del1 = "DELETE FROM facturas WHERE numero_factura='" . $numero_factura . "'";
    $del2 = "DELETE FROM detalle_factura WHERE numero_factura='" . $numero_factura . "'";

    if ($delete1 = mysqli_query($con, $del1) and $delete2 = mysqli_query($con, $del2)) {
        ?>
        <div class="alert alert-success alert-dismissible" role="alert">
            <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
            <strong>Aviso!</strong> Datos eliminados exitosamente
        </div>
        <?php
    } else {
        ?>
        <div class="alert alert-danger alert-dismissible" role="alert">
            <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
            <strong>Error!</strong> No se pudo eliminar los datos
        </div>
        <?php
    }
}

if ($action == 'ajax') {
    // escaping, additionally removing everything that could be (html/javascript-) code
    $q = mysqli_real_escape_string($con, (strip_tags($_REQUEST['q'], ENT_QUOTES)));
    $sTable = "facturas, clientes, users";
    $sWhere = "";
    $sWhere .= " WHERE facturas.id_cliente=clientes.id_cliente AND facturas.id_vendedor=users.user_id";
    if ($_GET['q'] != "") {
        $sWhere .= " AND (clientes.nombre_cliente LIKE '%$q%' OR facturas.numero_factura LIKE '%$q%')";
    }

    $sWhere .= " ORDER BY facturas.id_factura DESC";

    // Query principal para obtener los datos de las facturas junto con el total de cantidades para cada factura
    $sql = "SELECT *, (SELECT SUM(cantidad) FROM detalle_factura WHERE numero_factura = facturas.numero_factura) AS cantidad FROM  $sTable $sWhere";

    $query = mysqli_query($con, $sql);

    // Generación de la tabla HTML con todas las facturas
    echo '<div class="table-responsive">';
    echo '<table class="table table-striped table-bordered">';
    echo '<thead>';
    echo '<tr class="info">';
    echo '<th><strong>Cot.</strong></th>';
    echo '<th>Fecha</th>';
    echo '<th>Teléfono</th>';
    echo '<th>Correo</th>';
    echo '<th>Cliente</th>';
    echo '<th>Comercial</th>';
    echo '<th>Estado</th>';
    echo '<th>Cantidades</th>';
    echo '<th class="text-right">Total</th>';
    echo '<th class="text-right">Acciones</th>';
    echo '</tr>';
    echo '</thead>';
    echo '<tbody>';

    while ($row = mysqli_fetch_array($query)) {
        $id_factura = $row['id_factura'];
        $numero_factura = $row['numero_factura'];
        $fecha = date("d/m/Y h:i:s A", strtotime($row['fecha_factura']));
        $nombre_cliente = $row['nombre_cliente'];
        $telefono_cliente = $row['telefono_cliente'];
        $email_cliente = $row['email_cliente'];
        $nombre_vendedor = $row['firstname'] . " " . $row['lastname'];
        $estado_factura = $row['estado_factura'];

        // Obteniendo el total de cantidades de cada factura
        $total_cantidad = $row['cantidad'];

        if ($estado_factura == 1) {
            $text_estado = "Pendiente";
            $label_class = 'badge bg-success';
        } elseif ($estado_factura == 2) {
            $text_estado = "Procesada";
            $label_class = 'badge bg-primary';
        } else {
            $text_estado = "Cancelada";
            $label_class = 'badge bg-danger'; // Puedes definir un color por defecto para un estado desconocido
        }

        $total_venta = $row['total_venta'];

        // Mostrar cada fila de factura en la tabla
        echo '<tr>';
        echo '<td><strong>' . $numero_factura . '</strong></td>';
        echo '<td>' . $fecha . '</td>';
        echo '<td>' . $telefono_cliente . '</td>';
        echo '<td>' . $email_cliente . '</td>';
        echo '<td>' . $nombre_cliente . '</td>';
        echo '<td>' . $nombre_vendedor . '</td>';
        echo '<td><span class="' . $label_class . '">' . $text_estado . '</span></td>';
        echo '<td class="text-right">' . number_format($total_cantidad) . '</td>';
        echo '<td class="text-right">$' . number_format($total_venta, 2) . '</td>';
        echo '<td class="text-right">';
        echo '<a href="editar_factura.php?id_factura=' . $id_factura . '" class="btn btn-primary btn-sm" title="Editar cotización"><i class="glyphicon glyphicon-edit"></i></a> ';
        echo '<a href="#" class="btn btn-info btn-sm" title="Descargar cotización" onclick="imprimir_factura(\'' . $id_factura . '\');"><i class="glyphicon glyphicon-download-alt"></i></a> ';
        echo '<a href="#" class="btn btn-danger btn-sm" title="Borrar cotización" onclick="eliminar(\'' . $numero_factura . '\')"><i class="glyphicon glyphicon-trash"></i></a>';
        echo '</td>';
        echo '</tr>';
    }

    echo '</tbody>';
    echo '</table>';
    echo '</div>';
}
?>

<script src="https://cdnjs.cloudflare.com/ajax/libs/xlsx/0.16.9/xlsx.full.min.js"></script>
<script>
    function exportToExcel() {
        /* Crear un libro de Excel */
        var wb = XLSX.utils.table_to_book(document.getElementsByTagName('table')[0], {sheet:"Sheet JS"});

        /* Descargar el archivo Excel */
        XLSX.writeFile(wb, 'cotizaciones_realizadas.xlsx');
    }
</script>

