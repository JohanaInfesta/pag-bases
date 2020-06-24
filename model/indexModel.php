<?php
    class indexModel extends Model
    {
        function getUsuarios(){
            $sentence = $this->db->prepare('SELECT u.* FROM unc_248998.g09_usuario u');
       //     WHERE u.id_usuario EXISTS IN( SELECT count(e.*) FROM unc_248998.g09_evento e'); // no puedo agregar el count a la tabla 
            $sentence->execute();
            return $sentence->fetchAll(PDO::FETCH_ASSOC);
        }

      //  function getBusquedaUsuario($nombre, $apellido){
      //      $sentencia = $this->db->prepare("Select ");
      //      $sentencia->execute();
      //      return $sentencia->fetchAll(PDO::FETCH_ASSOC);
      //  }
        function cantEventos(){
            $sentence =$this->db->prepare('SELECT * FROM unc_248998.g09_evento e, unc_248998.g09_usuario u
            WHERE e.id_usuario = u.id_usuario ORDER BY u.id_usuario DESC' );
            $sentence->execute();
            return $sentence->fetchAll(PDO::FETCH_ASSOC);
        }
    }
?>