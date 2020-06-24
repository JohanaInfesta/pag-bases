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
  function mostrarIndex($Usuario){
    $this->smarty->assign('usuario', $Usuario);
    $this->smarty->display('templates/index.tpl');
  }
}
?>