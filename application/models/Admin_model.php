<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Admin_model extends CI_Model {

 //==================================
 // CARPETA DE FUNCIONES APARIENCIA
 //==================================


 //----------------------------------
 // AGREGA NUEVO MENU
 //----------------------------------
  function nuevo_menu($nombre_menu,$url,$ord, $estado)
  {


    $data = array(
        'nombre_menu' => $nombre_menu,
        'url' => $url,
        'orden' => $ord,
        'estado' => $estado,
        );
    $this->db->insert('menu',$data);
  }

 //--------------------------------------
 // LISTA TODO EL CONTENIDO DE LOS MENUS
 //--------------------------------------
  function Getmenu()
  {
    $query = $this->db->query('SELECT id_menu, nombre_menu, url, orden, estado FROM menu');

    if ($query->num_rows() > 0) {
        return $query->result();
     }else{
        return false;
     }
}

 //--------------------------------------
 // LISTA TODO EL CONTENIDO DE LOS MENUS
 // FUNCIÓN PARA EDITAR MENÚS
 //--------------------------------------
  function lista_menu($id)
  {
      $this->db->where('id_menu',$id);
      $query = $this->db->get('menu');
      if ($query->num_rows() > 0) return $query->result(); else return false;
  }

 //==============================================================
 // CARPETA DE FUNCIONES USUARIOS
 //==============================================================


 //--------------------------------------------------------------
 // LISTA TODO EL CONTENIDO DE LOS USUARIOS TOTALES REGISTRADOS
 // LISTA CON DATOS MUY BREVES PARA VISTA
 //--------------------------------------------------------------

    public function getUsuarios()
    {
      $this->db->select('u.id_usuarios, u.nombre, u.a_paterno, u.a_materno, p.nombre_puesto, u.status');
      $this->db->from('usuarios u');
      $this->db->join('puesto p','p.id_puesto = u.puesto', 'inner');

      $query = $this->db->get();
        if($query->num_rows() > 0 )
          {
            return $query->result();
          }else{
            return FALSE;
          }
    }

 //--------------------------------------------------------------
 // LISTA EL ÚLTIMO USUARIO REGISTRADO
 //--------------------------------------------------------------

    public function getUsuariosReg()
    {
      $this->db->select('id_usuarios, nombre, a_paterno, a_materno, nombre_puesto');
      $this->db->from('usuarios');
      $this->db->join('puesto','id_puesto = puesto', 'inner');
      $this->db->order_by("id_usuarios", "DESC");
      $this->db->limit(1);

      $query = $this->db->get();
        if($query->num_rows() > 0 )
          {
            return $query->result();
          }else{
            return FALSE;
          }
    }

 //--------------------------------------------------------------
 // LISTA TODO EL CONTENIDO DE LOS USUARIOS PONENTES REGISTRADOS
 // LISTA CON DATOS MUY BREVES PARA VISTA
 //--------------------------------------------------------------

    public function getUsuariosP()
    {
      $this->db->select('u.id_usuarios, u.nombre, u.a_paterno, u.a_materno,  p.nombre_puesto, u.status');
      $this->db->from('usuarios u');
      $this->db->join('puesto p','p.id_puesto = u.puesto', 'inner');
      $this->db->where('u.puesto','2');

      $query = $this->db->get();
        if($query->num_rows() > 0 )
          {
            return $query->result();
          }else{
            return FALSE;
          }
    }

 //--------------------------------------------------------------
 // LISTA TODO EL CONTENIDO DE LOS USUARIOS PONENTES REGISTRADOS
 // LISTA CON DATOS MUY BREVES PARA VISTA
 //--------------------------------------------------------------

    public function getUsuariosE()
    {
      $this->db->select('u.id_usuarios, u.nombre, u.a_paterno, u.a_materno,  p.nombre_puesto, u.status');
      $this->db->from('usuarios u');
      $this->db->join('puesto p','p.id_puesto = u.puesto', 'inner');
      $this->db->where('u.puesto','3');

      $query = $this->db->get();
        if($query->num_rows() > 0 )
          {
            return $query->result();
          }else{
            return FALSE;
          }
    }

 //--------------------------------------------------------------
 // LISTA TODO EL CONTENIDO DE LOS USUARIOS MODERADORES REGISTRADOS
 // LISTA CON DATOS MUY BREVES PARA VISTA
 //--------------------------------------------------------------

    public function getUsuariosM()
    {
      $this->db->select('u.id_usuarios, u.nombre, u.a_paterno, u.a_materno,  p.nombre_puesto, u.status');
      $this->db->from('usuarios u');
      $this->db->join('puesto p','p.id_puesto = u.puesto', 'inner');
      $this->db->where('u.puesto','4');

      $query = $this->db->get();
        if($query->num_rows() > 0 )
          {
            return $query->result();
          }else{
            return FALSE;
          }
    }

 //--------------------------------------------------------------
 // LISTA TODO EL CONTENIDO DE LOS USUARIOS RELATORES REGISTRADOS
 // LISTA CON DATOS MUY BREVES PARA VISTA
 //--------------------------------------------------------------

    public function getUsuariosR()
    {
      $this->db->select('u.id_usuarios, u.nombre, u.a_paterno, u.a_materno,  p.nombre_puesto, u.status');
      $this->db->from('usuarios u');
      $this->db->join('puesto p','p.id_puesto = u.puesto', 'inner');
      $this->db->where('u.puesto','5');

      $query = $this->db->get();
        if($query->num_rows() > 0 )
          {
            return $query->result();
          }else{
            return FALSE;
          }
    }

 //--------------------------------------------------------------
 // LISTA TODO EL CONTENIDO DE LOS USUARIOS APOYO REGISTRADOS
 // LISTA CON DATOS MUY BREVES PARA VISTA
 //--------------------------------------------------------------

    public function getUsuariosL()
    {
      $this->db->select('u.id_usuarios, u.nombre, u.a_paterno, u.a_materno,  p.nombre_puesto, u.status');
      $this->db->from('usuarios u');
      $this->db->join('puesto p','p.id_puesto = u.puesto', 'inner');
      $this->db->where('u.puesto','6');

      $query = $this->db->get();
        if($query->num_rows() > 0 )
          {
            return $query->result();
          }else{
            return FALSE;
          }
    }

 //--------------------------------------------------------------
 // LISTA TODO EL CONTENIDO DE LOS USUARIOS ASISTENTE REGISTRADOS
 // LISTA CON DATOS MUY BREVES PARA VISTA
 //--------------------------------------------------------------

    public function getUsuariosA()
    {
      $this->db->select('u.id_usuarios, u.nombre, u.a_paterno, u.a_materno,  p.nombre_puesto, u.status');
      $this->db->from('usuarios u');
      $this->db->join('puesto p','p.id_puesto = u.puesto', 'inner');
      $this->db->where('u.puesto','7');

      $query = $this->db->get();
        if($query->num_rows() > 0 )
          {
            return $query->result();
          }else{
            return FALSE;
          }
    }

 //--------------------------------------------------------------
 // LISTA TODO EL CONTENIDO DE LOS USUARIOS TOTALES REGISTRADOS
 // LISTA CON DATOS COMPLETOS
 //--------------------------------------------------------------

    public function getUsuariosTotal($id)
    {
      $this->db->select('u.id_usuarios, u.username, u.nombre, u.a_paterno, u.a_materno, u.edad, g.nombre_gen, n.nombre_nac, e.nombre_est, m.nombre_mun, u.email, i.nombre_ins, f.nombre_fac, a.nombre_aca, IFNULL(t.nombre_tem, "NULL") nombre_tem, IFNULL(ti.nombre_trabajo, "NULL")nombre_trabajo, IFNULL(ap.nombre_area_apoyo,"NULL") nombre_area_apoyo, u.mailing, p.nombre_puesto, u.status');
      $this->db->from('usuarios u');
      $this->db->join('genero g','u.genero = id_genero', 'inner');
      $this->db->join('nacionalidad n','u.nacionalidad = id_nacionalidad', 'inner');
      $this->db->join('estado e','u.estado = id_estado', 'inner');
      $this->db->join('municipio m','u.municipio = id_municipio', 'inner');
      $this->db->join('institucion i','u.institucion = id_institucion', 'inner');
      $this->db->join('facultad f','u.facultad = id_facultad', 'inner');
      $this->db->join('nivel_academico a','u.nivel = id_academico', 'inner');
      $this->db->join('puesto p','u.puesto = id_puesto', 'inner');
      $this->db->join('area_tematica t','u.mesa = id_tematica', 'left');
      $this->db->join('tipo ti','u.modalidad = id_tipo', 'left');
      $this->db->join('area_apoyo ap','u.area_id = id_area_apoyo', 'left');
      $this->db->where('id_usuarios',$id);

      $query = $this->db->get();
        if($query->num_rows() > 0 )
          {
            return $query->result();
          }else{
            return FALSE;
          }
    }

 //--------------------------------------------------------------
 // LISTA TODO EL CONTENIDO DE LOS USUARIOS TOTALES REGISTRADOS
 // LISTA SÓLO CANTIDAD TOTAL
 //--------------------------------------------------------------

  public function getTotalUsuarios()
  {
    $this->db->select('COUNT(*) as total');
    $this->db->from('usuarios');
    $this->db->where('puesto IS NOT NULL');
      $query = $this->db->get();
        if($query->num_rows() > 0 )
          {
            return $query->result();
          }else{
            return FALSE;
          }

  }

 //--------------------------------------------------------------
 // LISTA TODO EL CONTENIDO DE LOS USUARIOS TOTALES REGISTRADOS
 // LISTA SÓLO CANTIDAD TOTAL SIN LOGISTICO
 //--------------------------------------------------------------

  public function getTotalAsistencia()
  {
    $query = $this->db->query('SELECT COUNT(*) as total FROM usuarios WHERE puesto = "2" OR  puesto = "3" OR puesto = "4" OR puesto = "5" OR puesto = "6" OR puesto = "7" IS NOT NULL GROUP BY puesto <> 1 LIMIT 1,1');

    if ($query->num_rows() > 0) {
        return $query->result();
     }else{
        return false;
     }
  }

 //--------------------------------------------------------------
 // LISTA TODO EL CONTENIDO DE LOS USUARIOS TOTALES REGISTRADOS
 // LISTA SÓLO PONENTES
 //--------------------------------------------------------------

  public function getTotalUsuariosP()
  {
    $this->db->select('COUNT(u.id_usuarios) AS total');
    $this->db->from('usuarios u');
    $this->db->where('puesto = "2"');
      $query = $this->db->get();
        if($query->num_rows() > 0 )
          {
            return $query->result();
          }else{
            return FALSE;
          }

  }

 //--------------------------------------------------------------
 // LISTA TODO EL CONTENIDO DE LOS USUARIOS TOTALES REGISTRADOS
 // LISTA SÓLO EVALUADORES
 //--------------------------------------------------------------

  public function getTotalUsuariosE()
  {
    $this->db->select('COUNT(u.id_usuarios) AS total');
    $this->db->from('usuarios u');
    $this->db->where('puesto = "3"');
      $query = $this->db->get();
        if($query->num_rows() > 0 )
          {
            return $query->result();
          }else{
            return FALSE;
          }

  }

 //--------------------------------------------------------------
 // LISTA TODO EL CONTENIDO DE LOS USUARIOS TOTALES REGISTRADOS
 // LISTA SÓLO MODERADORES
 //--------------------------------------------------------------

  public function getTotalUsuariosM()
  {
    $this->db->select('COUNT(u.id_usuarios) AS total');
    $this->db->from('usuarios u');
    $this->db->where('puesto = "4"');
      $query = $this->db->get();
        if($query->num_rows() > 0 )
          {
            return $query->result();
          }else{
            return FALSE;
          }

  }

 //--------------------------------------------------------------
 // LISTA TODO EL CONTENIDO DE LOS USUARIOS TOTALES REGISTRADOS
 // LISTA SÓLO RELATORES
 //--------------------------------------------------------------

  public function getTotalUsuariosR()
  {
    $this->db->select('COUNT(u.id_usuarios) AS total');
    $this->db->from('usuarios u');
    $this->db->where('puesto = "5"');
      $query = $this->db->get();
        if($query->num_rows() > 0 )
          {
            return $query->result();
          }else{
            return FALSE;
          }

  }

 //--------------------------------------------------------------
 // LISTA TODO EL CONTENIDO DE LOS USUARIOS TOTALES REGISTRADOS
 // LISTA SÓLO APOYO LOGISTICO
 //--------------------------------------------------------------

  public function getTotalUsuariosL()
  {
    $this->db->select('COUNT(u.id_usuarios) AS total');
    $this->db->from('usuarios u');
   $this->db->where('puesto = "6"');
      $query = $this->db->get();
        if($query->num_rows() > 0 )
          {
            return $query->result();
          }else{
            return FALSE;
          }

  }

 //--------------------------------------------------------------
 // LISTA TODO EL CONTENIDO DE LOS USUARIOS TOTALES REGISTRADOS
 // LISTA SÓLO ASISTENTES
 //--------------------------------------------------------------

  public function getTotalUsuariosA()
  {
    $this->db->select('COUNT(u.id_usuarios) AS total');
    $this->db->from('usuarios u');
    $this->db->where('puesto = "7"');
      $query = $this->db->get();
        if($query->num_rows() > 0 )
          {
            return $query->result();
          }else{
            return FALSE;
          }

  }




 //------------------------------------------------------------------------
 // LISTA TODO EL CONTENIDO DE LOS USUARIOS TOTALES POR GENERO REGISTRADOS
 // LISTA SÓLO HOMBRES
 //------------------------------------------------------------------------

  public function getTotalUsuariosGeneroM()
  {
    $query = $this->db->query('SELECT count(*) as masculino FROM usuarios WHERE puesto = "2" OR  puesto = "3" OR puesto = "4" OR puesto = "5" OR puesto = "6" OR puesto = "7" GROUP BY genero LIMIT 1');

    if ($query->num_rows() > 0) {
        return $query->result();
     }else{
        return false;
     }
  }

 //------------------------------------------------------------------------
 // LISTA TODO EL CONTENIDO DE LOS USUARIOS TOTALES POR GENERO REGISTRADOS
 // LISTA SÓLO MUJERES
 //------------------------------------------------------------------------

  public function getTotalUsuariosGeneroF()
  {
    $query = $this->db->query('SELECT count(*) as mujeres FROM usuarios WHERE puesto = "2" OR  puesto = "3" OR puesto = "4" OR puesto = "5" OR puesto = "6" OR puesto = "7" GROUP BY genero LIMIT 1,1');

    if ($query->num_rows() > 0) {
        return $query->result();
     }else{
        return false;
     }
  }

 //------------------------------------------------------------------------
 // LISTA TODO EL CONTENIDO DE LOS USUARIOS TOTALES POR RANGO DE EDAD
 // LISTA SÓLO 18 - 30
 //------------------------------------------------------------------------

  public function getRangoEdadUsuariosA()
  {
    $query = $this->db->query('SELECT SUM(IF (edad BETWEEN 18 AND 30, 1, 0)) AS uno FROM usuarios WHERE puesto = "2" OR  puesto = "3" OR puesto = "4" OR puesto = "5" OR puesto = "6" OR puesto = "7"');

    if ($query->num_rows() > 0) {
        return $query->result();
     }else{
        return false;
     }
  }

 //------------------------------------------------------------------------
 // LISTA TODO EL CONTENIDO DE LOS USUARIOS TOTALES POR RANGO DE EDAD
 // LISTA SÓLO 31 - 50
 //------------------------------------------------------------------------

  public function getRangoEdadUsuariosB()
  {
    $query = $this->db->query('SELECT SUM(IF (edad BETWEEN 31 AND 50, 1, 0)) AS dos FROM usuarios WHERE puesto = "2" OR  puesto = "3" OR puesto = "4" OR puesto = "5" OR puesto = "6" OR puesto = "7"');

    if ($query->num_rows() > 0) {
        return $query->result();
     }else{
        return false;
     }
  }

 //------------------------------------------------------------------------
 // LISTA TODO EL CONTENIDO DE LOS USUARIOS TOTALES POR RANGO DE EDAD
 // LISTA SÓLO 51 Ó MÁS
 //------------------------------------------------------------------------

  public function getRangoEdadUsuariosC()
  {
    $query = $this->db->query('SELECT SUM(IF (edad BETWEEN 51 AND 100, 1, 0)) AS tres FROM usuarios WHERE puesto = "2" OR  puesto = "3" OR puesto = "4" OR puesto = "5" OR puesto = "6" OR puesto = "7"');

    if ($query->num_rows() > 0) {
        return $query->result();
     }else{
        return false;
     }
  }


 //------------------------------------------------------------------------
 // LISTA TODO EL CONTENIDO DE LOS USUARIOS TOTALES POR NACIONALIDAD
 // LISTA SÓLO MEXICANOS
 //------------------------------------------------------------------------

  public function getNacionalidadUsuariosM()
  {
    $query = $this->db->query('SELECT Count(*) AS mexicanos FROM usuarios WHERE puesto = "2" OR  puesto = "3" OR puesto = "4" OR puesto = "5" OR puesto = "6" OR puesto = "7" GROUP BY nacionalidad LIMIT 1');

    if ($query->num_rows() > 0) {
        return $query->result();
     }else{
        return false;
     }
  }

 //------------------------------------------------------------------------
 // LISTA TODO EL CONTENIDO DE LOS USUARIOS TOTALES POR NACIONALIDAD
 // LISTA SÓLO EXTRANJEROS
 //------------------------------------------------------------------------

  public function getNacionalidadUsuariosE()
  {
    $query = $this->db->query('SELECT Count(*) AS extranjeros FROM usuarios WHERE puesto = "2" OR  puesto = "3" OR puesto = "4" OR puesto = "5" OR puesto = "6" OR puesto = "7" GROUP BY nacionalidad  DESC LIMIT 1');

    if ($query->num_rows() > 0) {
        return $query->result();
     }else{
        return false;
     }
  }

 //------------------------------------------------------------------------
 // LISTA TODO EL CONTENIDO DE LOS USUARIOS TOTALES POR ESTADO
 // LISTA SÓLO MICHOACAN
 //------------------------------------------------------------------------

  public function getEstadosUsuariosM()
  {
    $query = $this->db->query('SELECT count(u.estado) AS mich FROM usuarios u WHERE u.puesto = "2" OR  u.puesto = "3" OR u.puesto = "4" OR u.puesto = "5" OR u.puesto = "6" OR u.puesto = "7"  GROUP BY u.estado HAVING u.estado = 15');

    if ($query->num_rows() > 0) {
        return $query->result();
     }else{
        return false;
     }
  }


 //------------------------------------------------------------------------
 // LISTA TODO EL CONTENIDO DE LOS USUARIOS TOTALES POR ESTADO
 // LISTA TODOS LOS ESTADOS
 //------------------------------------------------------------------------

  public function getEstadosUsuariosT()
  {
    $query = $this->db->query('SELECT count(u.estado) AS est FROM usuarios u WHERE u.puesto = "2" OR  u.puesto = "3" OR u.puesto = "4" OR u.puesto = "5" OR u.puesto = "6" OR u.puesto = "7" GROUP BY u.estado <> 15 LIMIT 1,2');

    if ($query->num_rows() > 0) {
        return $query->result();
     }else{
        return false;
     }
  }

 //------------------------------------------------------------------------
 // LISTA TODO EL CONTENIDO DE LOS USUARIOS TOTALES POR CIUDAD
 // LISTA SÓLO MORELIA
 //------------------------------------------------------------------------

  public function getEstadosUsuariosMo()
  {
    $query = $this->db->query('SELECT count(u.municipio) AS mun FROM usuarios u WHERE u.puesto = "2" OR  u.puesto = "3" OR u.puesto = "4" OR u.puesto = "5" OR u.puesto = "6" OR u.puesto = "7" GROUP BY u.municipio HAVING u.municipio = 56');

    if ($query->num_rows() > 0) {
        return $query->result();
     }else{
        return false;
     }
  }

 //------------------------------------------------------------------------
 // LISTA TODO EL CONTENIDO DE LAS INSITUCIONES REGISTRADAS
 //------------------------------------------------------------------------

  public function getEstadosUsuariosIns()
  {
    $query = $this->db->query('SELECT COUNT(DISTINCT institucion) AS ins FROM usuarios WHERE puesto IS NOT NULL');

    if ($query->num_rows() > 0) {
        return $query->result();
     }else{
        return false;
     }
  }

 //------------------------------------------------------------------------
 // LISTA TODO EL CONTENIDO DE LAS FACULTADES REGISTRADAS
 //------------------------------------------------------------------------

  public function getEstadosUsuariosFac()
  {
    $query = $this->db->query('SELECT COUNT(DISTINCT facultad) AS fac FROM usuarios WHERE puesto IS NOT NULL');

    if ($query->num_rows() > 0) {
        return $query->result();
     }else{
        return false;
     }
  }

 //------------------------------------------------------------------------
 // LISTA TODO EL CONTENIDO DE REGISTROS EN OTROS
 //------------------------------------------------------------------------

  public function getEstadosUsuariosOtros()
  {
    $query = $this->db->query('SELECT COUNT(institucion) AS otros FROM usuarios WHERE institucion = 132');

    if ($query->num_rows() > 0) {
        return $query->result();
     }else{
        return false;
     }
  }

 //------------------------------------------------------------------------
 // LISTA TODO EL CONTENIDO POR LICENCIATURA
 //------------------------------------------------------------------------

  public function getEstadosUsuariosLic()
  {
    $query = $this->db->query('SELECT COUNT(u.nivel) AS niv FROM usuarios u WHERE u.puesto = "2" OR  u.puesto = "3" OR u.puesto = "4" OR u.puesto = "5" OR u.puesto = "6" OR u.puesto = "7" GROUP BY u.nivel HAVING u.nivel = 1');

    if ($query->num_rows() > 0) {
        return $query->result();
     }else{
        return false;
     }
  }

 //------------------------------------------------------------------------
 // LISTA TODO EL CONTENIDO POR MAESTRÍA
 //------------------------------------------------------------------------

  public function getEstadosUsuariosMae()
  {
    $query = $this->db->query('SELECT COUNT(u.nivel) AS niv FROM usuarios u WHERE u.puesto = "2" OR  u.puesto = "3" OR u.puesto = "4" OR u.puesto = "5" OR u.puesto = "6" OR u.puesto = "7" GROUP BY u.nivel HAVING u.nivel = 2');

    if ($query->num_rows() > 0) {
        return $query->result();
     }else{
        return false;
     }
  }

 //------------------------------------------------------------------------
 // LISTA TODO EL CONTENIDO POR DOCTORADO
 //------------------------------------------------------------------------

  public function getEstadosUsuariosDoc()
  {
    $query = $this->db->query('SELECT COUNT(u.nivel) AS niv FROM usuarios u WHERE u.puesto = "2" OR  u.puesto = "3" OR u.puesto = "4" OR u.puesto = "5" OR u.puesto = "6" OR u.puesto = "7" GROUP BY u.nivel HAVING u.nivel = 3');

    if ($query->num_rows() > 0) {
        return $query->result();
     }else{
        return false;
     }
  }


 //------------------------------------------------------------------------
 // LISTA TODO EL CONTENIDO POR MESAS
 //------------------------------------------------------------------------

  public function getEstadosUsuariosMesas()
  {
    $query = $this->db->query('SELECT count(p.mesa_id) AS total FROM ponencias p');

    if ($query->num_rows() > 0) {
        return $query->result();
     }else{
        return false;
     }
  }

 //------------------------------------------------------------------------
 // LISTA TODO EL CONTENIDO POR MESA 1
 //------------------------------------------------------------------------

  public function getEstadosUsuariosMes1()
  {
    $query = $this->db->query('SELECT a.nombre_tem,count(p.mesa_id) AS total FROM ponencias p INNER JOIN area_tematica a ON a.id_tematica = p.mesa_id WHERE p.mesa_id = 1 GROUP BY p.mesa_id');

    if ($query->num_rows() > 0) {
        return $query->result();
     }else{
        return false;
     }
  }

 //------------------------------------------------------------------------
 // LISTA TODO EL CONTENIDO POR MESA 2
 //------------------------------------------------------------------------

  public function getEstadosUsuariosMes2()
  {
    $query = $this->db->query('SELECT a.nombre_tem,count(p.mesa_id) AS total FROM ponencias p INNER JOIN area_tematica a ON a.id_tematica = p.mesa_id WHERE p.mesa_id = 2 GROUP BY p.mesa_id');

    if ($query->num_rows() > 0) {
        return $query->result();
     }else{
        return false;
     }
  }

 //------------------------------------------------------------------------
 // LISTA TODO EL CONTENIDO POR MESA 3
 //------------------------------------------------------------------------

  public function getEstadosUsuariosMes3()
  {
    $query = $this->db->query('SELECT a.nombre_tem,count(p.mesa_id) AS total FROM ponencias p INNER JOIN area_tematica a ON a.id_tematica = p.mesa_id WHERE p.mesa_id = 3 GROUP BY p.mesa_id');

    if ($query->num_rows() > 0) {
        return $query->result();
     }else{
        return false;
     }
  }

 //------------------------------------------------------------------------
 // LISTA TODO EL CONTENIDO POR MESA 4
 //------------------------------------------------------------------------

  public function getEstadosUsuariosMes4()
  {
    $query = $this->db->query('SELECT a.nombre_tem,count(p.mesa_id) AS total FROM ponencias p INNER JOIN area_tematica a ON a.id_tematica = p.mesa_id WHERE p.mesa_id = 4 GROUP BY p.mesa_id');

    if ($query->num_rows() > 0) {
        return $query->result();
     }else{
        return false;
     }
  }

 //------------------------------------------------------------------------
 // LISTA TODO EL CONTENIDO POR MESA 5
 //------------------------------------------------------------------------

  public function getEstadosUsuariosMes5()
  {
    $query = $this->db->query('SELECT a.nombre_tem,count(p.mesa_id) AS total FROM ponencias p INNER JOIN area_tematica a ON a.id_tematica = p.mesa_id WHERE p.mesa_id = 5 GROUP BY p.mesa_id');

    if ($query->num_rows() > 0) {
        return $query->result();
     }else{
        return false;
     }
  }

 //------------------------------------------------------------------------
 // LISTA TODO EL CONTENIDO POR MESA 6
 //------------------------------------------------------------------------

  public function getEstadosUsuariosMes6()
  {
    $query = $this->db->query('SELECT a.nombre_tem,count(p.mesa_id) AS total FROM ponencias p INNER JOIN area_tematica a ON a.id_tematica = p.mesa_id WHERE p.mesa_id = 6 GROUP BY p.mesa_id');

    if ($query->num_rows() > 0) {
        return $query->result();
     }else{
        return false;
     }
  }

 //------------------------------------------------------------------------
 // LISTA TODO EL CONTENIDO POR MESA 7
 //------------------------------------------------------------------------

  public function getEstadosUsuariosMes7()
  {
    $query = $this->db->query('SELECT a.nombre_tem,count(p.mesa_id) AS total FROM ponencias p INNER JOIN area_tematica a ON a.id_tematica = p.mesa_id WHERE p.mesa_id = 7 GROUP BY p.mesa_id');

    if ($query->num_rows() > 0) {
        return $query->result();
     }else{
        return false;
     }
  }

 //------------------------------------------------------------------------
 // LISTA TODO EL CONTENIDO POR MESA 8
 //------------------------------------------------------------------------

  public function getEstadosUsuariosMes8()
  {
    $query = $this->db->query('SELECT a.nombre_tem,count(p.mesa_id) AS total FROM ponencias p INNER JOIN area_tematica a ON a.id_tematica = p.mesa_id WHERE p.mesa_id = 8 GROUP BY p.mesa_id');

    if ($query->num_rows() > 0) {
        return $query->result();
     }else{
        return false;
     }
  }

 //------------------------------------------------------------------------
 // LISTA TODO EL CONTENIDO POR MESA 9
 //------------------------------------------------------------------------

  public function getEstadosUsuariosMes9()
  {
    $query = $this->db->query('SELECT a.nombre_tem,count(p.mesa_id) AS total FROM ponencias p INNER JOIN area_tematica a ON a.id_tematica = p.mesa_id WHERE p.mesa_id = 9 GROUP BY p.mesa_id');

    if ($query->num_rows() > 0) {
        return $query->result();
     }else{
        return false;
     }
  }

 //------------------------------------------------------------------------
 // LISTA TODO EL CONTENIDO POR MESA 10
 //------------------------------------------------------------------------

  public function getEstadosUsuariosMes10()
  {
    $query = $this->db->query('SELECT a.nombre_tem,count(p.mesa_id) AS total FROM ponencias p INNER JOIN area_tematica a ON a.id_tematica = p.mesa_id WHERE p.mesa_id = 10 GROUP BY p.mesa_id');

    if ($query->num_rows() > 0) {
        return $query->result();
     }else{
        return false;
     }
  }



 //------------------------------------------------------------------------
 // LISTA TODO EL CONTENIDO POR CHART ADMIN/ESTADISTICAS/PONENTES/REGISTROS
 //------------------------------------------------------------------------

    function chart(){

        $query = $this->db->query('SELECT count(puesto) as total FROM usuarios u INNER JOIN puesto ON id_puesto = puesto WHERE puesto = "2" OR  puesto = "3" OR puesto = "4" OR puesto = "5" OR puesto = "6" OR puesto = "7" ');
        if($query->num_rows() > 0){
            foreach($query->result() as $data){
                $reporte[] = $data;
            }
            return $reporte;
        }
    }

    function chartPonente(){

        $query = $this->db->query('SELECT count(puesto) as total FROM usuarios INNER JOIN puesto ON id_puesto = puesto WHERE puesto = 2 GROUP BY puesto');
        if($query->num_rows() > 0){
            foreach($query->result() as $data){
                $reporte[] = $data;
            }
            return $reporte;
        }
    }


//------------------------------------------------------------------------
 // LISTA TODO EL CONTENIDO POR CHART ADMIN/ESTADISTICAS/PONENTES/GENEROS
 //------------------------------------------------------------------------

    function chartPGenerosH(){

        $query = $this->db->query('SELECT count(*) as masculino FROM usuarios WHERE puesto = "2" OR  puesto = "3" OR puesto = "4" OR puesto = "5" OR puesto = "6" OR puesto = "7" GROUP BY genero LIMIT 1');
        if($query->num_rows() > 0){
            foreach($query->result() as $data){
                $reporte[] = $data;
            }
            return $reporte;
        }
    }

    function chartPGenerosM(){

        $query = $this->db->query('SELECT count(*) as femenino FROM usuarios WHERE puesto = "2" OR  puesto = "3" OR puesto = "4" OR puesto = "5" OR puesto = "6" OR puesto = "7" GROUP BY genero LIMIT 1,1');
        if($query->num_rows() > 0){
            foreach($query->result() as $data){
                $reporte[] = $data;
            }
            return $reporte;
        }
    }

    function chartPGeneros(){

        $query = $this->db->query('SELECT count(puesto) as total FROM usuarios INNER JOIN puesto ON id_puesto = puesto WHERE puesto = 2 GROUP BY puesto');
        if($query->num_rows() > 0){
            foreach($query->result() as $data){
                $reporte[] = $data;
            }
            return $reporte;
        }
    }

 //------------------------------------------------------------------------
 // LISTA TODO EL CONTENIDO POR CHART ADMIN/ESTADISTICAS/PONENTES/EDADES
 //------------------------------------------------------------------------

    function chartEdadUno(){

        $query = $this->db->query('SELECT SUM(IF (edad BETWEEN 18 AND 30, 1, 0)) AS uno FROM usuarios WHERE puesto = "2" OR  puesto = "3" OR puesto = "4" OR puesto = "5" OR puesto = "6" OR puesto = "7"');
        if($query->num_rows() > 0){
            foreach($query->result() as $data){
                $reporte[] = $data;
            }
            return $reporte;
        }
    }

    function chartEdadDos(){

        $query = $this->db->query('SELECT SUM(IF (edad BETWEEN 31 AND 50, 1, 0)) AS dos FROM usuarios WHERE puesto = "2" OR  puesto = "3" OR puesto = "4" OR puesto = "5" OR puesto = "6" OR puesto = "7"');
        if($query->num_rows() > 0){
            foreach($query->result() as $data){
                $reporte[] = $data;
            }
            return $reporte;
        }
    }

    function chartEdadTres(){

        $query = $this->db->query('SELECT SUM(IF (edad BETWEEN 51 AND 100, 1, 0)) AS tres FROM usuarios WHERE puesto = "2" OR  puesto = "3" OR puesto = "4" OR puesto = "5" OR puesto = "6" OR puesto = "7"');
        if($query->num_rows() > 0){
            foreach($query->result() as $data){
                $reporte[] = $data;
            }
            return $reporte;
        }
    }


 //------------------------------------------------------------------------
 // LISTA TODO EL CONTENIDO POR CHART ADMIN/ESTADISTICAS/PONENTES/GRADO
 //------------------------------------------------------------------------

    function chartPLicenciatura(){

        $query = $this->db->query('SELECT COUNT(u.nivel) AS nivl FROM usuarios u WHERE u.puesto = "2" OR  u.puesto = "3" OR u.puesto = "4" OR u.puesto = "5" OR u.puesto = "6" OR u.puesto = "7" GROUP BY u.nivel HAVING u.nivel = 1');
        if($query->num_rows() > 0){
            foreach($query->result() as $data){
                $reporte[] = $data;
            }
            return $reporte;
        }
    }

    function chartPMaestria(){

        $query = $this->db->query('SELECT COUNT(u.nivel) AS nivm FROM usuarios u WHERE u.puesto = "2" OR  u.puesto = "3" OR u.puesto = "4" OR u.puesto = "5" OR u.puesto = "6" OR u.puesto = "7" GROUP BY u.nivel HAVING u.nivel = 2');
        if($query->num_rows() > 0){
            foreach($query->result() as $data){
                $reporte[] = $data;
            }
            return $reporte;
        }
    }

    function chartPDoctorado(){

        $query = $this->db->query('SELECT COUNT(u.nivel) AS nivd FROM usuarios u WHERE u.puesto = "2" OR  u.puesto = "3" OR u.puesto = "4" OR u.puesto = "5" OR u.puesto = "6" OR u.puesto = "7" GROUP BY u.nivel HAVING u.nivel = 3');
        if($query->num_rows() > 0){
            foreach($query->result() as $data){
                $reporte[] = $data;
            }
            return $reporte;
        }
    }

 //------------------------------------------------------------------------
 // LISTA TODO EL CONTENIDO POR CHART ADMIN/ESTADISTICAS/PONENTES/NACIONALIDAD
 //------------------------------------------------------------------------

    function chartPmexicano(){

        $query = $this->db->query('SELECT Count(*) AS mexicanos FROM usuarios WHERE puesto = "2" OR  puesto = "3" OR puesto = "4" OR puesto = "5" OR puesto = "6" OR puesto = "7" GROUP BY nacionalidad LIMIT 1');
        if($query->num_rows() > 0){
            foreach($query->result() as $data){
                $reporte[] = $data;
            }
            return $reporte;
        }
    }

    function chartPextranjero(){

        $query = $this->db->query('SELECT Count(*) AS extranjeros FROM usuarios WHERE puesto = "2" OR  puesto = "3" OR puesto = "4" OR puesto = "5" OR puesto = "6" OR puesto = "7" GROUP BY nacionalidad  DESC LIMIT 1');
        if($query->num_rows() > 0){
            foreach($query->result() as $data){
                $reporte[] = $data;
            }
            return $reporte;
        }
    }


 //------------------------------------------------------------------------
 // LISTA TODO EL CONTENIDO POR CHART ADMIN/ESTADISTICAS/PONENTES/MESAS
 //------------------------------------------------------------------------

    function getTotalUsuariosPregistro(){

        $query = $this->db->query('SELECT COUNT(usuario_id) AS hay FROM ponencias WHERE archivo_resumen = archivo_resumen');
        if ($query->num_rows() > 0) {
            return $query->result();
         }else{
            return false;
         }
      }


    function chartBarraMesas(){

        $query = $this->db->query('SELECT COUNT(mesa_id) AS total FROM ponencias WHERE mesa_id = 1 OR mesa_id = 2 OR mesa_id = 3 OR mesa_id = 4 OR mesa_id = 5 OR mesa_id = 6 OR mesa_id = 7 OR mesa_id = 8 OR mesa_id = 9 OR mesa_id = 10 GROUP BY mesa_id');
        if($query->num_rows() > 0){
            foreach($query->result() as $data){
                $reporte[] = $data;
            }
            return $reporte;
        }
    }

 //------------------------------------------------------------------------
 // LISTA TODO EL CONTENIDO POR CHART ADMIN/ESTADISTICAS/PONENTES/ESTADOS
 //------------------------------------------------------------------------
    function getDatosEstados(){

        $query = $this->db->query('SELECT id_estado, nombre_est, COUNT(estado) AS registros FROM usuarios INNER JOIN estado ON id_estado = estado GROUP BY estado ORDER BY COUNT(estado)  DESC');
        if($query->num_rows() > 0){
            foreach($query->result() as $data){
                $reporte[] = $data;
            }
            return $reporte;
        }
    }

 //--------------------------------------------------------------------------
 // LISTA TODO EL CONTENIDO POR CHART ADMIN/ESTADISTICAS/PONENTES/MUNICIPIOS
 //--------------------------------------------------------------------------
    function getDatosMunicipios($id){

        $query = $this->db->query('SELECT id_municipio, nombre_mun,COUNT(municipio) AS registros FROM usuarios INNER JOIN estado ON id_estado = estado INNER JOIN municipio ON id_municipio = municipio WHERE id_estado = '.$id.' GROUP BY municipio ORDER BY COUNT(municipio) DESC, municipio');
        if($query->num_rows() > 0){
            foreach($query->result() as $data){
                $reporte[] = $data;
            }
            return $reporte;
        }
    }


 //-----------------------------------------------------------------------------
 // LISTA TODO EL CONTENIDO POR CHART ADMIN/ESTADISTICAS/PONENTES/INSTITUCIONES
 //-----------------------------------------------------------------------------
    function getDatosInstituciones(){

        $query = $this->db->query('SELECT id_institucion, nombre_ins, COUNT(institucion) AS registros FROM usuarios  INNER JOIN institucion ON id_institucion = institucion GROUP BY institucion ORDER BY COUNT(institucion)  DESC');
        if($query->num_rows() > 0){
            foreach($query->result() as $data){
                $reporte[] = $data;
            }
            return $reporte;
        }
    }

 //--------------------------------------------------------------------------
 // LISTA TODO EL CONTENIDO POR CHART ADMIN/ESTADISTICAS/PONENTES/FACULTADES
 //--------------------------------------------------------------------------
    function getDatosFacultades($id){

        $query = $this->db->query('SELECT id_facultad, nombre_fac,COUNT(facultad) AS registros FROM usuarios INNER JOIN institucion ON id_institucion = institucion INNER JOIN facultad ON id_facultad = facultad WHERE id_institucion =  '.$id.' GROUP BY facultad ORDER BY COUNT(facultad) DESC, facultad');
        if($query->num_rows() > 0){
            foreach($query->result() as $data){
                $reporte[] = $data;
            }
            return $reporte;
        }
    }






 //------------------------------------------------------------------------
 // LISTA TODOS LOS USUARIOS EVALUADORES EN MESAS
 //------------------------------------------------------------------------

  public function getUsuariosEvaluadores()
  {
    $query = $this->db->query('SELECT COUNT(mesa) AS total FROM usuarios WHERE mesa IS NOT NULL GROUP BY  puesto <> 1 LIMIT 1,1');

    if ($query->num_rows() > 0) {
        return $query->result();
     }else{
        return false;
     }
  }

 //------------------------------------------------------------------------
 // LISTA TODOS LOS USUARIOS EVALUADOS EN MESAS
 //------------------------------------------------------------------------

  public function getUsuariosEvaluados()
  {
    $query = $this->db->query('SELECT COUNT(usuario_id) AS hay FROM ponencias WHERE status_id = 2 AND status_id IS NOT NULL');

    if ($query->num_rows() > 0) {
        return $query->result();
     }else{
        return false;
     }
  }

 //------------------------------------------------------------------------
 // LISTA TODOS LOS USUARIOS NO EVALUADOS EN MESAS
 //------------------------------------------------------------------------

  public function getUsuariosNoEvaluados()
  {
    $query = $this->db->query('SELECT COUNT(usuario_id) AS hay FROM ponencias WHERE status_id <> 2 AND status_id IS NOT NULL');

    if ($query->num_rows() > 0) {
        return $query->result();
     }else{
        return false;
     }
  }


 //------------------------------------------------------------------------
 // LISTA USUARIOS EVALUADORES MESA 1

  public function getUsuariosEvaluadoresMesa1()
  {
    $query = $this->db->query('SELECT count(id_usuarios) AS mesa1 FROM usuarios WHERE mesa = 1 AND puesto <> 1');

    if ($query->num_rows() > 0) {
        return $query->result();
     }else{
        return false;
     }
  }

 // LISTA USUARIOS POR EVALUAR MESA 1

  public function getUsuariosPorEvaluarMesa1()
  {
    $query = $this->db->query('SELECT COUNT(id_ponencias) AS totevaluar FROM ponencias WHERE  mesa_id = 1 AND status_id = 1');

    if ($query->num_rows() > 0) {
        return $query->result();
     }else{
        return false;
     }
  }


 // LISTA USUARIOS EVALUADOS MESA 1

  public function getUsuariosEvaluadosMesa1()
  {
    $query = $this->db->query('SELECT COUNT(id_ponencias) AS total FROM ponencias WHERE  mesa_id = 1 AND status_id = 2');

    if ($query->num_rows() > 0) {
        return $query->result();
     }else{
        return false;
     }
  }

 // LISTA USUARIOS NO EVALUADOS MESA 1

  public function getUsuariosNoEvaluadosMesa1()
  {
    $query = $this->db->query('SELECT COUNT(id_ponencias) AS total FROM ponencias WHERE  mesa_id = 1 AND status_id = 1');

    if ($query->num_rows() > 0) {
        return $query->result();
     }else{
        return false;
     }
  }
 //------------------------------------------------------------------------


 //------------------------------------------------------------------------
 // LISTA USUARIOS EVALUADORES MESA 2

  public function getUsuariosEvaluadoresMesa2()
  {
    $query = $this->db->query('SELECT count(id_usuarios) AS eva2 FROM usuarios WHERE mesa = 2 AND puesto <> 1');

    if ($query->num_rows() > 0) {
        return $query->result();
     }else{
        return false;
     }
  }

 // LISTA USUARIOS POR EVALUAR MESA 2

  public function getUsuariosPorEvaluarMesa2()
  {
    $query = $this->db->query('SELECT COUNT(id_ponencias) AS totevaluar FROM ponencias WHERE  mesa_id = 2 AND status_id = 1');

    if ($query->num_rows() > 0) {
        return $query->result();
     }else{
        return false;
     }
  }


 // LISTA USUARIOS EVALUADOS MESA 2

  public function getUsuariosEvaluadosMesa2()
  {
    $query = $this->db->query('SELECT COUNT(id_ponencias) AS total FROM ponencias WHERE  mesa_id = 2 AND status_id = 2');

    if ($query->num_rows() > 0) {
        return $query->result();
     }else{
        return false;
     }
  }

 // LISTA USUARIOS NO EVALUADOS MESA 2

  public function getUsuariosNoEvaluadosMesa2()
  {
    $query = $this->db->query('SELECT COUNT(id_ponencias) AS total FROM ponencias WHERE  mesa_id = 2 AND status_id = 3');

    if ($query->num_rows() > 0) {
        return $query->result();
     }else{
        return false;
     }
  }
 //------------------------------------------------------------------------



 //------------------------------------------------------------------------
 // LISTA USUARIOS EVALUADORES MESA 3

  public function getUsuariosEvaluadoresMesa3()
  {
    $query = $this->db->query('SELECT count(id_usuarios) AS eva3 FROM usuarios WHERE mesa = 3 AND puesto <> 1');

    if ($query->num_rows() > 0) {
        return $query->result();
     }else{
        return false;
     }
  }

 // LISTA USUARIOS POR EVALUAR MESA 3

  public function getUsuariosPorEvaluarMesa3()
  {
    $query = $this->db->query('SELECT COUNT(id_ponencias) AS totevaluar FROM ponencias WHERE  mesa_id = 3 AND status_id = 1');

    if ($query->num_rows() > 0) {
        return $query->result();
     }else{
        return false;
     }
  }

 // LISTA USUARIOS EVALUADOS MESA 3

  public function getUsuariosEvaluadosMesa3()
  {
    $query = $this->db->query('SELECT COUNT(id_ponencias) AS total FROM ponencias WHERE  mesa_id = 3 AND status_id = 2');

    if ($query->num_rows() > 0) {
        return $query->result();
     }else{
        return false;
     }
  }

 // LISTA USUARIOS NO EVALUADOS MESA 3

  public function getUsuariosNoEvaluadosMesa3()
  {
    $query = $this->db->query('SELECT COUNT(id_ponencias) AS total FROM ponencias WHERE  mesa_id = 3 AND status_id = 3');

    if ($query->num_rows() > 0) {
        return $query->result();
     }else{
        return false;
     }
  }
 //------------------------------------------------------------------------



 //------------------------------------------------------------------------
 // LISTA USUARIOS EVALUADORES MESA 4

  public function getUsuariosEvaluadoresMesa4()
  {
    $query = $this->db->query('SELECT count(id_usuarios) AS eva4 FROM usuarios WHERE mesa = 4 AND puesto <> 1');

    if ($query->num_rows() > 0) {
        return $query->result();
     }else{
        return false;
     }
  }

 // LISTA USUARIOS POR EVALUAR MESA 4

  public function getUsuariosPorEvaluarMesa4()
  {
    $query = $this->db->query('SELECT COUNT(id_ponencias) AS totevaluar FROM ponencias WHERE  mesa_id = 4 AND status_id = 1');

    if ($query->num_rows() > 0) {
        return $query->result();
     }else{
        return false;
     }
  }

 // LISTA USUARIOS EVALUADOS MESA 4

  public function getUsuariosEvaluadosMesa4()
  {
    $query = $this->db->query('SELECT COUNT(id_ponencias) AS total FROM ponencias WHERE  mesa_id = 4 AND status_id = 2');

    if ($query->num_rows() > 0) {
        return $query->result();
     }else{
        return false;
     }
  }

 // LISTA USUARIOS NO EVALUADOS MESA 4

  public function getUsuariosNoEvaluadosMesa4()
  {
    $query = $this->db->query('SELECT COUNT(id_ponencias) AS total FROM ponencias WHERE  mesa_id = 4 AND status_id = 3');

    if ($query->num_rows() > 0) {
        return $query->result();
     }else{
        return false;
     }
  }
 //------------------------------------------------------------------------



 //------------------------------------------------------------------------
 // LISTA USUARIOS EVALUADORES MESA 5

  public function getUsuariosEvaluadoresMesa5()
  {
    $query = $this->db->query('SELECT count(id_usuarios) AS eva5 FROM usuarios WHERE mesa = 5 AND puesto <> 1');

    if ($query->num_rows() > 0) {
        return $query->result();
     }else{
        return false;
     }
  }

 // LISTA USUARIOS POR EVALUAR MESA 5

  public function getUsuariosPorEvaluarMesa5()
  {
    $query = $this->db->query('SELECT COUNT(id_ponencias) AS totevaluar FROM ponencias WHERE  mesa_id = 5 AND status_id = 1');

    if ($query->num_rows() > 0) {
        return $query->result();
     }else{
        return false;
     }
  }

 // LISTA USUARIOS EVALUADOS MESA 5

  public function getUsuariosEvaluadosMesa5()
  {
    $query = $this->db->query('SELECT COUNT(id_ponencias) AS total FROM ponencias WHERE  mesa_id = 5 AND status_id = 2');

    if ($query->num_rows() > 0) {
        return $query->result();
     }else{
        return false;
     }
  }

 // LISTA USUARIOS NO EVALUADOS MESA 5

  public function getUsuariosNoEvaluadosMesa5()
  {
    $query = $this->db->query('SELECT COUNT(id_ponencias) AS total FROM ponencias WHERE  mesa_id = 5 AND status_id = 3');

    if ($query->num_rows() > 0) {
        return $query->result();
     }else{
        return false;
     }
  }
 //------------------------------------------------------------------------




 //------------------------------------------------------------------------
 // LISTA USUARIOS EVALUADORES MESA 6

  public function getUsuariosEvaluadoresMesa6()
  {
    $query = $this->db->query('SELECT count(id_usuarios) AS eva6 FROM usuarios WHERE mesa = 6 AND puesto <> 1');

    if ($query->num_rows() > 0) {
        return $query->result();
     }else{
        return false;
     }
  }

 // LISTA USUARIOS POR EVALUAR MESA 6

  public function getUsuariosPorEvaluarMesa6()
  {
    $query = $this->db->query('SELECT COUNT(id_ponencias) AS totevaluar FROM ponencias WHERE  mesa_id = 6 AND status_id = 1');

    if ($query->num_rows() > 0) {
        return $query->result();
     }else{
        return false;
     }
  }

 // LISTA USUARIOS EVALUADOS MESA 6

  public function getUsuariosEvaluadosMesa6()
  {
    $query = $this->db->query('SELECT COUNT(id_ponencias) AS total FROM ponencias WHERE  mesa_id = 6 AND status_id = 2');

    if ($query->num_rows() > 0) {
        return $query->result();
     }else{
        return false;
     }
  }

 // LISTA USUARIOS NO EVALUADOS MESA 6

  public function getUsuariosNoEvaluadosMesa6()
  {
    $query = $this->db->query('SELECT COUNT(id_ponencias) AS total FROM ponencias WHERE  mesa_id = 6 AND status_id = 3');

    if ($query->num_rows() > 0) {
        return $query->result();
     }else{
        return false;
     }
  }
 //------------------------------------------------------------------------



 //------------------------------------------------------------------------
 // LISTA USUARIOS EVALUADORES MESA 7

  public function getUsuariosEvaluadoresMesa7()
  {
    $query = $this->db->query('SELECT count(id_usuarios) AS eva7 FROM usuarios WHERE mesa = 7 AND puesto <> 1');

    if ($query->num_rows() > 0) {
        return $query->result();
     }else{
        return false;
     }
  }

 // LISTA USUARIOS POR EVALUAR MESA 7

  public function getUsuariosPorEvaluarMesa7()
  {
    $query = $this->db->query('SELECT COUNT(id_ponencias) AS totevaluar FROM ponencias WHERE  mesa_id = 7 AND status_id = 1');

    if ($query->num_rows() > 0) {
        return $query->result();
     }else{
        return false;
     }
  }

 // LISTA USUARIOS EVALUADOS MESA 7

  public function getUsuariosEvaluadosMesa7()
  {
    $query = $this->db->query('SELECT COUNT(id_ponencias) AS total FROM ponencias WHERE  mesa_id = 7 AND status_id = 2');

    if ($query->num_rows() > 0) {
        return $query->result();
     }else{
        return false;
     }
  }

 // LISTA USUARIOS NO EVALUADOS MESA 7

  public function getUsuariosNoEvaluadosMesa7()
  {
    $query = $this->db->query('SELECT COUNT(id_ponencias) AS total FROM ponencias WHERE  mesa_id = 7 AND status_id = 3');

    if ($query->num_rows() > 0) {
        return $query->result();
     }else{
        return false;
     }
  }
 //------------------------------------------------------------------------



 //------------------------------------------------------------------------
 // LISTA USUARIOS EVALUADORES MESA 8

  public function getUsuariosEvaluadoresMesa8()
  {
    $query = $this->db->query('SELECT count(id_usuarios) AS eva8 FROM usuarios WHERE mesa = 8 AND puesto <> 1');

    if ($query->num_rows() > 0) {
        return $query->result();
     }else{
        return false;
     }
  }

 // LISTA USUARIOS POR EVALUAR MESA 8

  public function getUsuariosPorEvaluarMesa8()
  {
    $query = $this->db->query('SELECT COUNT(id_ponencias) AS totevaluar FROM ponencias WHERE  mesa_id = 8 AND status_id = 1');

    if ($query->num_rows() > 0) {
        return $query->result();
     }else{
        return false;
     }
  }

 // LISTA USUARIOS EVALUADOS MESA 8

  public function getUsuariosEvaluadosMesa8()
  {
    $query = $this->db->query('SELECT COUNT(id_ponencias) AS total FROM ponencias WHERE  mesa_id = 8 AND status_id = 2');

    if ($query->num_rows() > 0) {
        return $query->result();
     }else{
        return false;
     }
  }

 // LISTA USUARIOS NO EVALUADOS MESA 8

  public function getUsuariosNoEvaluadosMesa8()
  {
    $query = $this->db->query('SELECT COUNT(id_ponencias) AS total FROM ponencias WHERE  mesa_id = 8 AND status_id = 3');

    if ($query->num_rows() > 0) {
        return $query->result();
     }else{
        return false;
     }
  }
 //------------------------------------------------------------------------



 //------------------------------------------------------------------------
 // LISTA USUARIOS EVALUADORES MESA 9

  public function getUsuariosEvaluadoresMesa9()
  {
    $query = $this->db->query('SELECT count(id_usuarios) AS eva9 FROM usuarios WHERE mesa = 9 AND puesto <> 1');

    if ($query->num_rows() > 0) {
        return $query->result();
     }else{
        return false;
     }
  }

 // LISTA USUARIOS POR EVALUAR MESA 9

  public function getUsuariosPorEvaluarMesa9()
  {
    $query = $this->db->query('SELECT COUNT(id_ponencias) AS totevaluar FROM ponencias WHERE  mesa_id = 9 AND status_id = 1');

    if ($query->num_rows() > 0) {
        return $query->result();
     }else{
        return false;
     }
  }

 // LISTA USUARIOS EVALUADOS MESA 9

  public function getUsuariosEvaluadosMesa9()
  {
    $query = $this->db->query('SELECT COUNT(id_ponencias) AS total FROM ponencias WHERE  mesa_id = 9 AND status_id = 2');

    if ($query->num_rows() > 0) {
        return $query->result();
     }else{
        return false;
     }
  }

 // LISTA USUARIOS NO EVALUADOS MESA 9

  public function getUsuariosNoEvaluadosMesa9()
  {
    $query = $this->db->query('SELECT COUNT(id_ponencias) AS total FROM ponencias WHERE  mesa_id = 9 AND status_id = 3');

    if ($query->num_rows() > 0) {
        return $query->result();
     }else{
        return false;
     }
  }
 //------------------------------------------------------------------------



 //------------------------------------------------------------------------
 // LISTA USUARIOS EVALUADORES MESA 10

  public function getUsuariosEvaluadoresMesa10()
  {
    $query = $this->db->query('SELECT count(id_usuarios) AS eva10 FROM usuarios WHERE mesa = 10 AND puesto <> 1');

    if ($query->num_rows() > 0) {
        return $query->result();
     }else{
        return false;
     }
  }

 // LISTA USUARIOS POR EVALUAR MESA 10

  public function getUsuariosPorEvaluarMesa10()
  {
    $query = $this->db->query('SELECT COUNT(id_ponencias) AS totevaluar FROM ponencias WHERE  mesa_id = 10 AND status_id = 1');

    if ($query->num_rows() > 0) {
        return $query->result();
     }else{
        return false;
     }
  }

 // LISTA USUARIOS EVALUADOS MESA 10

  public function getUsuariosEvaluadosMesa10()
  {
    $query = $this->db->query('SELECT COUNT(id_ponencias) AS total FROM ponencias WHERE  mesa_id = 10 AND status_id = 2');

    if ($query->num_rows() > 0) {
        return $query->result();
     }else{
        return false;
     }
  }

 // LISTA USUARIOS NO EVALUADOS MESA 10

  public function getUsuariosNoEvaluadosMesa10()
  {
    $query = $this->db->query('SELECT COUNT(id_ponencias) AS total FROM ponencias WHERE  mesa_id = 10 AND status_id = 3');

    if ($query->num_rows() > 0) {
        return $query->result();
     }else{
        return false;
     }
  }
 //------------------------------------------------------------------------



 //------------------------------------------------------------------------
 //------------------------------------------------------------------------
 //
 // ESTADISTICAS COMPARATIVAS
 //------------------------------------------------------------------------
 //------------------------------------------------------------------------




 //------------------------------------------------------------------------
 // LISTA TODO EL CONTENIDO DE LOS USUARIOS TOTALES POR GENERO REGISTRADOS
 // LISTA SÓLO HOMBRES PONENTES
 //------------------------------------------------------------------------

  public function TotalUsuariosPonentesGeneroM()
  {
    $query = $this->db->query('SELECT count(genero) AS masculino FROM ponencias INNER JOIN usuarios ON id_usuarios = usuario_id WHERE status_id = 2 AND genero = 1');

    if ($query->num_rows() > 0) {
        return $query->result();
     }else{
        return false;
     }
  }

 //------------------------------------------------------------------------
 // LISTA TODO EL CONTENIDO DE LOS USUARIOS TOTALES POR GENERO REGISTRADOS
 // LISTA SÓLO MUJERES PONENTES
 //------------------------------------------------------------------------

  public function TotalUsuariosPonentesGeneroF()
  {
    $query = $this->db->query('SELECT count(genero) AS femenino FROM ponencias INNER JOIN usuarios ON id_usuarios = usuario_id WHERE status_id = 2 AND genero = 2');

    if ($query->num_rows() > 0) {
        return $query->result();
     }else{
        return false;
     }
  }


 //------------------------------------------------------------------------
 // LISTA TODO EL CONTENIDO POR PONENENTES APROBADOS
 //------------------------------------------------------------------------

  public function UsuariosPonentesAprobadosMesas()
  {
    $query = $this->db->query('SELECT count(id_ponencias) as aprobados FROM ponencias WHERE status_id = 2');

    if ($query->num_rows() > 0) {
        return $query->result();
     }else{
        return false;
     }
  }


 //------------------------------------------------------------------------
 // LISTA TODO EL CONTENIDO POR PONENENTES APROBADOS ORAL
 //------------------------------------------------------------------------

  public function UsuariosPonentesAprobadosOral()
  {
    $query = $this->db->query('SELECT count(tipo_trabajo_id) AS oral FROM ponencias WHERE status_id = 2 AND archivo_resumen = archivo_resumen AND tipo_trabajo_id = 1');

    if ($query->num_rows() > 0) {
        return $query->result();
     }else{
        return false;
     }
  }

 //------------------------------------------------------------------------
 // LISTA TODO EL CONTENIDO POR PONENENTES APROBADOS CARTEL
 //------------------------------------------------------------------------

  public function UsuariosPonentesAprobadosCartel()
  {
    $query = $this->db->query('SELECT count(tipo_trabajo_id) AS cartel FROM ponencias WHERE status_id = 2 AND archivo_resumen = archivo_resumen AND tipo_trabajo_id = 2');

    if ($query->num_rows() > 0) {
        return $query->result();
     }else{
        return false;
     }
  }












}