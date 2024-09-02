<style type="text/css">
table { vertical-align: top; }
tr    { vertical-align: top; }
td    { vertical-align: top; }
.midnight-blue{
	background:#2c3e50;
	padding: 4px 4px 4px;
	color:white;
	font-weight:bold;
	font-size:12px;
}
.silver{
	background:white;
	padding: 3px 4px 3px;
}
.clouds{
	background:#ecf0f1;
	padding: 3px 4px 3px;
}
.border-top{
	border-top: solid 1px #bdc3c7;
	
}
.border-left{
	border-left: solid 1px #bdc3c7;
}
.border-right{
	border-right: solid 1px #bdc3c7;
}
.border-bottom{
	border-bottom: solid 1px #bdc3c7;
}
table.page_footer {width: 100%; border: none; background-color: white; padding: 2mm;border-collapse:collapse; border: none; font-size: 10px;}
}
-->
</style>
<page backtop="15mm" backbottom="15mm" backleft="15mm" backright="15mm" style="font-size: 12pt; font-family: arial" >
        <page_footer>
        <table class="page_footer">
            <tr>

                <td style="width: 50%; text-align: left">
                    P&aacute;gina [[page_cu]]/[[page_nb]]
                </td>
                <td style="width: 50%; text-align: right">
                    &copy; <?php echo "F02-P006-V Polyuprotec S.A "; echo  $anio=date('Y'); ?>
                </td>
            </tr>
        </table>
    </page_footer>
	<?php include("encabezado_factura.php");?>
    <br>
    

	
    <table cellspacing="0" style="width: 100%; text-align: left; font-size: 11pt;">
        <tr>
           <td style="width:50%;" class='midnight-blue'>COTIZADO A</td>
        </tr>
		<tr>
           <td style="width:50%;" >
			<?php 
				$sql_cliente=mysqli_query($con,"select * from clientes where id_cliente='$id_cliente'");
				$rw_cliente=mysqli_fetch_array($sql_cliente);
				echo $rw_cliente['nombre_cliente'];
				echo "<br>";
				echo $rw_cliente['contacto'];
				echo "<br>";
				echo $rw_cliente['cargo'];
				echo "<br>";
				echo $rw_cliente['direccion_cliente'];
				echo "<br> Teléfono: ";
				echo $rw_cliente['telefono_cliente'];
				echo "<br> Email: ";
				echo $rw_cliente['email_cliente'];
			?>
			
		   </td>
        </tr>
        
   
    </table>
    
       <br>
		<table cellspacing="4" style="width: 100%; text-align: left; font-size: 11pt;">
        <tr>
           <td style="width:15%;" class='midnight-blue'>COMERCIAL</td>
           <td style="width:28%;" class='midnight-blue'>CORREO</td>
		  <td style="width:25%;" class='midnight-blue'>FECHA</td>
		  <td style="width:15%;" class='midnight-blue'>CELULAR</td>
		   <td style="width:18%;" class='midnight-blue'>FORMA DE PAGO</td>
        </tr>
		<tr>
           <td style="width:15%;">
			<?php 
				$sql_user=mysqli_query($con,"select * from users where user_id='$id_vendedor'");
				$rw_user=mysqli_fetch_array($sql_user);
				echo $rw_user['firstname']." ".$rw_user['lastname'];
			?>
		   </td>
		   <td style="width:28%;">
			<?php 
				$sql_user=mysqli_query($con,"select * from users where user_id='$id_vendedor'");
				$rw_user=mysqli_fetch_array($sql_user);
				echo $rw_user['user_email'];
			?>
		   </td>
		   
		  <td style="width:25%;"><?php echo date("d/m/Y", strtotime($fecha_factura));?></td>

		  <td style="width:15%;">
			<?php 
				$sql_user=mysqli_query($con,"select * from users where user_id='$id_vendedor'");
				$rw_user=mysqli_fetch_array($sql_user);
				echo $rw_user['celular'];
			?>
		   </td>
		   <td style="width:18%;" >
				<?php 
				if ($condiciones==1){echo "100% anticipo contra proforma";}
				elseif ($condiciones==2){echo "A Convenir.";}
				elseif ($condiciones==3){echo "30 Dias Fecha Facturada";}
				elseif ($condiciones==4){echo "50% anticipo - 50% crédito";}
                elseif ($condiciones==5){echo "50% anticipo - 50% pago contado";}
				?>
		   </td>
        </tr>
		
        
   
    </table>
	<br>
  
    <table cellspacing="0" style="width: 100%; text-align: left; font-size: 10pt;">
        <tr>
            <th style="width: 10%;text-align:center" class='midnight-blue'>CANT.</th>
            <th style="width: 53%" class='midnight-blue'>DESCRIPCION</th>
            <th style="width: 8%;text-align:center" class='midnight-blue'>KG/UND.</th>
            <th style="width: 15%;text-align: right" class='midnight-blue'>PRECIO</th>
            <th style="width: 15%;text-align: right" class='midnight-blue'>PRECIO TOTAL</th>
            
        </tr>

