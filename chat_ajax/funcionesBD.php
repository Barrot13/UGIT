<?php

/**
 * @Author: Marco Rojas Maroto
 * @Date:   2018-04-13 13:38:06
 * @Last Modified by:   Marko1496
 * @Last Modified time: 2018-04-13 14:46:20
 */
	include "db.php";

	$nombre = $_POST['usuario'];
	$mensaje = $_POST['mensaje'];
	$consulta = "INSERT INTO chat (nombre, mensaje) VALUES ('$nombre', '$mensaje')";
	$ejecutar = $conexion->query($consulta);

	if ($ejecutar) {
		echo "<p></p>";
	}
?>