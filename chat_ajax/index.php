<!DOCTYPE html>
<html>
<head>
	<title>CHAT CON PHP, MYSQL Y AJAX</title>
	<link rel="stylesheet" type="text/css" href="estilos.css">
	<link href="https://fonts.googleapis.com/css?family=Mukta+Vaani" rel="stylesheet">
</head>
<body onload="ajax();">

	<div id="contenedor">
		<div id="caja-chat">
			<div id="chat"></div>
		</div>

		<form method="POST" onsubmit="return insertar();">
			<input id="nombre" type="text" name="nombre" placeholder="Ingresa tu nombre">			
			<textarea id="mensaje" name="mensaje" placeholder="Ingresa tu mensaje"></textarea>
			<input type="submit" name="enviar" value="Enviar">
		</form>
	</div>
	<p id="respa"></p>
<!--========================================
=            Archivos JavaScrip            =
=========================================-->

<script type="text/javascript" src="funcionalida.js"></script>
<script type="text/javascript" src="jquery.min.js"></script>

<!--====  End of Archivos JavaScrip  ====-->

</body>
</html>