<?php
$nums=1;
$sumador_total=0;
$sql=mysqli_query($con, "select * from products, detalle_factura, facturas where products.id_producto=detalle_factura.id_producto and detalle_factura.numero_factura=facturas.numero_factura and facturas.id_factura='".$id_factura."'");

while ($row=mysqli_fetch_array($sql))
	{
	$id_producto=$row["id_producto"];
	$codigo_producto=$row['codigo_producto'];
	$cantidad=$row['cantidad'];
	$nombre_producto=$row['nombre_producto'];
  $kilogramos=$row['kilogramos'];
	
	$precio_venta=$row['precio_venta'];
	$precio_venta_f=number_format($precio_venta,2);//Formateo variables
	$precio_venta_r=str_replace(",","",$precio_venta_f);//Reemplazo las comas
	$precio_total=$precio_venta_r*$cantidad;
	$precio_total_f=number_format($precio_total,2);//Precio total formateado
	$precio_total_r=str_replace(",","",$precio_total_f);//Reemplazo las comas
	$sumador_total+=$precio_total_r;//Sumador
	if ($nums%2==0){
		$clase="clouds";
	} else {
		$clase="silver";
	}
	?>

        <tr>
            <td class='<?php echo $clase;?>' style="width: 10%; text-align: center"><?php echo $cantidad; ?></td>
            <td class='<?php echo $clase;?>' style="width: 53%; text-align: left"><?php echo $nombre_producto;?></td>
            <td class='<?php echo $clase;?>' style="width: 8%; text-align: left"><?php echo $kilogramos;?></td>
            <td class='<?php echo $clase;?>' style="width: 15%; text-align: right"><?php echo $precio_venta_f;?></td>
            <td class='<?php echo $clase;?>' style="width: 15%; text-align: right"><?php echo $precio_total_f;?></td>
            
        </tr>

	<?php 

	
	$nums++;
	}
	$impuesto=get_row('perfil','impuesto', 'id_perfil', 1);
	$subtotal=number_format($sumador_total,2,'.','');
	$total_iva=($subtotal * $impuesto )/100;
	$total_iva=number_format($total_iva,2,'.','');
	$total_factura=$subtotal+$total_iva;
?>
	  
        <tr>
            <td colspan="4" style="widtd: 85%; text-align: right;">SUBTOTAL <?php echo $simbolo_moneda;?> </td>
            <td style="widtd: 15%; text-align: right;"> <?php echo number_format($subtotal,2);?></td>
        </tr>
		<tr>
            <td colspan="4" style="widtd: 85%; text-align: right;">IVA (<?php echo $impuesto;?>)% <?php echo $simbolo_moneda;?> </td>
            <td style="widtd: 15%; text-align: right;"> <?php echo number_format($total_iva,2);?></td>
        </tr><tr>
            <td colspan="4" style="widtd: 85%; text-align: right;">TOTAL <?php echo $simbolo_moneda;?> </td>
            <td style="widtd: 15%; text-align: right;"> <?php echo number_format($total_factura,2);?></td>
        </tr>
    </table>
	
	
	
	<br>

	 <!-- CODIGO DE PDF Relleno -->
