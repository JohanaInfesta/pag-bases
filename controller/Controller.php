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
    $Usuario = $this->a_model->getUsuarios();
    $this->view->mostrarIndex($Usuario);
  }
}

?>