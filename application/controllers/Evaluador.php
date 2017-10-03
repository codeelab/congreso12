<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

/**
 * This controller can be accessed
 * for Evaluador group only
 */
class Evaluador extends MY_Controller {

    public function __construct()
    {
        parent::__construct();
        $this->load->model('Evaluador_model');
        $this->load->library(array('session','user_agent'));
        $this->load->helper('url');
    }

    public function index()
    {
        $data['alert'] = $this->Evaluador_model->alerta();
        $this->load->view("theme/header");
        $this->load->view("theme/menu");
        $this->load->view("evaluador/index",$data);
        $this->load->view("theme/footer");
    }

    public function listado()
    {

        $data['ponencias'] = $this->Evaluador_model->lista_ponencias();
        $data['tematica'] = $this->Evaluador_model->get_area_tematica();
        $this->load->view("theme/header");
        $this->load->view("theme/menu");
        $this->load->view("evaluador/listado_trabajos",$data);
        $this->load->view("theme/footer");
    }

    //le paso por la url un parametro
    public function evaluar()
    {
        $data['id'] =  $this->uri->segment(3);
        $data['ponent'] = $this->Evaluador_model->obtenerPonente($data['id']);
        $this->load->view("theme/header");
        $this->load->view("theme/menu");
        $this->load->view("evaluador/evaluar",$data);
        $this->load->view("theme/footer");
    }

    public function evaluando()
    {

        $data = array(
            'status_id' => $this->input->post('status_id')
        );
        $this->Evaluador_model->evaluar($this->uri->segment(3),$data);
    }


    public function aprobado()
    {
        $data['ponencias'] = $this->Evaluador_model->lista_ponencias_aprobados();
        $data['tematica'] = $this->Evaluador_model->get_area_tematica();
        $this->load->view("theme/header");
        $this->load->view("theme/menu");
        $this->load->view("evaluador/listado_aprobados",$data);
        $this->load->view("theme/footer");
    }

    //le paso por la url un parametro
    public function editar()
    {
        $data['id'] =  $this->uri->segment(3);
        $data['ponent'] = $this->Evaluador_model->obtenerPonente($data['id']);
        $this->load->view("theme/header");
        $this->load->view("theme/menu");
        $this->load->view("evaluador/editar",$data);
        $this->load->view("theme/footer");
    }

    public function constancia()
    {
        /* Se obtienen los registros a mostrar*/
        $data['pdf'] = $this->Evaluador_model->list_evaluador_pdf(1);
        $this->load->view("theme/header");
        $this->load->view("theme/menu");
        $this->load->view("evaluador/constancia",$data);
        $this->load->view("theme/footer");
    }

    public function constancias()
    {
        /* Se obtienen los registros a mostrar*/
        $id=$this->uri->segment(3);
        $data['datos']=$this->db->query("SELECT nombre, a_paterno, a_materno FROM usuarios WHERE id_usuarios=$id");
        $this->load->view("evaluador/constancias",$data);
    }
}