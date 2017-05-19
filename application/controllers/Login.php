<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');
/**
 * Created by JetBrains PhpStorm.
 * User: isra
 * Date: 19/01/13
 * Time: 18:51
 * To change this template use File | Settings | File Templates.
 */
class Login extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('login_model');
        $this->load->library(array('session','form_validation'));
        $this->load->helper(array('url','form'));
        $this->load->database('default');
    }

    public function index()
    {
        switch ($this->session->userdata('puesto')) {
            case '':
                //$data['recaptcha_html'] = $this->recaptcha->recaptcha_get_html();
                $this->load->library('recaptcha');
                $data['token'] = $this->token();
                $this->load->view("theme/header");
                $this->load->view("theme/menu");
                $this->load->view('login',$data);
                $this->load->view("theme/footer");
                break;
            case 'administrador':
                redirect(base_url().'ad/index');
                break;
            case 'ponente':
                redirect(base_url().'ponente/index');
                break;
            case 'evaluador':
                redirect(base_url().'evaluador/index');
                break;
            case 'encuentro':
                redirect(base_url().'encuentro/index');
                break;
            case 'relator':
                redirect(base_url().'relator/index');
                break;
            case 'moderador':
                redirect(base_url().'moderador/index');
                break;
            case 'logistico':
                redirect(base_url().'logistico/index');
                break;
            case 'asistente':
                redirect(base_url().'asistente/index');
                break;
            default:
                $this->load->view("theme/header");
                $this->load->view("theme/menu");
                $this->load->view('login');
                $this->load->view("theme/footer");
                break;
        }
    }

    public function token()
    {
        $token = md5(uniqid(rand(),true));
        $this->session->set_userdata('token',$token);
        return $token;
    }

    public function new_user()
    {
        $this->load->library('form_validation','recaptcha');

        if($this->input->post('token') && $this->input->post('token') == $this->session->userdata('token'))
        {
            $this->form_validation->set_rules('username', 'Nombre de Usuario', 'required|trim|xss_clean|min_length[2]|max_length[15]');
            $this->form_validation->set_rules('password', 'Contraseña', 'required|trim|xss_clean|min_length[6]|max_length[15]');


                $this->form_validation->set_message('required', '%s requerido');
                $this->form_validation->set_message('min_length', 'El %s debe tener al menos %s caracteres.');
                $this->session->set_flashdata('error','Captcha requerido');

            if($this->form_validation->run() == FALSE)
            {
                $this->index();
            }else{
                $username = $this->input->post('username');
                $password = sha1($this->input->post('password'));
                $check_user = $this->login_model->login_user($username,$password);
                $captcha_answer = $this->input->post('g-recaptcha-response');
                $captcha = $this->recaptcha->verifyResponse($captcha_answer);
                if($check_user == TRUE && $captcha['success'])
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
                    $this->session->set_flashdata('error','Captcha requerido');
                    redirect('login');
        }
            }
        }else{
            redirect('login');

        }
    }

    public function salir()
    {
        $this->session->unset_userdata();
        $this->session->sess_destroy();
        redirect("login");
    }
}
