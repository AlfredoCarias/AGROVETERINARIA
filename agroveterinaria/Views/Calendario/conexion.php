<?php
define('HOST', 'localhost');
define('USER', 'root');
define('PASS', '');
define('DBNAME', 'agroveterinaria');
define('PORT', 3306);

$conn = new PDO('mysql:host=' . HOST .';port='.PORT. ';dbname=' . DBNAME . ';', USER, PASS);
