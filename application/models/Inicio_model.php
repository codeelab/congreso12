<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Inicio_model extends CI_Model {

    public function validate_user($clave,$usuario)
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

    function set_session() {
        // session->set_userdata is a CodeIgniter function that
        // stores data in a cookie in the user's browser.  Some of the values are built in
        // to CodeIgniter, others are added (like the IP address).  See CodeIgniter's documentation for details.
        $this->session->set_userdata( array(
                'clave'=>$this->details->clave,
                'usuario'=>$this->details->usuario,
                'isLoggedIn'=>true
            )
        );
    }


    public function register($data = array())
    {
        if($this->db->insert("usuarios", $data))
        {
            return TRUE;
        }
        else
        {
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


    function area_apoyo()
    {
        $query = $this->db-> query('SELECT id_area_apoyo,nombre_area_apoyo FROM area_apoyo');

        if ($query->num_rows() > 0)
        {
            // almacenamos en una matriz bidimensional
            foreach($query->result() as $row)
               $arrDatos[htmlspecialchars($row->id_area_apoyo, ENT_QUOTES)] = htmlspecialchars($row->nombre_area_apoyo, ENT_QUOTES);
                $query->free_result();
                return $arrDatos;
         }
    }

function check_username_availablity()
{
    $username = trim($this->input->post('username'));

    $query = $this->db->query('SELECT * FROM usuarios where username="'.$username.'"');

    if($query->num_rows() > 0)
    return false;
    else
    return true;
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