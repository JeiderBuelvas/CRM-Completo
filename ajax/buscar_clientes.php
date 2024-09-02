<?php

	include('is_logged.php');//Archivo verifica que el usario que intenta acceder a la URL esta logueado
	/* Connect To Database*/
	require_once ("../config/db.php");//Contiene las variables de configuracion para conectar a la base de datos
	require_once ("../config/conexion.php");//Contiene funcion que conecta a la base de datos
	
	$action = (isset($_REQUEST['action'])&& $_REQUEST['action'] !=NULL)?$_REQUEST['action']:'';
	if (isset($_GET['id'])){
		$id_cliente=intval($_GET['id']);
		$query=mysqli_query($con, "select * from facturas where id_cliente='".$id_cliente."'");
		$count=mysqli_num_rows($query);
		if ($count==0){
			if ($delete1=mysqli_query($con,"DELETE FROM clientes WHERE id_cliente='".$id_cliente."'")){
			?>
			<div class="alert alert-success alert-dismissible" role="alert">
			  <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
			  <strong>Aviso!</strong> Datos eliminados exitosamente.
			</div>
			<?php 
		}else {
			?>
			<div class="alert alert-danger alert-dismissible" role="alert">
			  <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
			  <strong>Error!</strong> Lo siento algo ha salido mal intenta nuevamente.
			</div>
			<?php
			
		}
			
		} else {
			?>
			<div class="alert alert-danger alert-dismissible" role="alert">
			  <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
			  <strong>Error!</strong> No se pudo eliminar éste  cliente. Existen facturas vinculadas a éste producto. 
			</div>
			<?php
		}
		
		
		
	}
	if($action == 'ajax'){
		// escaping, additionally removing everything that could be (html/javascript-) code
         $q = mysqli_real_escape_string($con,(strip_tags($_REQUEST['q'], ENT_QUOTES)));
		 $aColumns = array('nombre_cliente');//Columnas de busqueda
		 $sTable = "clientes";
		 $sWhere = "";
		if ( $_GET['q'] != "" )
		{
			$sWhere = "WHERE (";
			for ( $i=0 ; $i<count($aColumns) ; $i++ )
			{
				$sWhere .= $aColumns[$i]." LIKE '%".$q."%' OR ";
			}
			$sWhere = substr_replace( $sWhere, "", -3 );
			$sWhere .= ')';
		}
		$sWhere.=" order by nombre_cliente";
		include 'pagination.php'; //include pagination file
		//pagination variables
		$page = (isset($_REQUEST['page']) && !empty($_REQUEST['page']))?$_REQUEST['page']:1;
		$per_page = 10; //how much records you want to show
		$adjacents  = 4; //gap between pages after number of adjacents
		$offset = ($page - 1) * $per_page;
		//Count the total number of row in your table*/
		$count_query   = mysqli_query($con, "SELECT count(*) AS numrows FROM $sTable  $sWhere");
		$row= mysqli_fetch_array($count_query);
		$numrows = $row['numrows'];
		$total_pages = ceil($numrows/$per_page);
		$reload = './clientes.php';
		//main query to fetch the data
		$sql="SELECT * FROM  $sTable $sWhere LIMIT $offset,$per_page";
		$query = mysqli_query($con, $sql);
		//loop through fetched data
		if ($numrows>0){
			
			?>
			<div class="table-responsive">
			  <table class="table">
				<tr  class="info">
					<th>NIT</th>
					<th>Nombre</th>
					<th>Contacto</th>
					<th>Dirección</th>
					<th>Estado</th>
					<th>Agregado</th>
					<th class='text-right'>Acciones</th>
					
				</tr>
				<?php
				while ($row=mysqli_fetch_array($query)){
						$id_cliente=$row['id_cliente'];
						$cedula=$row['cedula'];
						$nombre_cliente=$row['nombre_cliente'];
						$contacto=$row['contacto'];
						$cargo=$row['cargo'];
						$ciudad=$row['ciudad'];
						$telefono_cliente=$row['telefono_cliente'];
						$email_cliente=$row['email_cliente'];
						$direccion_cliente=$row['direccion_cliente'];
						$status_cliente=$row['status_cliente'];
						if ($status_cliente==1){$estado="Activo";}
						else {$estado="Inactivo";}
						$date_added= date('d/m/Y', strtotime($row['date_added']));
						
					?>
					<input type="hidden" value="<?php echo $cedula;?>" id="cedula<?php echo $id_cliente;?>">
					<input type="hidden" value="<?php echo $nombre_cliente;?>" id="nombre_cliente<?php echo $id_cliente;?>">
					<input type="hidden" value="<?php echo $contacto;?>" id="contacto<?php echo $id_cliente;?>">
					<input type="hidden" value="<?php echo $cargo;?>" id="cargo<?php echo $id_cliente;?>">
					<input type="hidden" value="<?php echo $ciudad;?>" id="ciudad<?php echo $id_cliente;?>">
					<input type="hidden" value="<?php echo $telefono_cliente;?>" id="telefono_cliente<?php echo $id_cliente;?>">
					<input type="hidden" value="<?php echo $email_cliente;?>" id="email_cliente<?php echo $id_cliente;?>">
					<input type="hidden" value="<?php echo $direccion_cliente;?>" id="direccion_cliente<?php echo $id_cliente;?>">
					<input type="hidden" value="<?php echo $status_cliente;?>" id="status_cliente<?php echo $id_cliente;?>">
					 
					 <!-- Datos de la empresa--->
					 
					<tr>
						<td><?php echo $cedula; ?></td>
						<td> <a href="#" data-toggle="tooltip" data-placement="top" data-html="true" title="<?php echo $telefono_cliente; ?> - <?php echo $email_cliente; ?>">
                        <div class="contact-info">
                        <div class="icon"><i class='fas fa-user'></i></div>
                        <div class="details">
                        <div class="name"><?php echo $nombre_cliente; ?></div>
                        <div class="info">
                        <i class='fas fa-phone'></i> <?php echo $telefono_cliente; ?><br>
                    <i class='fas fa-envelope'></i> <?php echo $email_cliente; ?>
                </div>
            </div>
        </div>
    </a>
</td>

<!--ESTILOS DE DIRECTORIO DE CLIENTES-->

<style>
.contact-info {
    display: flex;
    align-items: center;
}

.contact-info .icon {
    margin-right: 10px;
}

.contact-info .details {
    display: flex;
    flex-direction: column;
}

.contact-info .name {
    font-weight: bold;
    margin-bottom: 5px;
}

.contact-info .info {
    color: #777;
    font-size: 14px;
}

.contact-info .info i {
    margin-right: 5px;
}

</style>


<!-- FINAL DE ESTILOS DE DIRECTORIO--->

                       <!-- contacto de la empresa--->

                        <td> <a href="#" data-toggle="tooltip" data-placement="top" data-html="true" title="<?php echo $contacto; ?> - <?php echo $cargo; ?>">
                        <div class="contact-info">
                        <div class="icon"><i class='fas fa-user'></i></div>
                        <div class="details">
                        <div class="name"><?php echo $contacto; ?></div>
                        <div class="info">
                        <i class='fas fa-phone'>Cargo:</i> <?php echo $cargo; ?><br>
                </div>
            </div>
        </div>
    </a>
</td>
					  <!-- Dirección de la empresa--->
					  
					<td> <a href="#" data-toggle="tooltip" data-placement="top" data-html="true" title="<?php echo $direccion_cliente; ?> - <?php echo $ciudad; ?>">
                        <div class="contact-info">
                        <div class="icon"><i class='fas fa-user'></i></div>
                        <div class="details">
                        <div class="name"><?php echo $direccion_cliente; ?></div>
                        <div class="info">
                        <i class='fas fa-phone'>Ciudad:</i> <?php echo $ciudad; ?><br>
                </div>
            </div>
        </div>
    </a>
</td>

						<td><?php echo $estado;?></td>
						<td><?php echo $date_added;?></td>
						
					<td ><span class="pull-right">
					<a href="#" class='btn btn-primary' title='Editar cliente' onclick="obtener_datos('<?php echo $id_cliente;?>');" data-toggle="modal" data-target="#myModal2"><i class="glyphicon glyphicon-edit"></i></a> 
					<a href="#" class='btn btn-danger' title='Borrar cliente' onclick="eliminar('<?php echo $id_cliente; ?>')"><i class="glyphicon glyphicon-trash"></i> </a></span></td>
						
					</tr>
					<?php
				}
				?>
				<tr>
					<td colspan=11><span class="pull-right">
					<?php
					 echo paginate($reload, $page, $total_pages, $adjacents);
					?></span></td>
				</tr>
			  </table>
			</div>
			<?php
		}
	}
?>