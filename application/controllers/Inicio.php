<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Inicio extends CI_Controller {

    public function __construct()
    {
        parent::__construct();
        $this->load->model('Inicio_model');
        $this->load->helper(array('url','form','security'));
        $this->load->library(array('form_validation','session','TCpdf'));
        $this->load->database('default');
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

    public function registros($show_error = false)
    {
        $data['error'] = $show_error;
        $this->load->view("theme/header");
        $this->load->view("theme/menu");
        $this->load->view('registro',$data);
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
        $data['estados']           = $this->Inicio_model->getEstados();
        $data['instituciones']     = $this->Inicio_model->getInstituciones();
        $data['gen']               = $this->Inicio_model->sexo();
        $data['esc']               = $this->Inicio_model->escolaridad();
        $data['nac']               = $this->Inicio_model->nacionalidad();
        $data['mesa']              = $this->Inicio_model->area_tematica();
        $this->load->view("theme/header");
        $this->load->view("theme/menu");
        $this->load->view('evaluador',$data);
        $this->load->view("theme/footer");
    }

    public function moderador()
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


    public function usuarios()
    {
        switch ($this->session->userdata('usuario')) {
            case '':
                $this->registros();
                break;
            case 'evaluador':
                redirect(base_url().'inicio/evaluador');
                break;
            case 'moderela':
                redirect(base_url().'inicio/moderela');
                break;
            case 'logistico':
                redirect(base_url().'inicio/logistico');
                break;
            default:
                $this->registros();
                break;
        }
    }



    function acceso() {
      // Create an instance of the user model
      $this->load->model('Inicio_model');
      $clave = $this->input->post('clave');
      $usuario = $this->input->post('usuario');
      $check_user = $this->Inicio_model->validate_user($clave,$usuario);
                if($check_user == TRUE)
                {
                    $data = array(
                    'is_logued_in'  =>      TRUE,
                    'usuario'       =>      $check_user->usuario
                    );
                    $this->session->set_userdata($data);
                    $this->usuarios();
                }else {
                    $this->registro();
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
            return '{ "nome": "No hay facultades disponibles" }';
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

public function bar(){
    $this->load->view('bar');
}

    function registro_ponente() {

        $token = $this->token();
        unset($_POST['password2']);
        unset($_POST['email2']);
        $pa = $_POST['password'];
        $user = $_POST['username'];
        $nombre = $_POST['nombre'];
        $paterno = $_POST['a_paterno'];
        $materno = $_POST['a_materno'];
        $_POST['password'] = do_hash($_POST['password']);

           $base = base_url();
           $query = $this->db->insert('usuarios', $_POST);
           $id_usuarios = $this->db->insert_id();
           $this->db->query("UPDATE usuarios SET username='{$_POST['username']}',  password='{$_POST['password']}', token='$token' WHERE id_usuarios='$id_usuarios'");


                //GENERADOR DE PDF EN CORREO
                $pdf = new TCPDF(PDF_PAGE_ORIENTATION, PDF_UNIT, PDF_PAGE_FORMAT, true, 'UTF-8', false);
                $pdf->AddPage();
                $nombres = $nombre .' '.$paterno .' '.$materno;
                $registro = "000".$id_usuarios."";
                $acceso = $_POST['puesto'];
                $fecha = date('d m Y');
                $status = $_POST['status'];

                $info = "Usuario: \n".$nombres."
                        \nFolio: \n".$registro."
                        \nAcceso: \n".$acceso."
                        \nRegistro: \n".$fecha."
                        \nStatus: \n".$status."
                        ";

                // get the current page break margin
                $bMargin = $pdf->getBreakMargin();
                // get current auto-page-break mode
                $auto_page_break = $pdf->getAutoPageBreak();
                // disable auto-page-break
                $pdf->SetAutoPageBreak(false, 0);
                // set bacground image
                $pdf->Image('assets/images/Ticket_ponente_12_congreso.jpg', 0, 0, 210, 297, '', '', '', false, 300, '', false, false, 0);
                // restore auto-page-break status
                $pdf->SetAutoPageBreak($auto_page_break, $bMargin);
                // set the starting point for the page content
                $pdf->setPageMark();
                // set style for barcode
                $style = array(
                    'border' => false,
                    'vpadding' => 'auto',
                    'hpadding' => 'auto',
                    'fgcolor' => array(70,70,72),
                    'bgcolor' => false, //array(255,255,255)
                    'module_width' => 1, // width of a single module in points
                    'module_height' => 1 // height of a single module in points
                );
                $pdf->SetFont('dejavusans', '', 14, '', true);
                $pdf->SetTextColor(70,70,72);
                $pdf->SetXY(145,72.5);
                $pdf->writeHTML($registro, true, false, true, false, '');
                $pdf->SetXY(39,95);
                $pdf->writeHTML($nombres, true, false, true, false, '');
                $pdf->write2DBarcode($info, 'QRCODE,H', 138, 91, 59, 52, $style, 'N');
                $pdflisto = $pdf->Output('','S');


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
            $mail->Debugoutput = 'html';
            $mail->IsHTML(true);
            $mail->CharSet = 'UTF-8';
            $datos['username'] = $user;
            $datos['password'] = $pa;
            $datos['nombre'] = $nombre;
            $datos['a_paterno'] = $paterno;
            $datos['a_materno'] = $materno;
            $mail->Subject = "Credenciales de Acceso XII CECTI";
            $mail->Body = $this->Enviar_correo->registro_ponentes($datos);
            $mail->addStringAttachment($pdflisto,"REGISTRO"."-".$id_usuarios.".pdf");
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
        }


    function registro_evaluador() {

        $token = $this->token();
        unset($_POST['password2']);
        unset($_POST['email2']);
        $pa = $_POST['password'];
        $_POST['password'] = do_hash($_POST['password']);

           $base = base_url();
           $query = $this->db->insert('usuarios', $_POST);
           $id_usuarios = $this->db->insert_id();
           $this->db->query("UPDATE usuarios SET username='{$_POST['username']}',  password='{$_POST['password']}', token='$token' WHERE id_usuarios='$id_usuarios'");

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
            $mail->Debugoutput = 'html';
            $mail->IsHTML(true);
            $mail->CharSet = 'UTF-8';
            $datos['username'] = $_POST['username'];
            $datos['password'] = $pa;
            $datos['nombre'] = $_POST['nombre'];
            $datos['a_paterno'] = $_POST['a_paterno'];
            $datos['a_materno'] = $_POST['a_materno'];
            $mail->Subject = "Credenciales de Acceso XII CECTI";
            $mail->Body = $this->Enviar_correo->registro_evaluador($datos);
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
        }



    function registro_moderela() {

        $token = $this->token();
        unset($_POST['password2']);
        unset($_POST['email2']);
        $pa = $_POST['password'];
        $_POST['password'] = do_hash($_POST['password']);

           $base = base_url();
           $query = $this->db->insert('usuarios', $_POST);
           $id_usuarios = $this->db->insert_id();
           $this->db->query("UPDATE usuarios SET username='{$_POST['username']}',  password='{$_POST['password']}', token='$token' WHERE id_usuarios='$id_usuarios'");

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
            $mail->Debugoutput = 'html';
            $mail->IsHTML(true);
            $mail->CharSet = 'UTF-8';
            $datos['username'] = $_POST['username'];
            $datos['password'] = $pa;
            $datos['nombre'] = $_POST['nombre'];
            $datos['a_paterno'] = $_POST['a_paterno'];
            $datos['a_materno'] = $_POST['a_materno'];
            $mail->Subject = "Credenciales de Acceso XII CECTI";
            $mail->Body = $this->Enviar_correo->registro_moderela($datos);
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
        }



    function registro_logistico() {

        $token = $this->token();
        unset($_POST['password2']);
        unset($_POST['email2']);
        $pa = $_POST['password'];
        $_POST['password'] = do_hash($_POST['password']);

           $base = base_url();
           $query = $this->db->insert('usuarios', $_POST);
           $id_usuarios = $this->db->insert_id();
           $this->db->query("UPDATE usuarios SET username='{$_POST['username']}',  password='{$_POST['password']}', token='$token' WHERE id_usuarios='$id_usuarios'");

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
            $mail->Debugoutput = 'html';
            $mail->IsHTML(true);
            $mail->CharSet = 'UTF-8';
            $datos['username'] = $_POST['username'];
            $datos['password'] = $pa;
            $datos['nombre'] = $_POST['nombre'];
            $datos['a_paterno'] = $_POST['a_paterno'];
            $datos['a_materno'] = $_POST['a_materno'];
            $mail->Subject = "Credenciales de Acceso XII CECTI";
            $mail->Body = $this->Enviar_correo->registro_logistico($datos);
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
        }


    function registro_asistente() {

        $token = $this->token();
        unset($_POST['password2']);
        unset($_POST['email2']);
        $pa = $_POST['password'];
        $_POST['password'] = do_hash($_POST['password']);

           $base = base_url();
           $query = $this->db->insert('usuarios', $_POST);
           $id_usuarios = $this->db->insert_id();
           $this->db->query("UPDATE usuarios SET username='{$_POST['username']}',  password='{$_POST['password']}', token='$token' WHERE id_usuarios='$id_usuarios'");

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
            $mail->Debugoutput = 'html';
            $mail->IsHTML(true);
            $mail->CharSet = 'UTF-8';
            $datos['username'] = $_POST['username'];
            $datos['password'] = $pa;
            $datos['nombre'] = $_POST['nombre'];
            $datos['a_paterno'] = $_POST['a_paterno'];
            $datos['a_materno'] = $_POST['a_materno'];
            $mail->Subject = "Credenciales de Acceso XII CECTI";
            $mail->Body = $this->Enviar_correo->registro_asistente($datos);
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
        }





}

?>