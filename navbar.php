<?php
// Inicia la sesión si aún no se ha iniciado
if (session_status() == PHP_SESSION_NONE) {
    session_start(); 
}

// Verifica si el usuario ha iniciado sesión y su ID es igual a 1
$mostrar_menu = false;
if (isset($_SESSION['user_id']) && $_SESSION['user_id'] == 1) {
    $mostrar_menu = true;
}
?>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Título de tu página</title>
    <!-- Enlaces a CSS y otros elementos del encabezado -->
    <!-- Agrega tu enlace a Bootstrap aquí -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <style>
        .navbar-brand {
            display: flex;
            align-items: center; /* Alinea verticalmente el contenido */
        }
        .navbar-brand img {
            width: 110px; /* Ajusta el ancho según tus necesidades */
            height: auto; /* Esto mantiene la proporción de aspecto */
        }
        .navbar-fixed-top {
            border-radius: 0; /* Opcional: elimina el borde redondeado */
        }
        body {
            padding-top: 70px; /* Ajusta el padding para que el contenido no quede oculto debajo del navbar fijo */
        }
    </style>
    <!-- Agrega los enlaces a los scripts de Bootstrap y jQuery aquí -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>

<nav class="navbar navbar-default navbar-fixed-top">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">
                <img src="img/logo.png" alt="Logo">
            </a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li class="<?php echo $active_facturas;?>"><a href="facturas.php"><i class='glyphicon glyphicon-list-alt'></i> Cotizaciones <span class="sr-only">(current)</span></a></li>
                <li class="<?php echo $active_productos;?>"><a href="productos.php"><i class='glyphicon glyphicon-shopping-cart'></i> Servicios </a></li>
                <li class="<?php echo $active_clientes;?>"><a href="clientes.php"><i class='glyphicon glyphicon-user'></i> Directorio de Clientes</a></li>
                <?php if ($mostrar_menu): ?>
                    <li class="<?php echo $active_usuarios;?>"><a href="usuarios.php"><i class='glyphicon glyphicon-lock'></i> Usuarios</a></li>
                    <li class="<?php if(isset($active_perfil)){echo $active_perfil;}?>"><a href="perfil.php"><i class='glyphicon glyphicon-cog'></i> Configuración</a></li>
                <?php endif; ?>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <!--<li><a href="#" target='_blank'><i class='glyphicon glyphicon-envelope'></i></a></li>-->
                <li><a href="login.php?logout"><i class='glyphicon glyphicon-off'></i> Cerrar Sesión</a></li>
            </ul>
        </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>

</body>
</html>
