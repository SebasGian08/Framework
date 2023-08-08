<?php 

	class BannersModel extends Mysql
	{
		public $intIdBanner;
		public $strBanner;
		public $strDescripcion;
		public $intStatus;
		public $strPortada;

		public function __construct()
		{
			parent::__construct();
		}

		public function insertBanner(string $nombre, string $descripcion, string $portada, int $status){

			$return = 0;
			$this->strBanner = $nombre;
			$this->strDescripcion = $descripcion;
			$this->strPortada = $portada;
			$this->intStatus = $status;

			/* para no crear algo duplicado */
			$sql = "SELECT * FROM banners WHERE nombre = '{$this->strBanner}' ";
			$request = $this->select_all($sql);

			if(empty($request))
			{
				$query_insert  = "INSERT INTO banners(nombre,descripcion,portada,status) VALUES(?,?,?,?)";
	        	$arrData = array($this->strBanner, 
								 $this->strDescripcion, 
								 $this->strPortada, 
								 $this->intStatus);
	        	$request_insert = $this->insert($query_insert,$arrData);
	        	$return = $request_insert;
			}else{
				$return = "exist";
			}
			return $return;
		}


		//para listar en la tabla y tambien en productos
		public function selectBanners()
		{
			$sql = "SELECT * FROM banners 
					WHERE status != 0 ";
			$request = $this->select_all($sql);
			return $request;
		}

		//para listar en el modal
		public function selectBanner(int $idBanners){
			$this->intIdBanner = $idBanners;
			$sql = "SELECT * FROM banners WHERE idbanner = $this->intIdBanner";
			$request = $this->select($sql);
			return $request;
		}

		public function updateBanner(int $idBanners, string $Banners, string $descripcion, string $portada, int $status){
			$this->intIdBanner = $idBanners;
			$this->strBanners = $Banners;
			$this->strDescripcion = $descripcion;
			$this->strPortada = $portada;
			$this->intStatus = $status;

			$sql = "SELECT * FROM banners WHERE nombre = '{$this->strBanners}' AND idbanner != $this->intIdBanner";
			$request = $this->select_all($sql);

			if(empty($request))
			{
				$sql = "UPDATE banners SET nombre = ?, descripcion = ?, portada = ?, status = ? WHERE idbanner = $this->intIdBanner ";
				$arrData = array($this->strBanners, 
								 $this->strDescripcion, 
								 $this->strPortada, 
								 $this->intStatus);
				$request = $this->update($sql,$arrData);
			}else{
				$request = "exist";
			}
		    return $request;			
		}

		public function deleteBanners(int $idBanners)
		{
			$this->intIdBanner = $idBanners;
			$sql = "SELECT * FROM producto WHERE Bannersid = $this->intIdBanner";
			$request = $this->select_all($sql);
			if(empty($request))
			{
				$sql = "UPDATE Banners SET status = ? WHERE idBanners = $this->intIdBanner ";
				$arrData = array(0);
				$request = $this->update($sql,$arrData);
				if($request)
				{
					$request = 'ok';	
				}else{
					$request = 'error';
				}
			}else{
				$request = 'exist';
			}
			return $request;
		}	


	}
 ?>