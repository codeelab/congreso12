<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Relator_model extends CI_Model {


    //obtenemos las entradas de todos o un usuario, dependiendo
    // si le pasamos el id como argument o no
    public function list_mesas()
    {
    $this->db->select('u.username,u.nombre,u.a_paterno,u.a_materno,u.email,p.id_ponencias,p.titulo,p.autor,p.coautores,p.asesor,p.titulo, s.status, p.archivo_resumen, p.archivo_extenso, t.nombre_trabajo, a.nombre_tem,n.nombre_aca, p.mesa_id');
   $this->db->from('usuarios u');
   $this->db->join('ponencias p', 'u.id_usuarios = p.usuario_id');
   $this->db->join('status s', 'p.status_id = s.id_status');
   $this->db->join('tipo t', 'p.tipo_trabajo_id = t.id_tipo');
   $this->db->join('area_tematica a', 'p.mesa_id = a.id_tematica');
   $this->db->join('nivel_academico n', 'u.nivel = n.id_academico');
   $this->db->where('id_status = 2');
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
    $query = $this->db-> query('SELECT u.id_usuarios, a.nombre_tem, mesa FROM usuarios u INNER JOIN area_tematica a ON a.id_tematica = u.mesa');

    if ($query->num_rows() > 0) {
        return $query->result();
     }else{
        return false;
     }
}


}