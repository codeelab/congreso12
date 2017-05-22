<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Logistico_model extends CI_Model {

function get_area($id_usuarios = false)
{
    // armamos la consulta
    $query = $this->db->query('SELECT a.id_asignacion, u.id_usuarios, u.nombre, u.a_paterno, u.a_materno, al.nombre_area, al.turno, s.nombre_sala, m.nombre_tem, f.fecha, h.hora, al.dia FROM asignacion_logistica a INNER JOIN usuarios u ON u.id_usuarios = a.usuario_id INNER JOIN area_logistica al ON al.id_logistica = a.area_id INNER JOIN salas s ON s.id_sala = a.sala_id INNER JOIN area_tematica m ON m.id_tematica = a.mesa_id INNER JOIN fechas f ON f.id_fecha = a.fecha_id INNER JOIN horarios h ON h.id_horario = a.horario_id');
      $this->db->where('usuario_id',$id_usuarios);

    if ($query->num_rows() > 0) {
        return $query->result();
     }else{
        return false;
     }
}



    public function acceso($clave,$usuario)
    {
        $this->db->where('clave',$clave);
        $this->db->where('usuario',$usuario);
        $query = $this->db->get('clave');
        if($query->num_rows() == 1)
        {
            return $query->row();
        }else{
            $this->session->set_flashdata('usuario_incorrecto','El usuario o la contraseña son incorrectos. Por favor intenténtelo nuevamente.');
            redirect(base_url().'registro');
        }
    }




}