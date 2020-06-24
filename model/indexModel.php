<?php
    class indexModel extends Model
    {
        function getUsuarios(){
            $sentence = $this->db->prepare('SELECT * FROM unc_248998.g09_usuario');
            $sentence->execute();
            return $sentence->fetchAll(PDO::FETCH_ASSOC);
        }

      //  function getBusquedaUsuario($nombre, $apellido){
      //      $sentencia = $this->db->prepare("Select ");
      //      $sentencia->execute();
      //      return $sentencia->fetchAll(PDO::FETCH_ASSOC);
      //  }

    }
?>