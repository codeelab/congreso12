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
        $this->load->library('session','pagination');
        $this->load->helper('url','form');
    }

    public function index()
    {
        $this->load->view("theme/header");
        $this->load->view("theme/menu");
        $this->load->view("encuentro/index");
        $this->load->view("theme/footer");
    }

    public function listado()
    {
        $pages=5; //Número de registros mostrados por páginas
        $this->load->library('pagination'); //Cargamos la librería de paginación
        /* URL a la que se desea agregar la paginación*/
        $config['base_url'] = base_url().'encuentro/listado/';
        $config['total_rows'] = $this->Encuentro_model->get_total_ponencias();//calcula el número de filas
        $config['per_page'] = $pages; //Número de registros mostrados por páginas
        $config['num_links'] = 20; //Número de links mostrados en la paginación
        $config['first_link'] = 'Primera';//primer link
        $config['last_link'] = 'Última';//último link
        $config["uri_segment"] = 3;//el segmento de la paginación
        $config['next_link'] = 'Siguiente';//siguiente link
        $config['prev_link'] = 'Anterior';//anterior link
        $this->pagination->initialize($config); //inicializamos la paginación
        /* Se obtienen los registros a mostrar*/
        $data['ponencias'] = $this->Encuentro_model->list_ponencias(1,$config['per_page'],$this->uri->segment(3));
        $this->load->view("theme/header");
        $this->load->view("theme/menu");
        $this->load->view("encuentro/listado_trabajos",$data);
        $this->load->view("theme/footer");
    }

    //le paso por la url un parametro
    public function evaluar($id_ponencias){
        if(is_numeric($id_ponencias)){
        $pages=5; //Número de registros mostrados por páginas
        $this->load->library('pagination'); //Cargamos la librería de paginación
        /* URL a la que se desea agregar la paginación*/
        $config['base_url'] = base_url().'encuentro/listado/';
        $config['total_rows'] = $this->Encuentro_model->get_total_ponencias();//calcula el número de filas
        $config['per_page'] = $pages; //Número de registros mostrados por páginas
        $config['num_links'] = 20; //Número de links mostrados en la paginación
        $config['first_link'] = 'Primera';//primer link
        $config['last_link'] = 'Última';//último link
        $config["uri_segment"] = 3;//el segmento de la paginación
        $config['next_link'] = 'Siguiente';//siguiente link
        $config['prev_link'] = 'Anterior';//anterior link
        $this->pagination->initialize($config); //inicializamos la paginación
          $datos['ponencias'] = $this->Encuentro_model->list_ponencias(1,$config['per_page'],$this->uri->segment(3));
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
        $pages=5; //Número de registros mostrados por páginas
        $this->load->library('pagination'); //Cargamos la librería de paginación
        /* URL a la que se desea agregar la paginación*/
        $config['base_url'] = base_url().'encuentro/aprobado/';
        $config['total_rows'] = $this->Encuentro_model->get_total_ponencias();//calcula el número de filas
        $config['per_page'] = $pages; //Número de registros mostrados por páginas
        $config['num_links'] = 20; //Número de links mostrados en la paginación
        $config['first_link'] = 'Primera';//primer link
        $config['last_link'] = 'Última';//último link
        $config["uri_segment"] = 3;//el segmento de la paginación
        $config['next_link'] = 'Siguiente';//siguiente link
        $config['prev_link'] = 'Anterior';//anterior link
        $this->pagination->initialize($config); //inicializamos la paginación
        /* Se obtienen los registros a mostrar*/
        $data['ponencias'] = $this->Encuentro_model->list_ponencias(1,$config['per_page'],$this->uri->segment(3));
        $this->load->view("theme/header");
        $this->load->view("theme/menu");
        $this->load->view("encuentro/listado_aprobados",$data);
        $this->load->view("theme/footer");
    }

    //le paso por la url un parametro
    public function editar($id_ponencias){
        if(is_numeric($id_ponencias)){
          $data["editar"]=$this->Encuentro_model->editar($id_ponencias);
          $this->load->view("header");
          $this->load->view("menu");
          $this->load->view("encuentro/editar",$data);
          $this->load->view("footer");
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
        $data['datos']=$this->db->query("SELECT nombre, a_paterno, a_materno FROM usuarios WHERE id_usuarios=$id");
        $this->load->view("encuentro/constancias",$data);
    }


      public function add_evaluacion()
      {

         $datos = $this->input->post();

         if (isset($datos)) {
            $evaluador_id   = $datos['evaluador_id'];
            $ponencia_id    = $datos['ponencia_id'];
            $ponente        = $datos['ponente'];
            $correo         = $datos['correo'];
            $nivel          = $datos['nivel'];
            $titulo         = $datos['titulo'];
            $modalidad      = $datos['modalidad'];
            $mesa           = $datos['mesa'];
            $status         = $datos['status'];
            $calificacion_1 = $datos['calificacion_1'];
            $calificacion_2 = $datos['calificacion_2'];
            $calificacion_3 = $datos['calificacion_3'];
            $calificacion_4 = $datos['calificacion_4'];
            $calificacion_5 = $datos['calificacion_5'];
            $calificacion_6 = $datos['calificacion_6'];
            $calificacion_7 = $datos['calificacion_7'];
            $calificacion_8 = $datos['calificacion_8'];
            $status_id      = $datos['status_id'];

            $this->Encuentro_model->inserta_evaluacion($evaluador_id,$ponencia_id,$ponente,$correo,$nivel,$titulo,$modalidad,$mesa,$status,$calificacion_1,$calificacion_2,$calificacion_3,$calificacion_4,$calificacion_5,$calificacion_6,$calificacion_7,$calificacion_8,$status_id);

            redirect("encuentro/aprobado");

         }

      }



}