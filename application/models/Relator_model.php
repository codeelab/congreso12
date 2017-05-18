<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Relator_model extends CI_Model {


public function list_mesas()
{
  $this->db->select('u.id_usuarios,u.username,u.nombre,u.a_paterno,u.a_materno,u.email,p.id_ponencias,p.titulo,p.autor,p.coautores,p.asesor,p.titulo, s.status, p.archivo_resumen, p.archivo_extenso, t.nombre_trabajo, a.nombre_tem,n.nombre_aca, p.mesa_id, p.status_id');
   $this->db->from('usuarios u');
   $this->db->join('ponencias p', 'u.id_usuarios = p.usuario_id');
   $this->db->join('status s', 'p.status_id = s.id_status');
   $this->db->join('tipo t', 'p.tipo_trabajo_id = t.id_tipo');
   $this->db->join('area_tematica a', 'p.mesa_id = a.id_tematica');
   $this->db->join('nivel_academico n', 'u.nivel = n.id_academico');
    $consulta = $this->db->get();
        if($consulta->num_rows() > 0 )
        {
            return $consulta->result();
        }else{
          return FALSE;
        }
}

function get_area_tematica(){

    // armamos la consulta
    $query = $this->db-> query('SELECT id_tematica, nombre_tem FROM area_tematica');

    if ($query->num_rows() > 0) {
        return $query->result();
     }else{
        return false;
     }
}

function get_salas($id_usuarios = false)
{

    // armamos la consulta
    $query = $this->db-> query('SELECT p.id_programa, u.id_usuarios, u.nombre, u.a_paterno, u.a_materno, m.nombre_mesa, h.hora, s.nombre_sala, f.fecha FROM programa p INNER JOIN horarios h ON h.id_horario = p.horario_id INNER JOIN usuarios u ON u.id_usuarios = p.usuario_id INNER JOIN salas s ON s.id_sala = p.sala_id INNER JOIN fechas f ON f.id_fecha = p.fecha_id INNER JOIN mesas m ON m.id_mesas = u.mesa');
      $this->db->where('usuario_id',$id_usuarios);

    if ($query->num_rows() > 0) {
        return $query->result();
     }else{
        return false;
     }
}



}