<div style="font-size:10pt;text-align:center;font-style:italic;font-weight:normal;margin-bottom:10px;">
    Para proformas con peso menor o igual a 5Ton, el peso a facturar corresponderá al mismo peso detallado en la Proforma. Se tomará como referencia el peso de ingreso del material en negro más consumo estimado.
</div>
	 
	 
<div style="font-size:11pt;text-align:center;font-weight:bold">Información</div>
  <!-- Complemento --->
<style>
body {
font-family: Arial, sans-serif; /* Cambio de la fuente */
}
.tabla {
    width: 100%;
    border-collapse: collapse;
    margin-bottom: 30px;
    table-layout: fixed; /* Fijar el ancho de las columnas */
  }
 .tabla th, .tabla td {
    border: 5px solid #fff;
    padding: 6px; /* Ajuste del espacio alrededor del texto */
    text-align: justify; /* Justificar el texto */
    font-size: 12px; /* Tamaño de fuente original */
    word-wrap: break-word; /* Romper palabras largas */
}
 .tabla th {
    background-color: #f2f2f2;
    font-weight: bold; /* Añadir negrita al encabezado */
    word-wrap: break-word; /* Romper palabras largas */
  }
 .titulo {
    font-weight: bold;
    font-size: 12px; /* Ajuste del tamaño del título */
    margin-bottom: 6px;
    font-weight: bold;
  }
 .subtitulo {
   font-weight: bold;
   font-size: 10px; /* Ajuste del tamaño del título */
   margin-bottom: 6px;
  }
.dos-columnas {
  width: 100%;
  table-layout: fixed;
}

.dos-columnas td {
  width: 50%;
  vertical-align: top;
  word-wrap: break-word;
}
.contenido p {
  margin: 0;
}

.letra-pequena {
    font-size: 12px;
    padding: 1px;
    background-color: yellow; /* Añade un fondo amarillo */
}
</style>
<div class="titulo">1. Tiempo De Entrega:</div>
<table class="table">
    <?php
    // Verificar si $tiempo_entrega está definido y no está vacío
    if (isset($tiempo_entrega) && !empty($tiempo_entrega)) {
        echo "<tr>";
        echo "<td class='letra-pequena text-center'>$tiempo_entrega</td>";
        echo "</tr>";
    } else {
        // Si $tiempo_entrega no está definido o está vacío, muestra un mensaje indicando que no hay tiempo_entrega disponible

        echo "<tr>";
        echo "<td class='letra-pequena text-center'>No hay tiempo de entrega para esta cotización.</td>";
        echo "</tr>";
    }
    ?>
</table>
  <div>
  <div class="titulo">2. ALCANCE</div>
  <table class="tabla">
    <tr>
      <th>Códigos aplicables</th>
      <th></th>
    </tr>
    <tr>
      <td class="titulo">GALVANIZADO POR INMERSIÓN EN CALIENTE:</td>
      <td>NTC 3320/ASTM A123, NTC 2076/ASTM A153, 153M.</td>
    </tr>
    <tr>
      <td class="titulo">CENTRIFUGADO:</td>
      <td>NTC 2076</td>
    </tr>
    <tr>
  <td class="titulo">SISTEMA DÚPLEX:</td>
  <td>(pintura a elementos galvanizados) ASTM D2092 - 95(2001)</td>
 </tr>
  </table>
