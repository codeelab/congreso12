<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Excel_model extends CI_Model {

 //---------------------------------------------------------------------
 // LISTA TODO EL CONTENIDO DE LOS USUARIOS TOTALES REGISTRADOS A EXCEL
 //---------------------------------------------------------------------

    //PDF GENERAL
    public function getUsuariosExcelTodos()
    {
      $this->db->select('u.id_usuarios, u.username, u.nombre, u.a_paterno, u.a_materno, u.edad, g.nombre_gen, n.nombre_nac, e.nombre_est, m.nombre_mun, u.email, i.nombre_ins, f.nombre_fac, a.nombre_aca, IFNULL(t.nombre_tem, "NULL") nombre_tem, IFNULL(ti.nombre_trabajo, "NULL")nombre_trabajo, IFNULL(ap.nombre_area_apoyo,"NULL") nombre_area_apoyo, u.mailing, p.nombre_puesto, u.status');
      $this->db->from('usuarios u');
      $this->db->join('puesto p','u.puesto = id_puesto', 'inner');
      $this->db->join('genero g','u.genero = id_genero', 'inner');
      $this->db->join('nacionalidad n','u.nacionalidad = id_nacionalidad', 'inner');
      $this->db->join('estado e','u.estado = id_estado', 'inner');
      $this->db->join('municipio m','u.municipio = id_municipio', 'inner');
      $this->db->join('institucion i','u.institucion = id_institucion', 'inner');
      $this->db->join('facultad f','u.facultad = id_facultad', 'inner');
      $this->db->join('nivel_academico a','u.nivel = id_academico', 'inner');
      $this->db->join('area_tematica t','u.mesa = id_tematica', 'left');
      $this->db->join('tipo ti','u.modalidad = id_tipo', 'left');
      $this->db->join('area_apoyo ap','u.area_id = id_area_apoyo', 'left');

      $query = $this->db->get();
        if($query->num_rows() > 0 )
          {
            return $query->result();
          }else{
            return FALSE;
          }
    }



    //PONENTES
    public function getUsuariosExcelPonentes()
    {
      $this->db->select('u.id_usuarios, u.username, u.nombre, u.a_paterno, u.a_materno, u.edad, g.nombre_gen, n.nombre_nac, e.nombre_est, m.nombre_mun, u.email, i.nombre_ins, f.nombre_fac, a.nombre_aca, IFNULL(t.nombre_tem, "NULL") nombre_tem, IFNULL(ti.nombre_trabajo, "NULL")nombre_trabajo, IFNULL(ap.nombre_area_apoyo,"NULL") nombre_area_apoyo, u.mailing, p.nombre_puesto, u.status');
      $this->db->from('usuarios u');
      $this->db->join('puesto p','u.puesto = id_puesto', 'inner');
      $this->db->join('genero g','u.genero = id_genero', 'inner');
      $this->db->join('nacionalidad n','u.nacionalidad = id_nacionalidad', 'inner');
      $this->db->join('estado e','u.estado = id_estado', 'inner');
      $this->db->join('municipio m','u.municipio = id_municipio', 'inner');
      $this->db->join('institucion i','u.institucion = id_institucion', 'inner');
      $this->db->join('facultad f','u.facultad = id_facultad', 'inner');
      $this->db->join('nivel_academico a','u.nivel = id_academico', 'inner');
      $this->db->join('area_tematica t','u.mesa = id_tematica', 'left');
      $this->db->join('tipo ti','u.modalidad = id_tipo', 'left');
      $this->db->join('area_apoyo ap','u.area_id = id_area_apoyo', 'left');
      $this->db->where('u.puesto','2');

      $query = $this->db->get();
        if($query->num_rows() > 0 )
          {
            return $query->result();
          }else{
            return FALSE;
          }
    }


    //MODERADORES
    public function getUsuariosExcelModerador()
    {
      $this->db->select('u.id_usuarios, u.username, u.nombre, u.a_paterno, u.a_materno, u.edad, g.nombre_gen, n.nombre_nac, e.nombre_est, m.nombre_mun, u.email, i.nombre_ins, f.nombre_fac, a.nombre_aca, IFNULL(t.nombre_tem, "NULL") nombre_tem, IFNULL(ti.nombre_trabajo, "NULL")nombre_trabajo, IFNULL(ap.nombre_area_apoyo,"NULL") nombre_area_apoyo, u.mailing, p.nombre_puesto, u.status');
      $this->db->from('usuarios u');
      $this->db->join('puesto p','u.puesto = id_puesto', 'inner');
      $this->db->join('genero g','u.genero = id_genero', 'inner');
      $this->db->join('nacionalidad n','u.nacionalidad = id_nacionalidad', 'inner');
      $this->db->join('estado e','u.estado = id_estado', 'inner');
      $this->db->join('municipio m','u.municipio = id_municipio', 'inner');
      $this->db->join('institucion i','u.institucion = id_institucion', 'inner');
      $this->db->join('facultad f','u.facultad = id_facultad', 'inner');
      $this->db->join('nivel_academico a','u.nivel = id_academico', 'inner');
      $this->db->join('area_tematica t','u.mesa = id_tematica', 'left');
      $this->db->join('tipo ti','u.modalidad = id_tipo', 'left');
      $this->db->join('area_apoyo ap','u.area_id = id_area_apoyo', 'left');
      $this->db->where('u.puesto','4');

      $query = $this->db->get();
        if($query->num_rows() > 0 )
          {
            return $query->result();
          }else{
            return FALSE;
          }
    }

    //RELATORES
    public function getUsuariosExcelRelator()
    {
      $this->db->select('u.id_usuarios, u.username, u.nombre, u.a_paterno, u.a_materno, u.edad, g.nombre_gen, n.nombre_nac, e.nombre_est, m.nombre_mun, u.email, i.nombre_ins, f.nombre_fac, a.nombre_aca, IFNULL(t.nombre_tem, "NULL") nombre_tem, IFNULL(ti.nombre_trabajo, "NULL")nombre_trabajo, IFNULL(ap.nombre_area_apoyo,"NULL") nombre_area_apoyo, u.mailing, p.nombre_puesto, u.status');
      $this->db->from('usuarios u');
      $this->db->join('puesto p','u.puesto = id_puesto', 'inner');
      $this->db->join('genero g','u.genero = id_genero', 'inner');
      $this->db->join('nacionalidad n','u.nacionalidad = id_nacionalidad', 'inner');
      $this->db->join('estado e','u.estado = id_estado', 'inner');
      $this->db->join('municipio m','u.municipio = id_municipio', 'inner');
      $this->db->join('institucion i','u.institucion = id_institucion', 'inner');
      $this->db->join('facultad f','u.facultad = id_facultad', 'inner');
      $this->db->join('nivel_academico a','u.nivel = id_academico', 'inner');
      $this->db->join('area_tematica t','u.mesa = id_tematica', 'left');
      $this->db->join('tipo ti','u.modalidad = id_tipo', 'left');
      $this->db->join('area_apoyo ap','u.area_id = id_area_apoyo', 'left');
      $this->db->where('u.puesto','5');

      $query = $this->db->get();
        if($query->num_rows() > 0 )
          {
            return $query->result();
          }else{
            return FALSE;
          }
    }

    //EVALUADORES
    public function getUsuariosExcelEvaluador()
    {
      $this->db->select('u.id_usuarios, u.username, u.nombre, u.a_paterno, u.a_materno, u.edad, g.nombre_gen, n.nombre_nac, e.nombre_est, m.nombre_mun, u.email, i.nombre_ins, f.nombre_fac, a.nombre_aca, IFNULL(t.nombre_tem, "NULL") nombre_tem, IFNULL(ti.nombre_trabajo, "NULL")nombre_trabajo, IFNULL(ap.nombre_area_apoyo,"NULL") nombre_area_apoyo, u.mailing, p.nombre_puesto, u.status');
      $this->db->from('usuarios u');
      $this->db->join('puesto p','u.puesto = id_puesto', 'inner');
      $this->db->join('genero g','u.genero = id_genero', 'inner');
      $this->db->join('nacionalidad n','u.nacionalidad = id_nacionalidad', 'inner');
      $this->db->join('estado e','u.estado = id_estado', 'inner');
      $this->db->join('municipio m','u.municipio = id_municipio', 'inner');
      $this->db->join('institucion i','u.institucion = id_institucion', 'inner');
      $this->db->join('facultad f','u.facultad = id_facultad', 'inner');
      $this->db->join('nivel_academico a','u.nivel = id_academico', 'inner');
      $this->db->join('area_tematica t','u.mesa = id_tematica', 'left');
      $this->db->join('tipo ti','u.modalidad = id_tipo', 'left');
      $this->db->join('area_apoyo ap','u.area_id = id_area_apoyo', 'left');
      $this->db->where('u.puesto','3');

      $query = $this->db->get();
        if($query->num_rows() > 0 )
          {
            return $query->result();
          }else{
            return FALSE;
          }
    }


    //LOGISTICO
    public function getUsuariosExcelLogistico()
    {
      $this->db->select('u.id_usuarios, u.username, u.nombre, u.a_paterno, u.a_materno, u.edad, g.nombre_gen, n.nombre_nac, e.nombre_est, m.nombre_mun, u.email, i.nombre_ins, f.nombre_fac, a.nombre_aca, IFNULL(t.nombre_tem, "NULL") nombre_tem, IFNULL(ti.nombre_trabajo, "NULL")nombre_trabajo, IFNULL(ap.nombre_area_apoyo,"NULL") nombre_area_apoyo, u.mailing, p.nombre_puesto, u.status');
      $this->db->from('usuarios u');
      $this->db->join('puesto p','u.puesto = id_puesto', 'inner');
      $this->db->join('genero g','u.genero = id_genero', 'inner');
      $this->db->join('nacionalidad n','u.nacionalidad = id_nacionalidad', 'inner');
      $this->db->join('estado e','u.estado = id_estado', 'inner');
      $this->db->join('municipio m','u.municipio = id_municipio', 'inner');
      $this->db->join('institucion i','u.institucion = id_institucion', 'inner');
      $this->db->join('facultad f','u.facultad = id_facultad', 'inner');
      $this->db->join('nivel_academico a','u.nivel = id_academico', 'inner');
      $this->db->join('area_tematica t','u.mesa = id_tematica', 'left');
      $this->db->join('tipo ti','u.modalidad = id_tipo', 'left');
      $this->db->join('area_apoyo ap','u.area_id = id_area_apoyo', 'left');
      $this->db->where('u.puesto','6');

      $query = $this->db->get();
        if($query->num_rows() > 0 )
          {
            return $query->result();
          }else{
            return FALSE;
          }
    }


    //ASISTENTES
    public function getUsuariosExcelAsistente()
    {
      $this->db->select('u.id_usuarios, u.username, u.nombre, u.a_paterno, u.a_materno, u.edad, g.nombre_gen, n.nombre_nac, e.nombre_est, m.nombre_mun, u.email, i.nombre_ins, f.nombre_fac, a.nombre_aca, IFNULL(t.nombre_tem, "NULL") nombre_tem, IFNULL(ti.nombre_trabajo, "NULL")nombre_trabajo, IFNULL(ap.nombre_area_apoyo,"NULL") nombre_area_apoyo, u.mailing, p.nombre_puesto, u.status');
      $this->db->from('usuarios u');
      $this->db->join('puesto p','u.puesto = id_puesto', 'inner');
      $this->db->join('genero g','u.genero = id_genero', 'inner');
      $this->db->join('nacionalidad n','u.nacionalidad = id_nacionalidad', 'inner');
      $this->db->join('estado e','u.estado = id_estado', 'inner');
      $this->db->join('municipio m','u.municipio = id_municipio', 'inner');
      $this->db->join('institucion i','u.institucion = id_institucion', 'inner');
      $this->db->join('facultad f','u.facultad = id_facultad', 'inner');
      $this->db->join('nivel_academico a','u.nivel = id_academico', 'inner');
      $this->db->join('area_tematica t','u.mesa = id_tematica', 'left');
      $this->db->join('tipo ti','u.modalidad = id_tipo', 'left');
      $this->db->join('area_apoyo ap','u.area_id = id_area_apoyo', 'left');
      $this->db->where('u.puesto','7');

      $query = $this->db->get();
        if($query->num_rows() > 0 )
          {
            return $query->result();
          }else{
            return FALSE;
          }
    }
}