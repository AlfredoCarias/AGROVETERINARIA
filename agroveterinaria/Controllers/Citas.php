<?php 
	class Citas extends Controllers{
		public function __construct()
		{
			parent::__construct();
			session_start();
			session_regenerate_id(true);
			if(empty($_SESSION['login']))
			{
				header('Location: '.base_url().'/login');
				die();
			}
			getPermisos(4);
		}

		public function Citas()
		{
			if(empty($_SESSION['permisosMod']['r'])){
				header("Location:".base_url().'/dashboard');
			}
			$data['page_tag'] = "Citas";
			$data['page_title'] = "Citas <small>Agroveterinaria</small>";
			$data['page_name'] = "citas";
			$data['page_functions_js'] = "function_citas.js";
			$this->views->getView($this,"citas",$data);
		}

		public function getCitas()
		{
			if($_SESSION['permisosMod']['r']){
				$arrData = $this->model->selectCitas();
				for ($i=0; $i < count($arrData); $i++) {
					$btnView = '';
					$btnDelete = '';

					if($_SESSION['permisosMod']['r']){
						$btnView = '<button class="btn btn-info btn-sm" onClick="fntViewInfo('.$arrData[$i]['id'].')" title="Ver Cita"><i class="far fa-eye"></i></button>';
					}
					if($_SESSION['permisosMod']['d']){	
						$btnDelete = '<button class="btn btn-danger btn-sm" onClick="fntDelInfo('.$arrData[$i]['id'].')" title="Eliminar cita"><i class="far fa-trash-alt"></i></button>';
					}
					$arrData[$i]['options'] = '<div class="text-center">'.$btnView.' '.$btnDelete.'</div>';
				}
				echo json_encode($arrData,JSON_UNESCAPED_UNICODE);
			}
			die();
		}

		public function getSelectCitas()
		{
			$htmlOptions = "";
			$arrData = $this->model->selectCitas();
			if(count($arrData) > 0 ){
				for ($i=0; $i < count($arrData); $i++) { 
					$htmlOptions .= '<option value="'.$arrData[$i]['id'].'">'.$arrData[$i]['title'].'</option>';
				
				}
			}
			echo $htmlOptions;
			die();		
		}

		public function getCita(int $idcita)
		{
			if($_SESSION['permisosMod']['r']){
				$intIdcita = intval(strClean($idcita));
				if($intIdcita > 0)
				{
					$arrData = $this->model->selectCita($intIdcita);
					if(empty($arrData))
					{
						$arrResponse = array('status' => false, 'msg' => 'Datos no encontrados.');
					}else{
						$arrResponse = array('status' => true, 'data' => $arrData);
					}
					echo json_encode($arrResponse,JSON_UNESCAPED_UNICODE);
				}
			}
			die();
		}

		public function setCita(){
			if($_SESSION['permisosMod']['w']){
				$intIdcita = intval($_POST['idCita']);
				$strTitle =  strClean($_POST['txtTitle']);
				$strDescipcion = strClean($_POST['txtDescripcion']);
				$strColor = strClean($_POST['listColor']);
                $strStart = strClean($_POST['txtStart']);
				$strEnd = strClean($_POST['txtEnd']);


				if($intIdcita == 0)
				{
					//Crear
					$request_cita = $this->model->insertCitas($strTitle, $strDescipcion,$strColor,$strStart,$strEnd);
					$option = 1;
				}else{
					//Actualizar
					$request_cita = $this->model->updateCita($intIdcita, $strTitle, $strDescipcion,$strColor,$strStart,$strEnd);
					$option = 2;
				}

				if($request_cita > 0 )
				{
					if($option == 1)
					{
						$arrResponse = array('status' => true, 'msg' => 'Datos guardados correctamente.');
					}else{
						$arrResponse = array('status' => true, 'msg' => 'Datos Actualizados correctamente.');
					}
				}else if($request_cita == 'exist'){
					
					$arrResponse = array('status' => false, 'msg' => '¡Atención! El Evento ya existe.');
				}else{
					$arrResponse = array("status" => false, "msg" => 'No es posible almacenar los datos.');
				}
				echo json_encode($arrResponse,JSON_UNESCAPED_UNICODE);
			}
			die();
		}

		public function delCita()
		{
			if($_POST){
				if($_SESSION['permisosMod']['d']){
					$intIdcita = intval($_POST['id']);
					$requestDelete = $this->model->deleteCita($intIdcita);
					if($requestDelete == 'ok')
					{
						$arrResponse = array('status' => true, 'msg' => 'Se ha eliminado el evento');
					}else if($requestDelete == 'exist'){
						$arrResponse = array('status' => false, 'msg' => 'No es posible eliminar el evento.');
					}else{
						$arrResponse = array('status' => false, 'msg' => 'Error al eliminar el Rol.');
					}
					echo json_encode($arrResponse,JSON_UNESCAPED_UNICODE);
				}
			}
			die();
		}

	}

 ?>