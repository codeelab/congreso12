<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Inicio extends CI_Controller {

    public function __construct()
    {
        parent::__construct();
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
        if ($usuario === 'logistico') {
            $this->logistico();
        }else{
            $this->registro();
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



}

?>