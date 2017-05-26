<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Inicio extends CI_Controller {

    public function __construct()
    {
        parent::__construct();
        $this->load->model('Inicio_model');
        $this->load->helper('url'); //loads url helper
    }


	public function index()
	{
        $this->load->view("theme/header");
        $this->load->view("theme/menu");
        $this->load->view('inicio');
        $this->load->view("theme/footer");
	}

    public function contacto()
    {
        $this->load->view("theme/header");
        $this->load->view("theme/menu");
        $this->load->view('contacto');
        $this->load->view("theme/footer");
    }

    public function registro($show_error = false)
    {
        $data['error'] = $show_error;
        $this->load->view("theme/header");
        $this->load->view("theme/menu");
        $this->load->view('registro',$data);
        $this->load->view("theme/footer");
    }

    public function login()
    {
        $this->load->view("theme/header");
        $this->load->view("theme/menu");
        $this->load->view('login');
        $this->load->view("theme/footer");
    }

    public function ponentes()
    {
        $data['estados']           = $this->Inicio_model->getEstados();
        $data['instituciones']     = $this->Inicio_model->getInstituciones();
        $data['gen']               = $this->Inicio_model->sexo();
        $data['esc']               = $this->Inicio_model->escolaridad();
        $data['nac']               = $this->Inicio_model->nacionalidad();
        $this->load->view("theme/header");
        $this->load->view("theme/menu");
        $this->load->view('ponentes',$data);
        $this->load->view("theme/footer");
    }

    public function evaluador()
    {
        $this->load->view("theme/header");
        $this->load->view("theme/menu");
        $this->load->view('evaluador');
        $this->load->view("theme/footer");
    }

    public function moderela()
    {
        $this->load->view("theme/header");
        $this->load->view("theme/menu");
        $this->load->view('moderela');
        $this->load->view("theme/footer");
    }

    public function logistico()
    {
        $this->load->view("theme/header");
        $this->load->view("theme/menu");
        $this->load->view('logistico');
        $this->load->view("theme/footer");
    }



  function acceso() {
      // Create an instance of the user model
      $this->load->model('Inicio_model');

      // Grab the email and password from the form POST
      $clave = $this->input->post('clave');
      $usuario = $this->input->post('usuario');

      //Ensure values exist for email and pass, and validate the user's credentials
      if( $clave && $usuario && $this->Inicio_model->validate_user($clave, $usuario)) {
          // If the user is valid, redirect to the main view
        if ($usuario === 'evaluador') {
            $this->evaluador();
        }elseif($usuario === 'moderela') {
            $this->moderela();
        }elseif ($usuario === 'logistico') {
            $this->logistico();
        }else{
            $this->registro(true);
        }
      } else {
          // Otherwise show the login screen with an error message.
          $this->registro(true);
      }
  }

    public function salir()
    {
        $this->session->unset_userdata();
        $this->session->sess_destroy();
        redirect("inicio/registro");
    }

    /**
    * @desc - genera un token para cada usuario registrado
    * @return token
    */
    private function token()
    {
        return sha1(uniqid(rand(),true));
    }

    public function regPonente()
    {
        $this->form_validation->set_rules(
            'nombre', 'nombre', 'required|trim|xss_clean'
        );
        $this->form_validation->set_rules(
            'a_paterno', 'a_paterno', 'required|trim|xss_clean'
        );
        $this->form_validation->set_rules(
            'a_materno', 'a_materno', 'required|trim|xss_clean'
        );
        $this->form_validation->set_rules(
            'email', 'email', 'required|trim|min_length[2]|max_length[50]|xss_clean|is_unique[users.email]|valid_email'
        );
        $this->form_validation->set_rules(
            'edad', 'edad', 'required|trim|xss_clean'
        );
        $this->form_validation->set_rules(
            'genero', 'genero', 'required|trim|xss_clean'
        );
        $this->form_validation->set_rules(
            'nacionalidad', 'nacionalidad', 'required|trim|xss_clean'
        );
        $this->form_validation->set_rules(
            'estado', 'estado', 'required|trim|xss_clean'
        );
        $this->form_validation->set_rules(
            'municipio', 'municipio', 'required|trim|xss_clean'
        );
        $this->form_validation->set_rules(
            'escolaridad', 'escolaridad', 'required|trim|xss_clean'
        );
        $this->form_validation->set_rules(
            'institucion', 'institucion', 'required|trim|xss_clean'
        );
        $this->form_validation->set_rules(
            'facultad', 'facultad', 'required|trim|xss_clean'
        );
        $this->form_validation->set_rules(
            'usuario', 'usuario', 'required|trim|min_length[6]|max_length[50]|xss_clean'
        );
        $this->form_validation->set_rules(
            'password', 'password', 'required|trim|min_length[6]|max_length[50]|xss_clean'
        );

        $this->form_validation->set_message('required', 'El %s es requerido');
        $this->form_validation->set_message('valid_email', 'El %s no tiene un formato correcto');
        $this->form_validation->set_message('is_unique', 'El email %s ya está registrado');
        $this->form_validation->set_message('min_length', 'El %s debe tener al menos %s carácteres');
        $this->form_validation->set_message('max_length', 'El %s debe tener al menos %s carácteres');

        if($this->form_validation->run() == FALSE)
        {
            $this->acceso();
        }
        else
        {
            $data = array(
                    "nombre"        =>  $this->input->post("nombre"),
                    "a_paterno"     =>  $this->input->post("a_paterno"),
                    "a_materno"     =>  $this->input->post("a_materno"),
                    "email"         =>  $this->input->post("email"),
                    "edad"          =>  $this->input->post("edad"),
                    "genero"        =>  $this->input->post("genero"),
                    "nacionalidad"  =>  $this->input->post("nacionalidad"),
                    "estado"        =>  $this->input->post("estado"),
                    "municipio"     =>  $this->input->post("municipio"),
                    "escolaridad"   =>  $this->input->post("escolaridad"),
                    "institucion"   =>  $this->input->post("institucion"),
                    "facultad"      =>  $this->input->post("facultad"),
                    "usuario"       =>  $this->input->post("usuario"),
                    "password"      =>  sha1($this->input->post("password")),
                    "token"         =>  $this->token(),
                );

            $this->load->model("Login_model");
            if($this->Login_model->register($data) === TRUE)
            {
                $this->session->set_flashdata("registered", "Te has registrado correctamente");
                 $this->acceso();
            }
        }
    }


    function getCidades($id_estado)
    {
        $this->load->model('Inicio_model');
        $cidades = $this->Inicio_model->getCidades($id_estado);
        if( empty ( $cidades ) )
            return '{ "nome": "No hay municipios disponibles" }';
        $arr_cidade = array();
        foreach ($cidades as $cidade) {
            $arr_cidade[] = '{"id_municipio":' . $cidade->id_municipio . ',"nome":"' . $cidade->nombre_mun . '"}';
        }
        echo '[ ' . implode(",",$arr_cidade) . ']';
        return;
    }

    function getFacultad($id_institucion)
    {
        $this->load->model('Inicio_model');
        $facultad = $this->Inicio_model->getFacultad($id_institucion);
        if( empty ( $facultad ) )
            return '{ "nome": "No hay municipios disponibles" }';
        $arr_facult = array();
        foreach ($facultad as $fac) {
            $arr_facult[] = '{"id_facultad":' . $fac->id_facultad . ',"nome":"' . $fac->nombre_fac . '"}';
        }
        echo '[ ' . implode(",",$arr_facult) . ']';
        return;
    }




}

?>