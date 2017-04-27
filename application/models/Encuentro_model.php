<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Encuentro_model extends CI_Model {


  function get_total_ponencias($id_ponencias = false){
    $this->db->select('u.username,u.nombre,u.a_paterno,u.a_materno,p.id_ponencias,p.titulo,p.autor,p.coautores,p.asesor,p.titulo, s.status, p.archivo_resumen, p.archivo_extenso, t.nombre_trabajo, a.nombre_tem');
   $this->db->from('usuarios u');
   $this->db->join('ponencias p', 'u.id_usuarios = p.usuario_id');
   $this->db->join('status s', 'p.status_id = s.id_status');
   $this->db->join('tipo t', 'p.tipo_trabajo_id = t.id_tipo');
   $this->db->join('area_tematica a', 'p.mesa_id = a.id_tematica');
   $this->db->where('c_jovenes = 1');
   $this->db->where('p.mesa_id',$id_ponencias);
    $consulta = $this->db->get();
        if($consulta->num_rows() > 0 )
        {
            return $consulta->result();
        }else{
          return FALSE;
        }
  }


    //obtenemos las entradas de todos o un usuario, dependiendo
    // si le pasamos el id como argument o no
    public function list_ponencias($id_ponencias = false,$porpagina,$segmento)
    {
    $this->db->select('u.username,u.nombre,u.a_paterno,u.a_materno,u.email,p.id_ponencias,p.titulo,p.autor,p.coautores,p.asesor,p.titulo, s.status, p.archivo_resumen, p.archivo_extenso, t.nombre_trabajo, a.nombre_tem,n.nombre_aca');
   $this->db->from('usuarios u');
   $this->db->join('ponencias p', 'u.id_usuarios = p.usuario_id');
   $this->db->join('status s', 'p.status_id = s.id_status');
   $this->db->join('tipo t', 'p.tipo_trabajo_id = t.id_tipo');
   $this->db->join('area_tematica a', 'p.mesa_id = a.id_tematica');
   $this->db->join('nivel_academico n', 'u.nivel = n.id_academico');
   $this->db->where('c_jovenes = 1');

   $this->db->where('p.mesa_id',$id_ponencias);
    $consulta = $this->db->get();
        if($consulta->num_rows() > 0 )
        {
            return $consulta->result();
        }else{
          return FALSE;
        }
    }

    public function evaluar($id_ponencias,$evaluar="NULL",$status_id="NULL"){
        if($evaluar=="NULL"){
            $consulta=$this->db->query("SELECT id_ponencias, status_id FROM ponencias WHERE id_ponencias=$id_ponencias");
            return $consulta->result();
        }else{
          $consulta=$this->db->query("
              UPDATE ponencias SET status_id='$status_id' WHERE id_ponencias=$id_ponencias;
                  ");
          if($consulta==true){
              return true;
          }else{
              return false;
          }
        }
    }



    public function editar($id_ponencias,$editar="NULL",$calificacion_1="NULL",$calificacion_2="NULL",$calificacion_3="NULL",$calificacion_4="NULL",$calificacion_5="NULL",$calificacion_6="NULL",$calificacion_7="NULL",$calificacion_8="NULL"){
        if($editar=="NULL"){
            $consulta=$this->db->query("SELECT calificacion_1, calificacion_2, calificacion_3, calificacion_4, calificacion_5, calificacion_6, calificacion_7, calificacion_8 FROM evaluaciones WHERE ponencia_id=$id_ponencias");
            return $consulta->result();
        }else{
          $consulta=$this->db->query("
              UPDATE evaluaciones SET calificacion_1='$calificacion_1', calificacion_2='$calificacion_2', calificacion_3='$calificacion_3', calificacion_4='$calificacion_4', calificacion_5='$calificacion_5', calificacion_6='$calificacion_6', calificacion_7='$calificacion_7', calificacion_8='$calificacion_8' WHERE ponencia_id=$id_ponencias;
                  ");
          if($consulta==true){
              return true;
          }else{
              return false;
          }
        }
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

    //obtenemos las entradas de todos o un usuario, dependiendo
    // si le pasamos el id como argument o no
    public function list_ponente($id_ponencias = true)
    {
    $this->db->select('u.username,u.nombre,u.a_paterno,u.a_materno,u.email,p.id_ponencias,p.titulo,p.autor,p.coautores,p.asesor,p.titulo, s.status, p.archivo_resumen, p.archivo_extenso, t.nombre_trabajo, a.nombre_tem,n.nombre_aca');
   $this->db->from('usuarios u');
   $this->db->join('ponencias p', 'u.id_usuarios = p.usuario_id');
   $this->db->join('status s', 'p.status_id = s.id_status');
   $this->db->join('tipo t', 'p.tipo_trabajo_id = t.id_tipo');
   $this->db->join('area_tematica a', 'p.mesa_id = a.id_tematica');
   $this->db->join('nivel_academico n', 'u.nivel = n.id_academico');
   $this->db->where('c_jovenes = 1');
   $this->db->where('p.mesa_id',$id_ponencias);
    $consulta = $this->db->get();
        if($consulta->num_rows() > 0 )
        {
            return $consulta->result();
        }else{
          return FALSE;
        }
    }

  function inserta_evaluacion($evaluador_id,$ponencia_id,$ponente,$correo,$nivel,$titulo,$modalidad,$mesa,$status,$calificacion_1,$calificacion_2,$calificacion_3,$calificacion_4,$calificacion_5,$calificacion_6,$calificacion_7,$calificacion_8,$status_id)
  {
         $data = array(
            'evaluador_id'   => $evaluador_id,
            'ponencia_id'    => $ponencia_id,
            'ponente'        => $ponente,
            'correo'         => $correo,
            'nivel'          => $nivel,
            'titulo'         => $titulo,
            'modalidad'      => $modalidad,
            'mesa'           => $mesa,
            'status'         => $status,
            'calificacion_1' => $calificacion_1,
            'calificacion_2' => $calificacion_2,
            'calificacion_3' => $calificacion_3,
            'calificacion_4' => $calificacion_4,
            'calificacion_5' => $calificacion_5,
            'calificacion_6' => $calificacion_6,
            'calificacion_7' => $calificacion_7,
            'calificacion_8' => $calificacion_8,
            'status_id'      => $status_id
         );


         $this->db->insert('evaluaciones',$data);
         $this->db->query("UPDATE ponencias SET status_id='5' WHERE id_ponencias=$ponencia_id;");
  }


  function list_evaluados($id_ponencias = true)
  {

    // armamos la consulta
    $query = $this->db-> query('SELECT * FROM evaluaciones');
    // si hay resultados
    if ($query->num_rows() > 0) {
        // almacenamos en una matriz bidimensional
        foreach($query->result() as $row)
           $arrDatos[htmlspecialchars($row->id_evaluacion, ENT_QUOTES)] = htmlspecialchars($row->ponente, ENT_QUOTES);

        $query->free_result();
        return $arrDatos;
     }
  }








}