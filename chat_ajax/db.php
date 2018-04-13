<?php

$servidor = "192.168.43.16";
$usuario= "root";
$password = "root";
$base_datos = "appchat";



$conexion = new mysqli($servidor, $usuario, $password, $base_datos);


function formatearFecha($fecha){
	return date('g:i a', strtotime($fecha));
}


?>