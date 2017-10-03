<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Asistente_model extends CI_Model {

function get_area($id_usuarios = false)
{
    // armamos la consulta
    $query = $this->db->query('SELECT u.id_usuarios, u.nombre, u.a_paterno, u.a_materno, f.nombre_fac, i.nombre_ins FROM usuarios u INNER JOIN institucion i ON u.institucion = i.id_institucion INNER JOIN facultad f ON u.institucion = f.id_facultad');
      $this->db->where('usuario_id',$id_usuarios);

    if ($query->num_rows() > 0) {
        return $query->result();
     }else{
        return false;
     }
}


    public function mod($id_usuarios,$modificar="NULL",$nombre="NULL",$a_paterno="NULL",$a_materno="NULL",$institucion="NULL",$facultad="NULL"){
        if($modificar=="NULL"){
            $consulta=$this->db->query("SELECT id_usuarios, nombre, a_paterno, a_materno FROM usuarios WHERE id_usuarios=$id_usuarios");
            return $consulta->result();
        }else{
          $consulta=$this->db->query("
              UPDATE usuarios SET nombre='$nombre',
              a_paterno='$a_paterno', a_materno='$a_materno' WHERE id_usuarios=$id_usuarios;
                  ");
          if($consulta==true){
              return true;
          }else{
              return false;
          }
        }
    }

    public function alerta()
    {
        $this->db->select('*');
        $this->db->from('alertas');

        $query = $this->db->get();
        if ($query->num_rows() > 0 ) {
            return $query->result();
        }
    }



}