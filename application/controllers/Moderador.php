<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

/**
 * This controller can be accessed 
 * for all logged in users
 */
class Moderador extends MY_Controller {

       //protected $access = array("Admin", "Evaluador");

       public function __construct()
       {
            parent::__construct();
            $this->load->model('Moderador_model');
            $this->load->library(array('session','user_agent'));
            $this->load->helper('url');

       }

    public function index()
    {
        $data['alert'] = $this->Moderador_model->alerta();
        $this->load->view("theme/header");
        $this->load->view("theme/menu");
        $this->load->view("moderador/index",$data);
        $this->load->view("theme/footer");
    }

    public function mesas()
    {
        /* Se obtienen los registros a mostrar*/
        $data['mesas'] = $this->Moderador_model->list_mesas();
        $data['tematica'] = $this->Moderador_model->get_area_tematica();
        $this->load->view("theme/header");
        $this->load->view("theme/menu");
        $this->load->view("moderador/listado_mesas",$data);
        $this->load->view("theme/footer");
    }

    public function calendario()
    {
        /* Se obtienen los registros a mostrar*/
        $data['tematica'] = $this->Moderador_model->get_area_tematica();
        $data['salas'] = $this->Moderador_model->get_salas(1,$this->uri->segment(3));
        $this->load->view("theme/header");
        $this->load->view("theme/menu");
        $this->load->view("moderador/calendario",$data);
        $this->load->view("theme/footer");
    }

    public function constancias()
    {
        /* Se obtienen los registros a mostrar*/
        $data['pdf'] = $this->Moderador_model->get_salas();
        $this->load->view("theme/header");
        $this->load->view("theme/menu");
        $this->load->view("moderador/constancias",$data);
        $this->load->view("theme/footer");
    }

    public function constancia()
    {
        /* Se obtienen los registros a mostrar*/
        $id = $this->uri->segment(3);
        $data['datos']=$this->db->query("SELECT id_usuarios, nombre, a_paterno, a_materno FROM usuarios WHERE id_usuarios=$id");
        $this->load->view("moderador/constancia_moderador",$data);
    }









}