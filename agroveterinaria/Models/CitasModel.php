<?php 
class CitasModel extends Mysql
{
    private $intIdCita;
    private $strTitle;
    private $strDescripcion;
    private $strColor;
    private $strStart;
    private $strEnd;

	public function __construct()
	{
		parent::__construct();
	}	

	public function insertCitas(string $title, string $descripcion, string $color, string $start, string $end){

		$this->strTitle = $title;
		$this->strDescripcion = $descripcion;
		$this->strColor = $color;
		$this->strStart = $start;
		$this->strEnd = $end;

		$return = 0;
		$sql = "SELECT * FROM events";
		$request = $this->select_all($sql);

		if(empty($request))
		{
			$query_insert  = "INSERT INTO events(title,descripcion,color,start,end) 
							  VALUES(?,?,?,?,?)";
        	$arrData = array($this->strTitle,
    						$this->strDescripcion,
    						$this->strColor,
    						$this->strStart,
    						$this->strEnd);
        	$request_insert = $this->insert($query_insert,$arrData);
        	$return = $request_insert;
		}else{
			$return = "exist";
		}
        return $return;
	}

	public function selectCitas(){
        $sql = "SELECT * FROM events";
                $request = $this->select_all($sql);
        return $request;
    }	

	public function selectCita(int $idcita){
        $this->intIdCita = $idcita;
        $sql = "SELECT * FROM events WHERE id = $this->intIdCita";
        $request = $this->select($sql);
        return $request;

    }

	public function updateCita(int $id, string $title, string $descripcion, string $color, string $start, string $end){

        $this->intIdCita = $id;
		$this->strTitle = $title;
		$this->strDescripcion = $descripcion;
		$this->strColor = $color;
		$this->strStart = $start;
		$this->strEnd = $end;

		$sql = "SELECT * FROM events WHERE title = '$this->strTitle' AND id != $this->intIdCita";
			$request = $this->select_all($sql);

			if(empty($request))
			{
				$sql = "UPDATE events SET title = ?, descripcion = ?, color = ?, start = ?, start = ? WHERE id = $this->intIdCita ";
				$arrData = array($this->strTitle, $this->strDescripcion, $this->strColor, $this->strStart, $this->strEnd);
				$request = $this->update($sql,$arrData);
			}else{
				$request = "exist";
			}
		    return $request;	
	}

	public function deleteCita(int $idcita)
	{
		$this->intIdCita = $idcita;
		$sql = "DELETE FROM events WHERE id = $this->intIdCita ";
		$arrData = array(0);
		$request = $this->update($sql,$arrData);
		return $request;
	}
}

 ?>