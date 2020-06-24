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
            $sentence =$this->db->prepare('SELECT count(*) FROM unc_248998.g09_evento e JOIN
                unc_248998.g09_usuario u on u.id_usuario = e.id_usuario ORDER BY u.id_usuario DESC' );
            $sentence->execute();
            return $sentence->fetchAll(PDO::FETCH_ASSOC);
        }
    }
?>