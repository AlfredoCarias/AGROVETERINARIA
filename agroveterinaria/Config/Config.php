<?php 
	const BASE_URL = "http://localhost/agroveterinaria";

	//Zona horaria
	date_default_timezone_set('America/Guatemala');

	//Datos de conexión a Base de Datos
	const DB_HOST = "localhost";
	const DB_NAME = "agroveterinaria";
	const DB_USER = "root";
	const DB_PASSWORD = "";
	const DB_CHARSET = "utf8";

	//Para envío de correo
	const ENVIRONMENT = 1; // Local: 0, Produccón: 1;

	//Deliminadores decimal y millar Ej. 24,1989.00
	const SPD = ".";
	const SPM = ",";

	//Simbolo de moneda
	const SMONEY = "Q";

	//Datos envio de correo
	const NOMBRE_REMITENTE = "Agroveterinaria";
	const EMAIL_REMITENTE = "alfredoloyocarias@gmail.com";
	const NOMBRE_EMPESA = "Agroveterinaria";
	const WEB_EMPRESA = "www.agroveterinaria.com";

	const DESCRIPCION = "La mejor tienda en línea con artículos de moda.";
	const SHAREDHASH = "Agroveterinaria";

	//Datos Empresa
	const DIRECCION = "Zacapa,Guatemala";
	const TELEMPRESA = "+(502)57164900";
	const EMAIL_EMPRESA = "alfredoloyocarias@gmail.com";


	const CAT_SLIDER = "1,2,3";
	const CAT_BANNER = "4,5,6";
	const CAT_FOOTER = "1,2,3,4,5";

	//Datos para Encriptar / Desencriptar
	const KEY = 'alfredo';
	const METHODENCRIPT = "AES-128-ECB";

	//Módulos
	const MDASHBOARD = 1;
	const MUSUARIOS = 2;
	const MCLIENTES = 3;
	const MPRODUCTOS = 4;
	const MVENTA = 5;
	const MCATEGORIAS = 6;
	const MCITAS = 7;
	const MCALENDARIO = 8;


	//Páginas
	const PINICIO = 1;
	const PTIENDA = 2;
	const PERROR = 9;

	//Roles
	const RADMINISTRADOR = 1;
	const RSUPERVISOR = 2;
	const RCLIENTES = 3;


	//Productos por página
	const CANTPORDHOME = 8;
	const PROPORPAGINA = 4;
	const PROCATEGORIA = 4;
	const PROBUSCAR = 4;
	

 ?>