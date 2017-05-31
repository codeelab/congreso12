<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Inicio extends CI_Controller {

    public function __construct()
    {
        parent::__construct();
        $this->load->model('Inicio_model');
        $this->load->helper('url'); //loads url helper
        $this->load->library('form_validation');
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
        $data['token'] = $this->token();
        $this->load->view("theme/header");
        $this->load->view("theme/menu");
        $this->load->view('login',$data);
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

    /**
    * @desc - genera un token para cada usuario registrado
    * @return token
    */
    private function token()
    {
        return sha1(uniqid(rand(),true));
    }

    function registro_ponente() {

        $token = $this->token();
        //Validar que no exista el usuario
        $validar = $this->db->query("SELECT id_usuarios FROM usuarios WHERE username='{$_POST['username']}' and password='{$_POST['password']}' limit 1");
        if ($validar->num_rows() == 0) {
            $query = $this->db->insert('usuarios', $_POST);
            $id_usuarios = $this->db->insert_id();
            $this->db->query("UPDATE usuarios SET token='$token' WHERE id_usuarios='$id_usuarios'");
        } else {
            $r = $validar->row();
            $id_usuarios = $r->id_usuarios;
            $this->db->query("UPDATE usuarios SET username='{$_POST['username']}',  password='{$_POST['password']}', token='$token' WHERE id_usuarios='$id_usuarios'");
        }
        $base = base_url();
        if ($id_usuarios > 0) {
            //Enviar Correo Electrónico
            $this->load->library('My_PHPMailer');
            $this->load->model('Enviar_correo');
            $mail = new PHPMailer();
            $mail->SMTPAuth   = true; // enabled SMTP authentication
            $mail->SMTPSecure = "ssl";  // prefix for secure protocol to connect to the server
            $mail->Host       = "smtp.gmail.com";      // setting GMail as our SMTP server
            $mail->Port       = 465;                   // SMTP port to connect to GMail
            $mail->Username   = "informatica.cecti@gmail.com";  // user email address
            $mail->Password   = "sicdet2016";            // password in GMail
            $mail->IsSMTP(); // establecemos que utilizaremos SMTP
            $mail->SetFrom('informatica.cecti@gmail.com', 'Consejo Estatal de Ciencia, Tecnología e Innovación');  //Quien envía el correo
            $mail->AddReplyTo("informatica.cecti@gmail.com", "Consejo Estatal de Ciencia, Tecnología e Innovación");  //A quien debe ir dirigida la respuesta
            $datos['username'] = $_POST['username'];
            $datos['nombre'] = $_POST['nombre'];
            $datos['password'] = $_POST['password'];
            $mail->Body = $this->Enviar_correo->acceso_html($datos);
            $mail->AltBody = "Credenciales de Acceso CECTI";
            $correo_destino = $_POST['email'];
            if (strlen($correo_destino) > 5) {
                $mail->AddAddress($correo_destino, $_POST['nombre']);
            }

            if (!$mail->Send()) {
                $data["message"] = "Ocurrio un error en el envío: " . $mail->ErrorInfo;
                show_error("Error en el envío: " . $mail->ErrorInfo);
            } else {
                $data["message"] = "¡Mensaje enviado correctamente!";
                //show_error("Si se envió");
            }

             $this->login();
        } else {
            $this->ponentes();
        }
    }



}

?>