</div>

  <div>
  <div class="titulo">DIMENSIONES ÚTILES DE LAS CUBAS DE GALVANIZADO</div>
  <table class="tabla">
    <col width="20%"> <!-- Ajustar el ancho de la columna de la planta -->
    <col width="40%"> <!-- Ajustar el ancho de la columna de galvanizado por inmersión sencilla -->
    <col width="40%"> <!-- Ajustar el ancho de la columna de galvanizado por doble inmersión -->
    <tr>
      <th>Planta</th>
      <th>Galvanizado por Inmersión Sencilla</th>
      <th>Galvanizado por Doble Inmersión</th>
    </tr>
    <tr>
      <td rowspan="3" class="titulo">Planta Bogotá</td>
      <td>Largo: 6,90M</td>
      <td rowspan="3">
        Largo: 8,00M (Altura máxima de 40cms) <br>
        Ancho: 1.04M <br>
        Altura: 2,10M (Máxima de 6,90M de largo)
      </td>
    </tr>
    <tr>
      <td>Ancho: 1.04M</td>
    </tr>
    <tr>
      <td>Altura: 1,40M</td>
    </tr>
    <tr>
      <td class="titulo">Planta Barranquilla</td>
      <td>Largo: 8,80M</td>
      <td>Largo: 12,00M (Mínima de 8,9M de largo)</td>
    </tr>
    <tr>
      <td></td>
      <td>Ancho: 1.40M</td>
      <td>Ancho: 1.40M</td>
    </tr>
    <tr>
      <td></td>
      <td>Altura: 2,30M</td>
      <td>Altura: 4,50M</td>
    </tr>
  </table>
</div>
 <div>
  <div class="titulo">3. VIGENCIA DE LA OFERTA</div>
  <table class="tabla">
    <tr>
      <td>6 días calendario. Según término de Ley (artículo 851 del Código de Comercio).</td>
    </tr>
  </table>
</div>
<div>

  <!--- PAGINA PRINCIPAL-->
  <div class="titulo">4. INCLUSIONES, EXCEPCIONES Y LIMITACIONES</div>
  <table class="tabla">
    <tr>
      <td>Estamos CERTIFICADOS en ISO 9001:2015, ISO 14001:2015 y ISO 45001:2018 las cuales garantizan que nuestros procesos cumplen con los mas altos estándares en beneficio de la calidad final de producto entregado.</td>
    </tr>
    <tr>
      <td>Entregamos Certificado de calidad del servicio en formato digital. En caso de que Interventoría requiera la entrega física EL CLIENTE deberá informarlo previamente.</td>
    </tr>
    <tr>
      <td>Se aplicará doble inmersión para elementos de largo superior a la medida de la cuba, con un incremento para Bogotá del 25% y Barranquilla el 20% en el precio. El tiempo de entrega será a convenir, dependiendo de la cantidad de material. Igualmente, en caso de limpieza y perforaciones el tiempo de entrega se incrementa un día adicional. El cliente asume el costo adicional de limpieza (manual o especializada) y perforaciones.</td>
    </tr>
    <tr>
      <td>El precio ofertado no incluye transporte</td>
    </tr>
    <tr>
      <td>No incluye: perforaciones, eliminación de contaminantes (etiquetas pintura), capa de galvanizado u otros.</td>
    </tr>
    <tr>
      <td>No incluye el reproceso de los defectos en el material galvanizado a causa de contaminación superficial. Las estructuras metálicas a galvanizar deben ser entregadas libres de pintura, etiquetas, metalmarket, grasa, escoria, corrosión u otro similar.</td>
    </tr>
    <tr>
      <td>No incluye la reparación de los daños que sufra el recubrimiento después de entregado por golpes especialmente en los bordes por mal apilamiento, manipulación en transporte u otro.</td>
    </tr>
    <tr>
      <td>No incluye la reparación de los daños generados al recubrimiento después de entregado por contacto con sustancias como óxido, resina de la madera, ácido u otras sustancias.</td>
    </tr>
    <tr>
      <td>No incluye la reparación de los daños causados por corte de los elementos galvanizados en el montaje de las estructuras. Se recomienda el prime zinc para recubrimiento de los bordes.</td>
    </tr>
    <tr>
      <td>No incluye la reparación de los daños causados en tratamientos posteriores con pintura o similares.</td>
    </tr>
    <tr>
      <td>El galvanizado es un proceso a alta temperatura y por lo tanto las piezas sufren pandeo, lo cual no será causa de rechazo de material ya que es propio del proceso.</td>
    </tr>
    <tr>
      <td>El acero con un porcentaje de silicio mayor o igual al 0.035% ocasiona zonas color mate oscuro y hasta la falta de adherencia del recubrimiento, no será objeto de reprocesos los defectos atribuibles a la composición química del acero.</td>
    </tr>
    <tr>
      <td>Precio valido para material con contenido de Silicio en el acero menor a 0,04% en caso que este sea mayor se deberá ajustar el precio por reactividad del material.</td>
    </tr>
  </table>
  <div>
  <div class="titulo">5. TÉRMINOS GENERALES</div>
  <table class="tabla">
    <tr>
      <td>Todas las ventas se facturarán electrónicamente según la fecha de cierre del CLIENTE. Los demás requisitos de facturación y pago se dejarán por escrito en la Orden de Compra o Contrato.</td>
    </tr>
    <tr>
      <td>Todas las ventas a crédito de POLYUPROTEC SA están bajo cobertura del Seguro CESCE MASTER ORO de SEGUREXPO. En caso de pago a crédito se someterá a estudio la solicitud con la documentación necesaria y quedará bajo aprobación de cupo por parte de dicha Aseguradora y la aceptación de sus garantías minimas.</td>
    </tr>
    <tr>
      <td>Sin perjuicio del plazo de entrega acordado, la fecha de inicio está sujeta al recibido el material en planta de Polyuprotec libre de calamina, pintura, etiquetas, metalmarket y con perforaciones para el amarre y drenaje de líquidos en inmersión sencilla.</td>
    </tr>
    </table>
    <table class="tabla">
  <col width="50%"> <!-- Ajustar el ancho de la primera columna -->
  <col width="25%"> <!-- Ajustar el ancho de la segunda columna -->
  <col width="25%"> <!-- Ajustar el ancho de la tercera columna -->
  <tr>
    <th style="text-align: center;">Planta Bogotá ( 2 a 3 dias habiles)</th>
    <th style="text-align: center;">Planta Barranquilla (8 días habiles)</th>
  </tr>
  <tr>
    <td style="text-align: center; vertical-align: top;"></td>
    <td style="text-align: center; vertical-align: top;"></td>
  </tr>
  <tr>
    <td colspan="2" style="vertical-align: top;">Según la fecha de entrega acordada se realizará el cobro de bodegaje y almacenamiento que se facturarán adicionalmente al valor por kilo.</td>
  </tr>
