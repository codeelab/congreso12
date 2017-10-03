<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

/**
 * This controller can be accessed 
 * for all logged in users
 */
class Relator extends MY_Controller {

       //protected $access = array("Admin", "Evaluador");

       public function __construct()
       {
            parent::__construct();
            $this->load->model('Relator_model');
            $this->load->library(array('session','user_agent'));
            $this->load->helper('url');

       }

    public function index()
    {
        $this->load->view("theme/header");
        $this->load->view("theme/menu");
        $this->load->view("relator/index");
        $this->load->view("theme/footer");
    }

    public function mesas()
    {
        /* Se obtienen los registros a mostrar*/
        $data['mesas'] = $this->Relator_model->list_mesas();
        $data['tematica'] = $this->Relator_model->get_area_tematica();
        $this->load->view("theme/header");
        $this->load->view("theme/menu");
        $this->load->view("relator/listado_mesas",$data);
        $this->load->view("theme/footer");
    }

    public function calendario()
    {
        /* Se obtienen los registros a mostrar*/
        $data['tematica'] = $this->Relator_model->get_area_tematica();
        $data['salas'] = $this->Relator_model->get_salas(1,$this->uri->segment(3));
        $this->load->view("theme/header");
        $this->load->view("theme/menu");
        $this->load->view("relator/calendario",$data);
        $this->load->view("theme/footer");
    }

    public function constancias()
    {
        /* Se obtienen los registros a mostrar*/
        $data['pdf'] = $this->Relator_model->get_salas(1);
        $this->load->view("theme/header");
        $this->load->view("theme/menu");
        $this->load->view("relator/constancias",$data);
        $this->load->view("theme/footer");
    }

    public function constancia()
    {
        /* Se obtienen los registros a mostrar*/
        $id=$this->uri->segment(3);
        $data['datos']=$this->db->query("SELECT id_usuarios, nombre, a_paterno, a_materno FROM usuarios WHERE id_usuarios=$id");
        $this->load->view("relator/constancia_relator",$data);
    }
}