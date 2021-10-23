<?php
    class personController{

        private $conexion;

        public function __construct()
        {
            try{
                $this->conexion = new PDO('mysql:host=localhost;dbname=agroveterinaria', 'root', '');
                $this->conexion->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
            }catch (Exception $e){
                echo 'Error la intentar conectarse a la Base de datos: ' . $e->getMessage();
            }
        }


        public function listPerson(){
            try{
                $datapersons = array();
                $sql = $this->conexion->prepare("SELECT * FROM persona WHERE rolid=3 AND status!=0");
                $sql->execute();
                foreach ($sql->fetchAll(PDO::FETCH_OBJ) as $result){

                    $persona = new Persona();
                    $persona->__set('idpersona', $result->idpersona);
                    $persona->__set('identificacion', $result->identificacion);
                    $persona->__set('nombres', $result->nombres);
                    $persona->__set('apellidos', $result->apellidos);
                    $persona->__set('nit', $result->nit);
                    $persona->__set('telefono', $result->telefono);

                    $datapersons[] = $persona;
                }

                return $datapersons;
            }catch (Exception $e){
                die($e->getMessage());
            }
        }

        

        public function search($id){
            try{
                $persons = array();
                $sql = $this->conexion->prepare('SELECT * FROM persona WHERE idpersona = ?');
                $sql->execute(array($id));

                foreach ($sql->fetchAll(PDO::FETCH_OBJ) as $result) {

                    $person = new Persona();

                   $person->__set('idpersona', $result->idpersona);
                    $person->__set('identificacion', $result->identificacion);
                    $person->__set('nombres', $result->nombres);
                    $person->__set('apellidos', $result->apellidos);
                    $person->__set('nit', $result->nit);
                    $person->__set('telefono', $result->telefono);

                    $persons[] = $person;
                }

                return $persons;
            }catch (Exception $e){
                die($e->getMessage());
            }
        }
    }