<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

/**
 * This controller can be accessed 
 * for all logged in users
 */
class Ponente extends MY_Controller {

       //protected $access = array("Admin", "Evaluador");

       public function __construct()
       {
            parent::__construct();
            $this->load->model('Ponentes_model');
            $this->load->library("session");
            $this->load->helper('url');
            /* Se cargan la libreria pagination */
            $this->load->library('pagination');
       }

	public function index()
	{
		$this->load->view("header");
        $this->load->view("menu");
		$this->load->view("ponente/index");
		$this->load->view("footer");
	}

    public function trabajo()
    {
        // obtenemos el array de Área Temática y Tipo de Trabajo, lo preparamos para enviar
        $datos['tipo'] = $this->Ponentes_model->get_tipo_trabajo();
        $datos['area'] = $this->Ponentes_model->get_area_tematica();
        // cargamos  la interfaz y le enviamos los datos
        $this->load->view("header");
        $this->load->view("menu");
        $this->load->view("ponente/registro_trabajo",$datos);
        $this->load->view("footer");
    }

    public function listado()
    {
        $pages=5; //Número de registros mostrados por páginas
        $this->load->library('pagination'); //Cargamos la librería de paginación
        /* URL a la que se desea agregar la paginación*/
        $config['base_url'] = base_url().'ponente/listado/';
        $config['total_rows'] = $this->Ponentes_model->get_total_ponencias();//calcula el número de filas
        $config['per_page'] = $pages; //Número de registros mostrados por páginas
        $config['num_links'] = 20; //Número de links mostrados en la paginación
        $config['first_link'] = 'Primera';//primer link
        $config['last_link'] = 'Última';//último link
        $config["uri_segment"] = 3;//el segmento de la paginación
        $config['next_link'] = 'Siguiente';//siguiente link
        $config['prev_link'] = 'Anterior';//anterior link
        $this->pagination->initialize($config); //inicializamos la paginación
        /* Se obtienen los registros a mostrar*/
        $data['ponencias'] = $this->Ponentes_model->list_ponencias(1,$config['per_page'],$this->uri->segment(3));
        $this->load->view("header");
        $this->load->view("menu");
        $this->load->view("ponente/listado_trabajos",$data);
        $this->load->view("footer");
    }

    public function registro_trabajo() {

        $_POST['status_id'] = 1;
        $_POST['fecha_registro'] = date("Y/m/d");
        $query = $this->db->insert('ponencias', $_POST);
        $base = base_url();
        $id = $this->db->insert_id();
        $config['id_upload'] = "$id";
        $config['upload_path'] = 'upload/';
        $config['allowed_types'] = 'pdf';
        $config['max_size'] = '5000';
        $config['field_name'] = "userfile";
        $config['overwrite'] = TRUE;
        $this->load->library('upload', $config);
        $this->upload->do_upload();
        $file_info = $this->upload->data();

        if (!$this->upload->do_upload()) {
            echo "error";
            echo "" . $this->upload->display_errors();
        } else {
            $ponencias = $this->db->query("SELECT * FROM ponencias WHERE id_ponencias=$id");
            $row = $ponencias->row();
            $fuente = $file_info['full_path'];
            $ext = $file_info['file_ext'];
            $nombre_final_archivo = "$id-resumen$ext";
            $destino = "mesas/mesa{$row->mesa_id}/$nombre_final_archivo";
            $destino_db = "mesas/mesa{$row->mesa_id}/$nombre_final_archivo";
            if (!copy($fuente, $destino)) {
                echo "Fallo al copiar a la ubicación $destino\n";
            } else {
                $data['archivo_resumen'] = $destino_db;
            }
            $this->db->where('id_ponencias', $id);
            $this->db->update('ponencias', $data);
            echo "<html> <script>alert(\"El archivo se ha guardado exitosamente\"); window.location='" . base_url() . "ponente/index/';</script></html>";
        }
    }

    //controlador para modificar al que
    //le paso por la url un parametro
    public function mod($id_ponencias){
        if(is_numeric($id_ponencias)){
          $datos["mod"]=$this->Ponentes_model->mod($id_ponencias);
          $this->load->view("header");
          $this->load->view("menu");
          $this->load->view("ponente/editar",$datos);
          $this->load->view("footer");
          if($this->input->post("submit")){
                $mod=$this->Ponentes_model->mod(
                        $id_ponencias,
                        $this->input->post("submit"),
                        $this->input->post("titulo"),
                        $this->input->post("autor"),
                        $this->input->post("coautores"),
                        $this->input->post("asesor")
                        );
                if($mod==true){
                    //Sesion de una sola ejecución
                    $this->session->set_flashdata('correcto', 'Usuario modificado correctamente');
                }else{
                    $this->session->set_flashdata('incorrecto', 'Usuario modificado correctamente');
                }
                redirect(base_url());
            }
        }else{
            redirect(base_url());
        }
    }

    //Controlador para eliminar
    public function eliminar($id_ponencias){
        if(is_numeric($id_ponencias)){
          $eliminar=$this->Ponentes_model->eliminar($id_ponencias);
          if($eliminar==true){
              $this->session->set_flashdata('correcto', 'Usuario eliminado correctamente');
          }else{
              $this->session->set_flashdata('incorrecto', 'Usuario eliminado correctamente');
          }
          redirect(base_url());
        }else{
          redirect(base_url());
        }
    }

    public function constancias()
    {
        /* Se obtienen los registros a mostrar*/
        $data['pdf'] = $this->Ponentes_model->list_ponencia_pdf(1);
        $this->load->view("header");
        $this->load->view("menu");
        $this->load->view("ponente/constancias",$data);
        $this->load->view("footer");
    }

    public function constancia_autor()
    {
        /* Se obtienen los registros a mostrar*/
        $id=$this->uri->segment(3);
        $data['datos']=$this->db->query("SELECT autor, titulo FROM ponencias WHERE id_ponencias=$id");
        $this->load->view("ponente/constancia_autor",$data);
    }

    public function constancia_coautor()
    {
        /* Se obtienen los registros a mostrar*/
        $id=$this->uri->segment(3);
        $data['datos']=$this->db->query("SELECT coautores, titulo FROM ponencias WHERE id_ponencias=$id");
        $this->load->view("ponente/constancia_coautor",$data);
    }

    public function constancia_asesor()
    {
        /* Se obtienen los registros a mostrar*/
        $id=$this->uri->segment(3);
        $data['datos']=$this->db->query("SELECT asesor, titulo FROM ponencias WHERE id_ponencias=$id");
        $this->load->view("ponente/constancia_asesor",$data);
    }

}