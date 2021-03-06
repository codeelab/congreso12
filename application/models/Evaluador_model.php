<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Evaluador_model extends CI_Model {


function get_area_tematica(){

    // armamos la consulta
    $query = $this->db-> query('SELECT id_tematica, nombre_tem FROM area_tematica');

    if ($query->num_rows() > 0) {
        return $query->result();
     }else{
        return false;
     }
}



    //obtenemos las entradas de todos o un usuario, dependiendo
    // si le pasamos el id como argument o no
    public function lista_ponencias()
    {
      $this->db->select('u.id_usuarios,u.username,u.nombre,u.a_paterno,u.a_materno,u.email,u.mesa,p.id_ponencias,p.titulo,p.autor,p.coautores,p.asesor,p.titulo, s.status, p.archivo_resumen, p.archivo_extenso, t.nombre_trabajo, a.nombre_tem,n.nombre_aca, p.mesa_id,p.status_id');
      $this->db->from('usuarios u');
      $this->db->join('ponencias p', 'u.id_usuarios = p.usuario_id');
      $this->db->join('status s', 'p.status_id = s.id_status');
      $this->db->join('tipo t', 'p.tipo_trabajo_id = t.id_tipo');
      $this->db->join('area_tematica a', 'p.mesa_id = a.id_tematica');
      $this->db->join('nivel_academico n', 'u.nivel = n.id_academico');
      $this->db->where('id_status = 1');
      $consulta = $this->db->get();
      return $consulta->result();
    }

    public function lista_ponencias_aprobados()
    {
      $this->db->select('u.id_usuarios,u.username,u.nombre,u.a_paterno,u.a_materno,u.email,u.mesa,p.id_ponencias,p.titulo,p.autor,p.coautores,p.asesor,p.titulo, s.status, p.archivo_resumen, p.archivo_extenso, t.nombre_trabajo, a.nombre_tem,n.nombre_aca, p.mesa_id,p.status_id');
      $this->db->from('usuarios u');
      $this->db->join('ponencias p', 'u.id_usuarios = p.usuario_id');
      $this->db->join('status s', 'p.status_id = s.id_status');
      $this->db->join('tipo t', 'p.tipo_trabajo_id = t.id_tipo');
      $this->db->join('area_tematica a', 'p.mesa_id = a.id_tematica');
      $this->db->join('nivel_academico n', 'u.nivel = n.id_academico');
      $this->db->where('id_status = 2');
      $consulta = $this->db->get();
      return $consulta->result();
    }


  function obtenerPonente($id)
  {
    $this->db->where('id_ponencias',$id);
    $query = $this->db->get('ponencias');
    if($query->num_rows() > 0) return $query;
    else return false;
  }


  function evaluar($id,$data){
    $datos = array(
      'status_id' => $data['status_id']
    );
    $this->db->where('id_ponencias',$id);
    $query = $this->db->update('ponencias',$datos);
    redirect('evaluador/listado');
  }


function get_status_id(){

    // armamos la consulta
    $query = $this->db-> query('SELECT id_status,status FROM status');

    // si hay resultados
    if ($query->num_rows() > 0) {
        // almacenamos en una matriz bidimensional
        foreach($query->result() as $row)
           $arrDatos[htmlspecialchars($row->id_status, ENT_QUOTES)] = 
htmlspecialchars($row->status, ENT_QUOTES);

        $query->free_result();
        return $arrDatos;
     }
}

    //obtenemos las entradas de todos o un usuario, dependiendo
    // si le pasamos el id como argument o no
    public function list_evaluador_pdf($id_usuarios = false)
    {
        if($id_usuarios === false)
        {
            $this->db->select('u.id_usuarios, u.username, u.nombre, u.a_paterno, u.a_materno, a.nombre_tem, i.nombre_ins, f.nombre_fac');
            $this->db->from('usuarios u');
            $this->db->join('area_tematica a', 'u.mesa = a.id_tematica');
            $this->db->join('institucion i', 'u.institucion = i.id_institucion');
            $this->db->join('facultad f', 'u.institucion = f.id_facultad');
        }else{
            $this->db->select('u.id_usuarios, u.username, u.nombre, u.a_paterno, u.a_materno, a.nombre_tem, i.nombre_ins, f.nombre_fac');
            $this->db->from('usuarios u');
            $this->db->join('area_tematica a', 'u.mesa = a.id_tematica');
            $this->db->join('institucion i', 'u.institucion = i.id_institucion');
            $this->db->join('facultad f', 'u.institucion = f.id_facultad');
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