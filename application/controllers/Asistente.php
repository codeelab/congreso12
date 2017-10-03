<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

/**
 * This controller can be accessed
 * for all logged in users
 */
class Asistente extends MY_Controller {


       public function __construct()
       {
            parent::__construct();
            $this->load->model('Asistente_model');
            $this->load->library(array('session','user_agent'));
            $this->load->helper('url');

       }

    public function index()
    {
        $data['alert'] = $this->Asistente_model->alerta();
        $this->load->view("theme/header");
        $this->load->view("theme/menu");
        $this->load->view("asistente/index",$data);
        $this->load->view("theme/footer");
    }


    public function constancias()
    {
        /* Se obtienen los registros a mostrar*/
        $data['pdf'] = $this->Asistente_model->get_area();
        $this->load->view("theme/header");
        $this->load->view("theme/menu");
        $this->load->view("asistente/constancias",$data);
        $this->load->view("theme/footer");
    }

    public function constancia()
    {
        /* Se obtienen los registros a mostrar*/
        $id=$this->session->userdata('id_usuarios');
        $data['datos']=$this->db->query("SELECT id_usuarios, nombre, a_paterno, a_materno FROM usuarios WHERE id_usuarios=$id");
        $this->load->view("asistente/constancia_asistente",$data);
    }

    public function mod($id_usuarios){
        if(is_numeric($id_usuarios)){
          $datos["mod"]=$this->Asistente_model->mod($id_usuarios);
          $this->load->view("theme/header");
          $this->load->view("theme/menu");
          $this->load->view("asistente/editar",$datos);
          $this->load->view("theme/footer");
          if($this->input->post("submit")){
                $mod=$this->Asistente_model->mod(
                        $id_usuarios,
                        $this->input->post("submit"),
                        $this->input->post("nombre"),
                        $this->input->post("a_paterno"),
                        $this->input->post("a_materno")
                        );
                if($mod==true){
                    //Sesion de una sola ejecución
                    $this->session->set_flashdata('correcto', 'Usuario modificado correctamente');
                }else{
                    $this->session->set_flashdata('incorrecto', 'Usuario modificado correctamente');
                }
                redirect('asistente/constancias');
            }
        }else{
            redirect(base_url());
        }
    }

}