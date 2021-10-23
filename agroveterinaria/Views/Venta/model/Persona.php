<?php

    class Persona{

        private $idpersona;
        private $identificacion;
        private $nombresApellidos;
        private $genero;
        private $direccion;
        private $telefono;


        public function __get($attribute)
        {
            return $this->$attribute;
        }


        public function __set($attribute, $value)
        {
            return $this->$attribute = $value;
        }
    }