<?php 
	require_once("Models/TCategoria.php");
	class Home extends Controllers{
		/* PARA EL USO DE LOS TRAIT */
		use TCategoria;
		public function __construct()
		{
			parent::__construct();
		}

		public function home()
		{
			$data['page_tag'] = NOMBRE_EMPRESA;
			$data['page_title'] = NOMBRE_EMPRESA;
			$data['page_name'] = "home";
			/* CAT _ SLIDER VIENE DE CONFIG PARA QUE SE VEA LOS UNICOS SLIDERS - VARIABLES */
			$data['slider'] = $this->getCategoriasT(CAT_SLIDER);
			$data['banner'] = $this->getCategoriasT(CAT_BANNER);
			$this->views->getView($this,"home",$data);
		}

	}
 ?>