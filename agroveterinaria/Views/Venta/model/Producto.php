<?php

    class Producto
    {
        private $idproducto;
        private $descripcion;
        private $valorUnitario;


        public function __get($attribute)
        {
            return $this->$attribute;
        }

        public function __set($attribute, $value)
        {
            return $this->$attribute = $value;
        }

    }