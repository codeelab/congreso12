<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Ponentes_model extends CI_Model {


function get_tipo_trabajo(){

    // armamos la consulta
    $query = $this->db-> query('SELECT id_tipo,nombre_trabajo FROM tipo');

    // si hay resultados
    if ($query->num_rows() > 0) {
        // almacenamos en una matriz bidimensional
        foreach($query->result() as $row)
           $arrDatos[htmlspecialchars($row->id_tipo, ENT_QUOTES)] = 
htmlspecialchars($row->nombre_trabajo, ENT_QUOTES);

        $query->free_result();
        return $arrDatos;
     }
}

function get_area_tematica(){

    // armamos la consulta
    $query = $this->db-> query('SELECT id_tematica,nombre_tem FROM area_tematica');

    // si hay resultados
    if ($query->num_rows() > 0) {
        // almacenamos en una matriz bidimensional
        foreach($query->result() as $row)
           $arrDatos[htmlspecialchars($row->id_tematica, ENT_QUOTES)] = 
htmlspecialchars($row->nombre_tem, ENT_QUOTES);

        $query->free_result();
        return $arrDatos;
     }
}



  function get_total_ponencias(){
        $consulta = $this->db->get('ponencias');
    return  $consulta->num_rows() ;
  }


    //obtenemos las entradas de todos o un usuario, dependiendo
    // si le pasamos el id como argument o no
    public function list_ponencias($id_usuarios = false,$porpagina,$segmento)
    {
        if($id_usuarios === false)
        {
            $this->db->select('u.username,u.nombre,u.a_paterno,u.a_materno,p.id_ponencias,p.titulo,p.autor,p.coautores,p.asesor,p.titulo, s.status, p.archivo_resumen, p.archivo_extenso, t.nombre_trabajo, a.nombre_tem');
            $this->db->from('usuarios u');
            $this->db->join('ponencias p', 'u.id_usuarios = p.usuario_id');
            $this->db->join('status s', 'p.status_id = s.id_status');
            $this->db->join('tipo t', 'p.tipo_trabajo_id = t.id_tipo');
            $this->db->join('area_tematica a', 'p.mesa_id = a.id_tematica');
        }else{
            $this->db->select('u.username,u.nombre,u.a_paterno,u.a_materno,p.id_ponencias,p.titulo,p.autor,p.coautores,p.asesor,p.titulo, s.status, p.archivo_resumen, p.archivo_extenso, t.nombre_trabajo, a.nombre_tem');
            $this->db->from('usuarios u');
            $this->db->join('ponencias p', 'u.id_usuarios = p.usuario_id');
            $this->db->join('status s', 'p.status_id = s.id_status');
            $this->db->join('tipo t', 'p.tipo_trabajo_id = t.id_tipo');
            $this->db->join('area_tematica a', 'p.mesa_id = a.id_tematica');
            $this->db->where('u.id_usuarios',$id_usuarios);
        }
        $query = $this->db->get();
        if($query->num_rows() > 0 )
        {
            return $query->result();
        }else{
          return FALSE;
        }
    }

    //obtenemos las entradas de todos o un usuario, dependiendo
    // si le pasamos el id como argument o no
    public function list_extenso($id_ponencias = false)
    {
        if($id_ponencias === false)
        {
            $this->db->select('u.username,u.nombre,u.a_paterno,u.a_materno,p.id_ponencias,p.titulo,p.autor,p.coautores,p.asesor,p.titulo, s.status, p.archivo_resumen, p.archivo_extenso, p.mesa_id, t.nombre_trabajo');
            $this->db->from('usuarios u');
            $this->db->join('ponencias p', 'u.id_usuarios = p.usuario_id');
            $this->db->join('status s', 'p.status_id = s.id_status');
            $this->db->join('tipo t', 'p.tipo_trabajo_id = t.id_tipo');
        }else{
            $this->db->select('u.username,u.nombre,u.a_paterno,u.a_materno,p.id_ponencias,p.titulo,p.autor,p.coautores,p.asesor,p.titulo, s.status, p.archivo_resumen, p.archivo_extenso, p.mesa_id, t.nombre_trabajo');
            $this->db->from('usuarios u');
            $this->db->join('ponencias p', 'u.id_usuarios = p.usuario_id');
            $this->db->join('status s', 'p.status_id = s.id_status');
            $this->db->join('tipo t', 'p.tipo_trabajo_id = t.id_tipo');
            $this->db->where('u.id_usuarios',$id_ponencias);
        }
        $query = $this->db->get();
        if($query->num_rows() > 0 )
        {
            return $query->result();
        }else{
          return FALSE;
        }
    }


    public function mod($id_ponencias,$modificar="NULL",$titulo="NULL",$autor="NULL",$coautores="NULL",$asesor="NULL"){
        if($modificar=="NULL"){
            $consulta=$this->db->query("SELECT id_ponencias, autor, coautores, asesor, titulo FROM ponencias WHERE id_ponencias=$id_ponencias");
            return $consulta->result();
        }else{
          $consulta=$this->db->query("
              UPDATE ponencias SET titulo='$titulo', autor='$autor',
              coautores='$coautores', asesor='$asesor' WHERE id_ponencias=$id_ponencias;
                  ");
          if($consulta==true){
              return true;
          }else{
              return false;
          }
        }
    }

    public function eliminar($id_ponencias){
       $consulta=$this->db->query("DELETE FROM ponencias WHERE id_ponencias=$id_ponencias");
       if($consulta==true){
           return true;
       }else{
           return false;
       }
    }

    //obtenemos las entradas de todos o un usuario, dependiendo
    // si le pasamos el id como argument o no
    public function list_ponencia_pdf($id_usuarios = false)
    {
        if($id_usuarios === false)
        {
            $this->db->select('u.username,u.nombre,u.a_paterno,u.a_materno,p.id_ponencias,p.titulo,p.autor,p.coautores,p.asesor,p.titulo, s.status, p.archivo_resumen, p.archivo_extenso, t.nombre_trabajo, a.nombre_tem');
            $this->db->from('usuarios u');
            $this->db->join('ponencias p', 'u.id_usuarios = p.usuario_id');
            $this->db->join('status s', 'p.status_id = s.id_status');
            $this->db->join('tipo t', 'p.tipo_trabajo_id = t.id_tipo');
            $this->db->join('area_tematica a', 'p.mesa_id = a.id_tematica');
        }else{
            $this->db->select('u.username,u.nombre,u.a_paterno,u.a_materno,p.id_ponencias,p.titulo,p.autor,p.coautores,p.asesor,p.titulo, s.status, p.archivo_resumen, p.archivo_extenso, t.nombre_trabajo, a.nombre_tem');
            $this->db->from('usuarios u');
            $this->db->join('ponencias p', 'u.id_usuarios = p.usuario_id');
            $this->db->join('status s', 'p.status_id = s.id_status');
            $this->db->join('tipo t', 'p.tipo_trabajo_id = t.id_tipo');
            $this->db->join('area_tematica a', 'p.mesa_id = a.id_tematica');
            $this->db->where('u.id_usuarios',$id_usuarios);
        }
        $query = $this->db->get();
        if($query->num_rows() > 0 )
          {
              return $query->result();
          }else{
            return FALSE;
          }
    }


    public function list_ponentes($id_usuarios = false)
    {
            $this->db->select('u.username,u.nombre,u.a_paterno,u.a_materno,p.id_ponencias,p.titulo,p.autor,p.coautores,p.asesor,p.titulo, status_id, p.archivo_resumen, p.archivo_extenso');
            $this->db->from('usuarios u');
            $this->db->join('ponencias p', 'u.id_usuarios = p.usuario_id');
            $this->db->where('u.id_usuarios',$id_usuarios);

        $query = $this->db->get();
        if($query->num_rows() > 0 )
        {
            return $query->result();
        }else{
          return FALSE;
        }
    }



}