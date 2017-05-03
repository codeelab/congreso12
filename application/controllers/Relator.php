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
            $this->load->library("session");
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


}