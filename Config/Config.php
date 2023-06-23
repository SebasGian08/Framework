<?php 
	
	//define("BASE_URL", "http://localhost/tienda_virtual/");
	//le quite el /
	const BASE_URL = "http://localhost/Framework";

	//Zona horaria
	date_default_timezone_set('America/Guatemala');

	//Datos de conexión a Base de Datos
	const DB_HOST = "localhost";
	const DB_NAME = "tienda_virtual";
	const DB_USER = "root";
	const DB_PASSWORD = "";
	const DB_CHARSET = "utf8";

	//Deliminadores decimal y millar Ej. 24,1989.00
	const SPD = ".";
	const SPM = ",";

	//Simbolo de moneda
	const SMONEY = "S/ ";

	//Datos envio de correo
	//NOMBRE DE LA EMPRESA EN LA QUE SE ESTA DESARROLLAND
	const NOMBRE_REMITENTE = "Codware";
	// CORREO DE LA EMPRESA DONDE LLEGARA
	const EMAIL_REMITENTE = "no-reply@abelosh.com";
	const NOMBRE_EMPRESA = "Codware";
	const WEB_EMPRESA = "www.codware.com";
	


 ?>