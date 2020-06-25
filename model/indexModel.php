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


    }
?>