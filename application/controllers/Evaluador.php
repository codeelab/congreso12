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
        $this->load->library("session");
        $this->load->helper('url');
    }

    public function index()
    {
        $this->load->view("theme/header");
        $this->load->view("theme/menu");
        $this->load->view("evaluador/index");
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
    public function evaluar($id_ponencias){
        if(is_numeric($id_ponencias)){
          $datos["evaluar"]=$this->Evaluador_model->evaluar($id_ponencias);
          $datos["estado"]=$this->Evaluador_model->get_status_id();
          $this->load->view("theme/header");
          $this->load->view("theme/menu");
          $this->load->view("evaluador/evaluar",$datos);
          $this->load->view("theme/footer");
          if($this->input->post("submit")){
                $evaluar=$this->Evaluador_model->evaluar(
                        $id_ponencias,
                        $this->input->post("submit"),
                        $this->input->post("status_id")
                        );
                if($evaluar==true){
                    //Sesion de una sola ejecución
                    $this->session->set_flashdata('correcto', 'Usuario modificado correctamente');
                }else{
                    $this->session->set_flashdata('incorrecto', 'Usuario modificado correctamente');
                }
                redirect('evaluador/listado');
            }
        }else{
            redirect('evaluador/listado');
        }
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
    public function editar($id_ponencias){
        if(is_numeric($id_ponencias)){
          $datos["editar"]=$this->Evaluador_model->editar($id_ponencias);
          $datos["estado"]=$this->Evaluador_model->get_status_id();
          $this->load->view("theme/header");
          $this->load->view("theme/menu");
          $this->load->view("evaluador/editar",$datos);
          $this->load->view("theme/footer");
          if($this->input->post("submit")){
                $editar=$this->Evaluador_model->editar(
                        $id_ponencias,
                        $this->input->post("submit"),
                        $this->input->post("status_id")
                        );
                if($editar==true){
                    //Sesion de una sola ejecución
                    $this->session->set_flashdata('correcto', 'Usuario modificado correctamente');
                }else{
                    $this->session->set_flashdata('incorrecto', 'Usuario modificado correctamente');
                }
                redirect('evaluador/aprobado');
            }
        }else{
            redirect('evaluador/aprobado');
        }
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