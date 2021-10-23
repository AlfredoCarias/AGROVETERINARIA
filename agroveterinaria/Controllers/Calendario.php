<?php
class Calendario extends Controllers{
		public function __construct()
		{
			parent::__construct();
			session_start();
			session_regenerate_id(true);
			if(empty($_SESSION['login']))
			{
				header('Location: '.base_url().'/calendario');
				die();
			}
			getPermisos(8);
		}

        public function Calendario()
		{
			if(empty($_SESSION['permisosMod']['r'])){
				header("Location:".base_url().'/dashboard');
			}
			$data['page_tag'] = "Calendario";
			$data['page_title'] = "CALENDARIO <small>Agroveterinaria</small>";
			$data['page_name'] = "calendario";
			$this->views->getView($this,"calendario",$data);
		}

	}

        ?>