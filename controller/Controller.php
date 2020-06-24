<?php
include_once('view/View.php');
include_once('model/indexModel.php');

class Controller
{
  protected $view;
  protected $model;

  function __construct(){
    $this->view = new View();
    $this->model = new Model();
    $this->a_model = new indexModel();
  }

  public function index(){
    $Usuarios = $this->a_model->getUsuarios();
    $Eventos = $this->a_model->cantEventos();
    $this->view->mostrarIndex($Usuarios, $Eventos);
  }
 // public function eventos(){
 //   $Eventos = $this->a_model->cantEventos();
//    $this->view->cantEventos($Eventos);
 // }
}

?>