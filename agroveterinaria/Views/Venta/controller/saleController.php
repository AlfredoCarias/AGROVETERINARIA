<?php

class saleController{
    
    private $conexion;
    
    public function __construct()
    {
        try{
            $this->conexion = new PDO('mysql:host=localhost;dbname=agroveterinaria', 'root', '');
            $this->conexion->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        }catch (Exception $e){
            die($e->getMessage());
        }
    }

    function guardarProducto($nombre, $precio, $descripcion)
{
    $sentencia =  $this->conexion->prepare("INSERT INTO productos(nombre, precio, descripcion) VALUES(?, ?, ?)");
    return $sentencia->execute([$nombre, $precio, $descripcion]);
}

    
}