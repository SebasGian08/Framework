<?php 
	require_once("Models/TCategoria.php");
	require_once("Models/TProducto.php");
	class Home extends Controllers{
		/* PARA EL USO DE LOS TRAIT */
		use TCategoria, TProducto;
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
			/* jalar banner para el slider */
			$data['slider'] = $this->getBannersT(CAT_SLIDER);
			$data['promociones'] = $this->getBannersT(CAT_BANNER_PRO);
			/* jalar categorias para banners pequeños */
			$data['banner'] = $this->getCategoriasT(CAT_BANNER);
			/* jalar productos  */
			$data['productos'] = $this->getProductosT();
			$this->views->getView($this,"home",$data);
		}

	}
 ?>