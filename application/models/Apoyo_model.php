<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Apoyo_model extends CI_Model {


function listado_tickets()
{
    // armamos la consulta
    $query = $this->db->query('SELECT id_usuarios, nombre, a_paterno, a_materno, nombre_puesto, puesto FROM usuarios INNER JOIN puesto ON id_puesto = puesto');

    if ($query->num_rows() > 0) {
        return $query->result();
     }else{
        return false;
     }
}


    public function pdf($id_usuarios = false)
    {
        if($id_usuarios === false)
        {
            $this->db->select('id_usuarios, nombre, a_paterno, a_materno, nombre_puesto, puesto, status');
            $this->db->from('usuarios');
            $this->db->join('puesto', 'id_puesto = puesto');
        }else{
            $this->db->select('id_usuarios, nombre, a_paterno, a_materno, nombre_puesto, puesto, status');
            $this->db->from('usuarios');
            $this->db->join('puesto', 'id_puesto = puesto');
            $this->db->where('id_usuarios',$id_usuarios);
        }
        $query = $this->db->get();
        if($query->num_rows() > 0 )
          {
              return $query->result();
          }else{
            return FALSE;
          }
    }


    function sexo()
    {
        $query = $this->db-> query('SELECT id_genero,nombre_gen FROM genero');

        if ($query->num_rows() > 0)
        {
            // almacenamos en una matriz bidimensional
            foreach($query->result() as $row)
               $arrDatos[htmlspecialchars($row->id_genero, ENT_QUOTES)] = htmlspecialchars($row->nombre_gen, ENT_QUOTES);
                $query->free_result();
                return $arrDatos;
         }
    }


    function escolaridad()
    {
        $query = $this->db-> query('SELECT id_academico,nombre_aca FROM nivel_academico');

        if ($query->num_rows() > 0)
        {
            // almacenamos en una matriz bidimensional
            foreach($query->result() as $row)
               $arrDatos[htmlspecialchars($row->id_academico, ENT_QUOTES)] = htmlspecialchars($row->nombre_aca, ENT_QUOTES);
                $query->free_result();
                return $arrDatos;
         }
    }

    function area_tematica()
    {
        $query = $this->db-> query('SELECT id_tematica,nombre_tem FROM area_tematica');

        if ($query->num_rows() > 0)
        {
            // almacenamos en una matriz bidimensional
            foreach($query->result() as $row)
               $arrDatos[htmlspecialchars($row->id_tematica, ENT_QUOTES)] = htmlspecialchars($row->nombre_tem, ENT_QUOTES);
                $query->free_result();
                return $arrDatos;
         }
    }

    function nacionalidad()
    {
        $query = $this->db-> query('SELECT id_nacionalidad,nombre_nac FROM nacionalidad');

        if ($query->num_rows() > 0)
        {
            // almacenamos en una matriz bidimensional
            foreach($query->result() as $row)
               $arrDatos[htmlspecialchars($row->id_nacionalidad, ENT_QUOTES)] = htmlspecialchars($row->nombre_nac, ENT_QUOTES);
                $query->free_result();
                return $arrDatos;
         }
    }

    function getEstados()
    {
        return $this->db->get('estado')->result();
    }

       function getCidades($id_estado)
       {
        return $this->db->select('m.id_municipio, m.nombre_mun')
                        ->from('estado e')
                        ->join('municipio m', 'e.id_estado = m.estado_id ')
                        ->where(array('m.estado_id' => $id_estado) )
                        ->get()->result();
    }

    function getInstituciones()
    {
        return $this->db->get('institucion')->result();
    }

    function getFacultad($id_institucion)
    {
        return $this->db->select('f.id_facultad, f.nombre_fac')
                        ->from('institucion i')
                        ->join('facultad f', 'i.id_institucion = f.institucion_id ')
                        ->where(array('f.institucion_id' => $id_institucion) )
                        ->get()->result();
    }


    function modificacion($id_usuarios)
    {
        $query = $this->db->query("SELECT id_ponencias, usuario_id, titulo, autor, coautores, asesor FROM ponencias WHERE usuario_id = $id_usuarios");
        if($query->num_rows() > 0 )
          {
            return $query->result();
          }else{
            return false;
          }
    }



     function editar($usuario_id,$datos)
     {
      $this->db->where('usuario_id',$usuario_id);
      $this->db->update('ponencias',$datos);
     }










}//CEIERRE DEL MODELO