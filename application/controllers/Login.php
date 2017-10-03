<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Login extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('login_model');
        $this->load->library(array('session','form_validation','email','user_agent'));
        $this->load->helper(array('url','form'));
        $this->load->database('default');
    }

    public function index()
    {
        switch ($this->session->userdata('puesto')) {
            case '':
                $data['token'] = $this->token();
                $this->load->view("theme/header");
                $this->load->view("theme/menu");
                $this->load->view('login',$data);
                $this->load->view("theme/footer");
                break;
            case '1':
                redirect(base_url().'admin/index');
                break;
            case '2':
                redirect(base_url().'ponente/index');
                break;
            case '3':
                redirect(base_url().'evaluador/index');
                break;
            case '4':
                redirect(base_url().'moderador/index');
                break;
            case '5':
                redirect(base_url().'relator/index');
                break;
            case '6':
                redirect(base_url().'logistico/index');
                break;
            case '7':
                redirect(base_url().'asistente/index');
                break;
            case '8':
                redirect(base_url().'organizador/index');
                break;
            case '9':
                redirect(base_url().'encuentro/index');
                break;
            case '10':
                redirect(base_url().'apoyo/index');
                break;
            default:
                $data['token'] = $this->token();
                $this->load->view("theme/header");
                $this->load->view("theme/menu");
                $this->load->view('login',$data);
                $this->load->view("theme/footer");
                break;
        }
    }

    public function token()
    {
        $token = sha1(uniqid(rand(),true));
        $this->session->set_userdata('token',$token);
        return $token;
    }

    public function acceso()
    {
        $this->load->library('form_validation');

        if($this->input->post('token') && $this->input->post('token') == $this->session->userdata('token'))
        {
            $this->form_validation->set_rules('username', 'Nombre de Usuario', 'required|trim|max_length[150]|xss_clean');
            $this->form_validation->set_rules('password', 'Contraseña', 'required|trim|min_length[5]|max_length[150]|xss_clean');


                $this->form_validation->set_message('required', '%s requerido');
                $this->form_validation->set_message('min_length', 'El %s debe tener al menos %s caracteres.');
                $this->form_validation->set_message('max_length', 'El %s no puede tener más de %s carácteres');

            if($this->form_validation->run() == FALSE)
            {
                $this->index();
            }else{

                $username = $this->input->post('username');
                $password = sha1($this->input->post('password'));

                $check_user = $this->login_model->login($username,$password);

                if($check_user == TRUE)
                {
                    $data = array(
                    'is_logued_in'  =>      TRUE,
                    'id_usuarios'   =>      $check_user->id_usuarios,
                    'puesto'        =>      $check_user->puesto,
                    'nombre'        =>      $check_user->nombre,
                    'a_paterno'     =>      $check_user->a_paterno,
                    'a_materno'     =>      $check_user->a_materno,
                    'mesa'          =>      $check_user->mesa,
                    'area_id'       =>      $check_user->area_id,
                    'username'      =>      $check_user->username,
                    'password'      =>      $check_user->password
                    );
                    $this->session->set_userdata($data);
                    $this->index();
                }else {
                     $this->session->set_flashdata('correcto', 'Usuario registrado correctamente!');
                    redirect('login');
        }
            }
        }else{
            redirect('login');

        }
    }

    public function salir()
    {
        $array_sesiones = array('user' => '', 'nombre' => '', 'a_paterno' => '', 'a_materno' => '');
        $this->session->unset_userdata($array_sesiones);
        $this->session->sess_destroy();
        redirect("login");
    }


    public function recovery()
    {
        $data['token'] = $this->token();
        $this->load->view("theme/header");
        $this->load->view("theme/menu");
        $this->load->view('form_recovery',$data);
        $this->load->view("theme/footer");
    }



    /**
    * @desc - posibilita al usuario a solicitar un nuevo password
    */
    public function request_password()
    {
        $this->form_validation->set_rules(
            'email', 'email', 'required|trim|xss_clean|valid_email|callback_comprobar_email'
        );

        $this->form_validation->set_message('required', 'El %s es requerido');
        $this->form_validation->set_message('valid_email', 'El %s no tiene un formato correcto');

        if($this->form_validation->run() == FALSE)
        {
            $this->index();
        }
        else
        {
            $this->load->model("login_model");
            //obtenemos los datos del usuario porque existe el email
            $userData = $this->login_model->getUserData($this->input->post("email"));

            //si se ha actualiado el request_token y todo ha ido bien
            //enviamos un email al usuario
            if($userData)
            {
                if($this->sendMailRecoveryPass($userData) === TRUE)
                {
                    $this->session->set_flashdata(
                        "mail_send", "Se ha enviado un email a su correo para recuperar su password, tiene 5 minutos"
                    );
                }
                else
                {
                    $this->session->set_flashdata(
                        "not_email_send", "Ha ocurrido un error enviando el email, pruebe más tarde"
                    );
                }
                redirect(base_url("login"),"refresh");
            } 
        }
    }

    /**
    * @desc - callback para la validación del formulario que valida si existe el email en la base de datos
    */
    public function comprobar_email()
    {
        $email = $this->input->post('email');
        $this->load->model("login_model");
        $comprobar_email = $this->login_model->verifica_email($email);
        if ($comprobar_email !== TRUE)
        {
            $this->form_validation->set_message('comprobar_email', 'El email introducido no existe en la base de datos');
            return FALSE;
        }
        else
        {
            return TRUE;
        }
    }

    /**
    * @desc - renderiza la vista recovery_pass
    */
    public function recovery_password($token = "")
    {
        //si el password ha caducado
        if($this->checkIsLiveToken($token) === FALSE)
        {
            $this->session->set_flashdata(
                "expired_request", "Si necesita recuperar su password rellene el
                formulario con su email y le haremos llegar un correo con instrucciones"
            );
            redirect(base_url("login/recovery"),"refresh");
        }
        $data = array();
        $data["token"] = $token;
        $this->session->set_userdata("id_user_recovery_pass", $this->checkIsLiveToken($token)->id_usuarios);
        $this->load->view("login/recovery", $data);
    }

    /**
    * @desc - procesa el formulario para cambiar el password del usuario
    */
    public function update_password()
    {
        //validamos que los passwords coincidan
        $this->form_validation->set_rules(
            'password', 'password', 'required|trim|min_length[6]|max_length[50]|xss_clean|matches[conf_password]'
        );

        $this->form_validation->set_rules(
            'conf_password', 'confirm pass', 'required|trim|min_length[6]|max_length[50]|xss_clean'
        );

        $this->form_validation->set_message('required', 'El %s es requerido');
        $this->form_validation->set_message('matches', 'El %s y el %s no coinciden');
        $this->form_validation->set_message('max_length', 'El %s no puede tener más de %s carácteres');
        $this->form_validation->set_message('min_length', 'El %s no puede tener menos de %s carácteres');

        //si el formulario no pasa mandamos a recovery_password con el token como parámetro
        if($this->form_validation->run() == FALSE)
        {
            $this->recovery_password($this->input->post("token"));
        }
        else
        {

            $data = array(
                    "password"      =>  sha1($this->input->post("password")),
                    "user_id"   =>  $this->session->userdata("id_user_recovery_pass"),
                    "request_token" =>  date('Y-m-d H:i:s'),
                    "token"         =>  $this->token()//ponemos otro token nuevo
                );

            $this->load->model("login_model");

            //si el password se ha cambiado correctamente y actualizado los datos
            if($this->login_model->change_password($data) === TRUE)
            {
                $this->session->set_flashdata(
                    "password_changed", "Su password ha sido modificado correctamente"
                );
            }
            //en otro caso error
            else
            {
                $this->session->set_flashdata(
                    "error_password_changed", "Ha ocurrido un error modificando su password"
                );
            }
            redirect("login/recovery");
        }
    }

    /**
    * @desc - comprueba si el token ha expirado o no, el usuario tiene 5 minutos de tiempo
    * @param $token - string unico por usuario
    */
    private function checkIsLiveToken($token)
    {
        $this->load->model("login_model");
        return $this->login_model->checkIsLiveToken($token);
    }

    /**
    * @desc - configura y envia un email con gmail
    * @param - $userdata array con los datos del usuario para enviar el email
    */
    private function sendMailRecoveryPass($userdata)
    {


        //configuracion para gmail
        $configGmail = array(
            'protocol' => 'smtp',
            'smtp_host' => 'ssl://smtp.gmail.com',
            'smtp_port' => 465,
            'smtp_user' => 'informatica.cecti@gmail.com',
            'smtp_pass' => 'sicdet2016',
            'mailtype' => 'html',
            'charset' => 'utf-8',
            'newline' => "\r\n"
        );
        $nombre = $this->session->set_userdata($nombre);
        //cargamos la libreria email de ci
        $this->load->library('email',$configGmail);
        $this->email->from('soporte@sicdet.org');
        $this->email->to($userdata->email);
        $this->email->subject('Recuperación de password CECTI 2017');
        $html .= "<img src='".base_url()."assets/img/logo.png' width='700px' align='center'><p>Estimado usuario(a), <br/><br/>por medio del presente correo, se le notifica de la alta de usuario para registrar trabajos en el 12° Congreso Estatal de Ciencia, Tecnología e Innovación, para lo cual le solicitamos de clic al enlace siguiente.</p>

        <center><a href='".base_url()."login/recovery/$userdata->token'>Recuperación de Contraseña</a></center><br/>
        </p><p>Atentamente: <br/><br/><a href='http://sicdet.michoacan.gob.mx'>Secrtetaría de Innovación, Ciencia y desarrollo tecnológico</a></p>";

        $this->email->message($html);

        if($this->email->send())
        {
            return TRUE;
        }
    }

}
