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
    $UsuarioBusqueda = $this->a_model->getBusquedaUsuario();
    $this->view->mostrarIndex($Usuarios, $UsuarioBusqueda);
  }
  public function getEventosUsuario(){
    $id_usuario = $_POST['id_usuario'];
    $evento = $this->a_model->getEventos($id_usuario);
    $this->view->mostrarEventos($evento);
  }

}

?>
