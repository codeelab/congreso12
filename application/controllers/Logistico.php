<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

/**
 * This controller can be accessed
 * for all logged in users
 */
class Logistico extends MY_Controller {

       //protected $access = array("Admin", "Evaluador");

       public function __construct()
       {
            parent::__construct();
            $this->load->model('Logistico_model');
            $this->load->library("session");
            $this->load->helper('url');

       }

    public function index()
    {
        $this->load->view("theme/header");
        $this->load->view("theme/menu");
        $this->load->view("logistico/index");
        $this->load->view("theme/footer");
    }

    public function area()
    {
        /* Se obtienen los registros a mostrar*/
        $data['tema'] = $this->Logistico_model->get_area(1,$this->uri->segment(3));
        $this->load->view("theme/header");
        $this->load->view("theme/menu");
        $this->load->view("logistico/calendario",$data);
        $this->load->view("theme/footer");
    }
}