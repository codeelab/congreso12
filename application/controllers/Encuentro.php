<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

/**
 * This controller can be accessed
 * for encentro group only
 */
class Encuentro extends MY_Controller {

    public function __construct()
    {
        parent::__construct();
        $this->load->model('Encuentro_model');
        $this->load->library(array('session','pagination','user_agent'));
        $this->load->helper('url','form');
    }

    public function index()
    {
        $data['alert'] = $this->Encuentro_model->alerta();
        $this->load->view("theme/header");
        $this->load->view("theme/menu");
        $this->load->view("encuentro/index",$data);
        $this->load->view("theme/footer");
    }

    public function listado()
    {
        $id = $this->uri->segment(3);
        $data['ponencias'] = $this->Encuentro_model->list_ponencias();
        $data['ponencias_eva'] = $this->Encuentro_model->lista_evaluados_apro($id);
        $this->load->view("theme/header");
        $this->load->view("theme/menu");
        $this->load->view("encuentro/listado_trabajos",$data);
        $this->load->view("theme/footer");
    }

    //le paso por la url un parametro
    public function evaluar($id_ponencias){
        if(is_numeric($id_ponencias)){
          $datos['ponenciass'] = $this->Encuentro_model->lista_ponencias($this->uri->segment(3));
          $datos["evaluar"] = $this->Encuentro_model->evaluar($id_ponencias);
          $this->load->helper('form');
          $this->load->view("theme/header");
          $this->load->view("theme/menu");
          $this->load->view("encuentro/evaluar",$datos);
          $this->load->view("theme/footer");
          if($this->input->post("submit")){
                $evaluar=$this->Encuentro_model->evaluar(
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
                redirect('encuentro/listado');
            }
        }else{
            redirect('encuentro/listado');
        }
    }

    public function aprobado()
    {
        $data['ponencias_apro'] = $this->Encuentro_model->list_ponencias_apro();
        $this->load->view("theme/header");
        $this->load->view("theme/menu");
        $this->load->view("encuentro/listado_aprobados",$data);
        $this->load->view("theme/footer");
    }

    //le paso por la url un parametro
    public function editar($id_ponencias){
        if(is_numeric($id_ponencias)){
          $data["editar"]=$this->Encuentro_model->editar($id_ponencias);
          $this->load->view("theme/header");
          $this->load->view("theme/menu");
          $this->load->view("encuentro/editar",$data);
          $this->load->view("theme/footer");
          if($this->input->post("submit")){
                $editar=$this->Encuentro_model->editar(
                        $id_ponencias,
                        $this->input->post("submit"),
                        $this->input->post("calificacion_1"),
                        $this->input->post("calificacion_2"),
                        $this->input->post("calificacion_3"),
                        $this->input->post("calificacion_4"),
                        $this->input->post("calificacion_5"),
                        $this->input->post("calificacion_6"),
                        $this->input->post("calificacion_7"),
                        $this->input->post("calificacion_8")
                        );
                if($editar==true){
                    //Sesion de una sola ejecución
                    $this->session->set_flashdata('correcto', 'Usuario modificado correctamente');
                }else{
                    $this->session->set_flashdata('incorrecto', 'Usuario modificado correctamente');
                }
                redirect('encuentro/aprobado');
            }
        }else{
            redirect('encuentro/aprobado');
        }
    }

    public function constancia()
    {
        /* Se obtienen los registros a mostrar*/
        $data['pdf'] = $this->Encuentro_model->list_encuentro_pdf(1);
        $this->load->view("theme/header");
        $this->load->view("theme/menu");
        $this->load->view("encuentro/constancia",$data);
        $this->load->view("theme/footer");
    }

    public function constancias()
    {
        /* Se obtienen los registros a mostrar*/
        $id=$this->uri->segment(3);
        $data['datos']=$this->db->query("SELECT nombre, a_paterno, a_materno FROM usuarios WHERE id_usuarios =$id");
        $this->load->view("encuentro/constancias",$data);
    }


      public function add_evaluacion()
      {

         $datos = $this->input->post();

         if (isset($datos)) {
            $evaluador_id   = $datos['evaluador_id'];
            $ponencia_id    = $datos['ponencia_id'];
            $calificacion_1 = $datos['calificacion_1'];
            $calificacion_2 = $datos['calificacion_2'];
            $calificacion_3 = $datos['calificacion_3'];
            $calificacion_4 = $datos['calificacion_4'];
            $calificacion_5 = $datos['calificacion_5'];
            $calificacion_6 = $datos['calificacion_6'];
            $calificacion_7 = $datos['calificacion_7'];
            $calificacion_8 = $datos['calificacion_8'];
            $calificacion_9 = $datos['calificacion_9'];
            $promedio       = $datos['promedio'];
            $status_id      = $datos['status_id'];

            $this->Encuentro_model->inserta_evaluacion($evaluador_id,$ponencia_id,$calificacion_1,$calificacion_2,$calificacion_3,$calificacion_4,$calificacion_5,$calificacion_6,$calificacion_7,$calificacion_8,$calificacion_9,$promedio,$status_id);

            redirect("encuentro/listado");

         }

      }



}