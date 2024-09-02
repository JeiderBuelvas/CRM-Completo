<?php
# conectare la base de datos
$con = @mysqli_connect(DB_HOST, DB_USER, DB_PASS, DB_NAME);
if (!$con) {
    die("Imposible conectarse: " . mysqli_error($con));
}
if (@mysqli_connect_errno()) {
    die("Conexion fallida: " . mysqli_connect_errno() . " : " . mysqli_connect_error());
}

// Establecer la codificaci¨®n de caracteres a UTF-8
mysqli_set_charset($con, "utf8");
?>
