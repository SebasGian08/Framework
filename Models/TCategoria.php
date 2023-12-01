<?php 
/* para extraer metodos de mysql */
require_once("Libraries/Core/Mysql.php");
trait TCategoria{
	private $con;

	/* Mostrar categorias en tienda */

	public function getCategoriasT(string $categorias){
		$this->con = new Mysql();
		$sql = "SELECT idcategoria, nombre, descripcion, portada, ruta
				 FROM categoria WHERE status != 0 AND idcategoria IN ($categorias)";
		$request = $this->con->select_all($sql);
		if(count($request) > 0){
			for ($c=0; $c < count($request) ; $c++) { 
				$request[$c]['portada'] = BASE_URL.'/Assets/images/uploads/'.$request[$c]['portada'];		
			}
		}
		return $request;
	}


	

	/* Extraer banners a tienda */
	public function getBannersT(string $banner){
        /* instancia para mysql */
		$this->con = new Mysql();
		$sql = "SELECT idbanner, nombre, descripcion, portada
				 FROM banners WHERE status != 0 AND status != 2 AND idbanner IN ($banner)";
		$request = $this->con->select_all($sql);
		if(count($request) > 0){
			for ($c=0; $c < count($request) ; $c++) { 
				$request[$c]['portada'] = BASE_URL.'/Assets/images/uploads/'.$request[$c]['portada'];		
			}
		}
		return $request;
	}

	
}

 ?>