</table>
    <table class="tabla">
    <tr>
      <td>Esta oferta se mantendrá en los términos señalados salvo cualquier acto, evento o circunstancia imprevisible, o la combinación de estos, que ocurra con posterioridad a la presentación y/o aceptación de la Oferta, y que debidamente comprobado imposibilite el puntual cumplimento de cualquier obligación aquí ofertada.</td>
    </tr>
  </table>
  <div>
  <div class="titulo">6. EN CASO DE ACEPTACIÓN</div>
  <table class="tabla">
    <tr>
      <td>Solicitamos retransmitir esta información a sus áreas de cartera, logística, calidad y las que considere pertinentes.</td>
    </tr>
  </table>
  <div>
  <div class="titulo">7. DECLARACIONES Y MANIFESTACIONES</div>
  <table class="tabla">
    <tr>
      <td>Para todos los efectos legales y contractuales la Proforma se suscribirá en idioma español y se regirá bajo las Leyes Colombianas.</td>
    </tr>
    <tr>
      <td>Con el pago de la Proforma, acepto el servicio (s) descrito (s) en esta oferta con los precios, condiciones, tiempos y términos expresadas en ella. La firma digital del correo electrónico es válida para la aceptación de la presente oferta. Para el primer servicio me comprometo a entregar el formato de inscripción de clientes de Polyuprotec S.A el RUT y copia de cédula del Representante Legal. </td>
    </tr>
    <tr>
      <td>Me comprometo a recoger las estructuras metálicas en el plazo acordado. Pero en los términos del concepto No. 20417624 de dic/14/2020 de la Superintendencia de Industria y Comercio en caso de no retirar las estructuras dentro de los dos (2) meses siguientes al servicio se entenderá por ley que lo abandono por lo cual autorizo a Polyuprotec S.A a proceder a su disposición. </td>
    </tr>
    <tr>
      <td>La ampliación del plazo originadas por fuerza mayor y caso fortuito serán asumidas en conjunto por las Partes.</td>
    </tr>
    <tr>
      <td>Autorizo al conductor a firmar la remisión y recibir a conformidad las estructuras metálicas en caso de no enviar un delegado. </td>
    </tr>
    <tr>
      <td>Correrán por mi cuenta y riesgo las reparaciones o reprocesos por reclamaciones de calidad posteriores a la entrega. </td>
    </tr>
  </table>
  <div class="titulo">8. CARGUE Y DESCARGUE </div>
  <div class="subtitulo">1. Solicitar cita con antelación</div>
  <div style="overflow-x: auto;">
  <table class="dos-columnas tabla">
    <tr>
      <td>
        <div class="titulo">PLANTA BOGOTÁ</div>
        <div class="contenido">
          <p>Correo electrónico: despachosbogota@polyuprotec.com</p>
          <p>Teléfonos: 3212013098 4220980 Ext. 137</p>
        </div>
      </td>
      <td>
        <div class="titulo">PLANTA MALAMBO</div>
        <div class="contenido">
          <p>Correo electrónico: mmartinez@gpolyuprotec.com</p>
          <p>Teléfonos: 3147721237 - 33132853479</p>
        </div>
      </td>
    </tr>
     </table>
        </div>
        <div class="subtitulo">2. Cumplir la cita programada en el horario de atención</div>
           <div style="overflow-x: auto;">
      <table class="dos-columnas tabla">
    <tr>
      <td>
        <div class="titulo">PLANTA BOGOTÁ</div>
        <div class="contenido">
          <p>LUNES A VIERNES DE 7AM A 1PM y 1:30PM A 4PM</p>
          <p>SABADOS DE 7AM A 12PM</p>
        </div>
      </td>
      <td>
        <div class="titulo">PLANTA MALAMBO</div>
        <div class="contenido">
          <p>LUNES A VIERNES DE 7AM A 1PM y 2PM A 4PM,</p>
          <p>SABADOS DE 7AM A 11:30 PM</p>
        </div>
      </td>
    </tr>
     </table>
        </div>
        <div class="subtitulo">3. Diligenciar el formato PROFORMA, pagar y enviar el soporte de pago. Para clientes nuevos el formato y documentos correspondientes. </div>
        <div style="overflow-x: auto;">
      <table class="dos-columnas tabla">
    <tr>
      <td>
        <div class="titulo">PLANTA BOGOTÁ</div>
        <div class="contenido">
          <p>Correo electrónico: jgonzalez@polyuprotec.com</p>
        </div>
      </td>
      <td>
        <div class="titulo">PLANTA MALAMBO</div>
        <div class="contenido">
          <p>Correo electrónico:jpolo@polyuprotec.com</p>
        </div>
      </td>
    </tr>
     </table>
        </div>
        <table class="tabla">
        <tr>
        <td>4. Enviar el vehículo descapotado, descarrozado y/o descarpado. Todos nuestros cargues y descargues se realizan con puente grúas en la ciudad de bogotá, En la ciudad de barranquilla se realiza con monta cargas. Caso contrario enviar personal con ARL al día; para hacer el cargue o descargue manual.</td></tr>
        <tr>
        <td>5. Enviar el vehículo con polines. El material a galvanizar debe estar organizado sobre polines de madera, los elementos pequeños no pueden llegar sobre piso, deben estar dentro de canecas, baldes o estibas.</td></tr>
        <tr>
        <td>6. Enviar con el material la REMISIÓN u ORDEN DE TRABAJO (Descripción del material y cantidad)</td></tr>
        <tr>
        <td>7. Enviar el material libre de calamina, pinturas, etiquetas, metal market, corrosión y otros similares.</td></tr>
        <tr>
        <td>8. Enviar el material con perforaciones para el amarre y drenaje de líquidos.</td></tr>
        <tr>
        <td>9. Enviar al transportador y auxiliares con copia de la afiliación a ARL y elementos de protección personal - EPP.</td></tr>
        <tr>
        <td>10. Enviar para la recogida  un funcionario para la liberación del material e inspección del cargue. </td></tr>
        <tr>
        <td>11. Recoger el material en plataforma sobre camión.</td></tr>
        </table>
        <div class="titulo">9. CALIDAD EN LOS ACABADOS</div>
        <div class="subtitulo">Polyuprotec S.A entrega el material galvanizado de acuerdo con los siguientes parámetros que exige la NTC 3320.</div>
        <table class="tabla">
      <tr>
      <td>La apariencia final del galvanizado puede variar dependiendo de la química del acero utilizado. El silicio y el fósforo son los elementos químicos que afectan el crecimiento del revestimiento haciendo que el galvanizado tenga un aspecto gris mate o moteado y con superficies ásperas y
      rugosas. Esta condición no puede ser controlada por el Galvanizador por tanto no es motivo de rechazo.</td>
      </tr>
      <tr>
      <td>Las apariencias brillantes y opacas en un mismo elemento son provocadas por la tasa de enfriamiento y el procesado del acero. No es motivo de rechazo ya que no afecta la protección contra la corrosión.</td>
      </tr>
      <tr>
      <td>Las inclusiones de escoria si son pequeñas y están completamente cubiertas por el zinc, no afectan la protección contra la corrosión, por lo cual no es motivo de rechazo.</td>
      </tr>
      <tr>
      <td>El recubrimiento será continuo, razonablemente liso y uniforme, con una limpieza superficial que evite cortes y/o rasguños al operario en el momento de manipulación del mismo o que afecte el uso del elemento galvanizado.</td>
      </tr>
      <tr>
      <td>No es motivo de rechazo una menor rugosidad, que no interfiera en el uso propio del producto.</td>
      </tr>
      <tr>
      <td>Las marcas en el recubrimiento ocasionadas por mordazas u otras herramientas usadas para el manejo del elemento dentro del proceso de galvanizado no son motivos de rechazo.</td>
      </tr>
      <tr>
      <td>Los bordes o esquinas son puntos de adherencia mínima, por lo cual son susceptibles de desprendimientos, los cuales se podrán hacer reparaciones con pintura rica en zinc.</td>
      </tr>
      <tr>
      <td>Las manchas provocadas por poros abiertos en la soldadura (defectos en la soldadura) no serán motivo de rechazo y deben ser reparadas por parte del cliente y/o fabricante.</td>
      </tr>
      <tr>
      <td>Si los elementos tendrán un acabado final en pintura (sistema duplex), el cliente y/o fabricante debe hacer la preparación de la superficie después de realizado el proceso del galvanizado.</td>
      </tr>
      <tr>
      <td>El cliente debe inspeccionar y liberar el cargue de sus materiales en planta de Polyuprotec S.A.</td>
      </tr>
      <tr>
      <td>El galvanizado por inmersión en caliente es un recubrimiento de protección contra la corrosión, no es decorativo, por lo que su acabado no es liso, lo que requiere de un pulimento adicional para aplicación de pintura de acuerdo a la exigencia del cliente final, lo cual no es del alcance de Polyuprotec S.A. Por lo cual se recomienda preparar correctamente la superficie a pintar y usar las pinturas de su proveedor especializado. </td>
      </tr>
      <tr>
      <td>La permanencia del material en planta fuera del tiempo estipulado a la intemperie no evitará el proceso de oxidación del cinc por lo que perderá la apariencia del galvanizado aun cuando la protección esté presente.</td>
      </tr>
      </table>
      <div class="titulo">10. OBSERVACIONES:</div>
<table class="table">
    <?php
    // Verificar si $nota está definido y no está vacío
    if (isset($nota) && !empty($nota)) {
        echo "<tr>";
        echo "<td class='letra-pequena text-center'>$nota</td>";
        echo "</tr>";
    } else {
        // Si $nota no está definido o está vacío, muestra un mensaje indicando que no hay nota disponible
        echo "<tr>";
        echo "<td class='letra-pequena text-center'>No hay observaciones para esta cotización.</td>";
        echo "</tr>";
    }
    ?>
</table>
          </div>
        </div>

     </div>
  </div> 
</page>
