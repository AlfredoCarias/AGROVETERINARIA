<?php

    class productController{


        private $conexion;

        public function __construct(){

            try{
                $this->conexion = new PDO('mysql:host=localhost;dbname=agroveterinaria', 'root', '');
                $this->conexion->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
            }catch (Exception $e){
                die($e->getMessage());
            }
        }


        public function listProduct(){
            try{
                $dataproduct = array();
                $sql = $this->conexion->prepare("SELECT * FROM producto WHERE status!=0");
                $sql->execute();

                foreach ($sql->fetchAll(PDO::FETCH_OBJ) as $result) {

                    $producto = new Producto();
                    $producto->__set('idproducto', $result->idproducto);
                    $producto->__set('precio', $result->precio);
                    $producto->__set('codigo', $result->codigo);
                    $producto->__set('nombre', $result->nombre);

                    $dataproduct[] = $producto;
                }

                return $dataproduct;
            }catch (Exception $e){
                die($e->getMessage());
            }
        }
        

        public function search($id){
            try{
                $products = array();
                $sql = $this->conexion->prepare('SELECT * FROM producto WHERE idproducto = ?');
                $sql->execute(array($id));

                foreach ($sql->fetchAll(PDO::FETCH_OBJ) as $result) {

                    $product = new Producto();

                    $product->__set('idproducto', $result->idproducto);
                    $product->__set('codigo', $result->descripcion);
                    $product->__set('nombre', $result->valorUnitario);

                    $products[] = $product;
                }

                return $products;
            }catch (Exception $e){
                die($e->getMessage());
            }
        }
    }