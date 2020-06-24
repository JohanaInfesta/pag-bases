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
  function mostrarIndex($Usuarios){
    $this->smarty->assign('usuario', $Usuarios);
    $this->smarty->display('templates/index.tpl');
  }
}
?>