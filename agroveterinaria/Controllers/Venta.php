<?php 
	class Venta extends Controllers{
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
			getPermisos(5);
		}

		public function Venta()
		{
			if(empty($_SESSION['permisosMod']['r'])){
				header("Location:".base_url().'/dashboard');
			}
			$data['page_tag'] = "Venta";
			$data['page_title'] = "Venta <small>Agroveterinaria</small>";
			$data['page_name'] = "venta";
            $data['page_functions_js'] = "factura.js";
			$this->views->getView($this,"venta",$data);
		}

		
		}


 ?>