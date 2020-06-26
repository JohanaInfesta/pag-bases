<?php

include_once 'libs/Smarty.class.php';

class View
{
  protected $smarty;

  function __construct()
  {
    $this->smarty = new Smarty();
    $this->smarty->assign('titulo', 'Trabajo de bases');
  }

  function mostrarIndex($Usuarios, $UsuarioBusqueda){
    $this->smarty->assign('usuario', $Usuarios);
    $this->smarty->assign('usuarioBusqueda', $UsuarioBusqueda);
    $this->smarty->display('templates/index.tpl');
  }
  function mostrarEventos($evento){
    $this->smarty->assgn('evento', $evento);
    $this->smarty->display('templates/busquedaUsuario.tpl');
  }

}
?>