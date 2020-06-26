<?php
    class indexModel extends Model
    {
        function getUsuarios(){
            $sentence = $this->db->prepare('SELECT u.id_usuario, u.nombre, u.apellido, u.e_mail, count(e.id_evento) as cant
            from unc_248998.g09_usuario u
            join unc_248998.g09_evento e on u.id_usuario = e.id_usuario
            group by u.id_usuario, u.nombre, u.apellido, u.e_mail
            order by cant desc
            limit 10
            ');
            $sentence->execute();
            return $sentence->fetchAll(PDO::FETCH_ASSOC);
        }
        function getBusquedaUsuario(){
            $sentence = $this->db->prepare('SELECT * from unc_248998.g09_usuario');
            $sentence->execute();
            return $sentence->fetchAll(PDO::FETCH_ASSOC);
        }
        function getEventos($id_usuario){
            $sentence = $this->db->prepare('SELECT nombre, apellido, id_evento, count(nro_edicion) as cantEvento 
            from fn_gr09_listado_eventos_para_usuarioX(1)
            group by nombre, apellido, id_evento
            order by count(nro_edicion)');
            $sentence->execute([$id_usuario]);
            return $sentence->fetchAll(PDO::FETCH_ASSOC);
        }
    }
?>