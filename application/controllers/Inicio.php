<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Inicio extends CI_Controller {

    public function __construct()
    {
        parent::__construct();
        $this->load->model(array('Inicio_model'));
        $this->load->helper(array('url','form','security'));
        $this->load->library(array('form_validation','session','pdf'));
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

    public function registros()
    {
        $this->load->view("theme/header");
        $this->load->view("theme/menu");
        $this->load->view('registro');
        $this->load->view("theme/footer");
    }

    public function registro()
    {
       $data['alert'] = $this->Inicio_model->alerta();
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
        $data['estados']           = $this->Inicio_model->getEstados();
        $data['instituciones']     = $this->Inicio_model->getInstituciones();
        $data['gen']               = $this->Inicio_model->sexo();
        $data['esc']               = $this->Inicio_model->escolaridad();
        $data['nac']               = $this->Inicio_model->nacionalidad();
        $data['mesa']              = $this->Inicio_model->area_tematica();
        $this->load->view("theme/header");
        $this->load->view("theme/menu");
        $this->load->view('moderador',$data);
        $this->load->view("theme/footer");
    }

    public function relator()
    {
        $data['estados']           = $this->Inicio_model->getEstados();
        $data['instituciones']     = $this->Inicio_model->getInstituciones();
        $data['gen']               = $this->Inicio_model->sexo();
        $data['esc']               = $this->Inicio_model->escolaridad();
        $data['nac']               = $this->Inicio_model->nacionalidad();
        $data['mesa']              = $this->Inicio_model->area_tematica();
        $this->load->view("theme/header");
        $this->load->view("theme/menu");
        $this->load->view('relator',$data);
        $this->load->view("theme/footer");
    }

    public function logistico()
    {
        $data['estados']           = $this->Inicio_model->getEstados();
        $data['instituciones']     = $this->Inicio_model->getInstituciones();
        $data['gen']               = $this->Inicio_model->sexo();
        $data['esc']               = $this->Inicio_model->escolaridad();
        $data['nac']               = $this->Inicio_model->nacionalidad();
        $data['apoyo']              = $this->Inicio_model->area_apoyo();
        $this->load->view("theme/header");
        $this->load->view("theme/menu");
        $this->load->view('logistico',$data);
        $this->load->view("theme/footer");
    }

    public function asistente()
    {
        $data['estados']           = $this->Inicio_model->getEstados();
        $data['instituciones']     = $this->Inicio_model->getInstituciones();
        $data['gen']               = $this->Inicio_model->sexo();
        $data['esc']               = $this->Inicio_model->escolaridad();
        $data['nac']               = $this->Inicio_model->nacionalidad();
        $this->load->view("theme/header");
        $this->load->view("theme/menu");
        $this->load->view('asistente',$data);
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
            case 'moderador':
                redirect(base_url().'inicio/moderador');
                break;
            case 'relator':
                redirect(base_url().'inicio/relator');
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
            return '{ "nombre": "No hay municipios disponibles" }';
        $arr_cidade = array();
        foreach ($cidades as $cidade) {
            $arr_cidade[] = '{"id_municipio":' . $cidade->id_municipio . ',"nombre":"' . $cidade->nombre_mun . '"}';
        }
        echo '[ ' . implode(",",$arr_cidade) . ']';
        return;
    }

    function getFacultad($id_institucion)
    {
        $this->load->model('Inicio_model');
        $facultad = $this->Inicio_model->getFacultad($id_institucion);
        if( empty ( $facultad ) )
            return '{ "nombre": "No hay facultades disponibles" }';
        $arr_facult = array();
        foreach ($facultad as $fac) {
            $arr_facult[] = '{"id_facultad":' . $fac->id_facultad . ',"nombre":"' . $fac->nombre_fac . '"}';
        }
        echo '[ ' . implode(",",$arr_facult) . ']';
        return;
    }

//---------------------------------
// EMAIL EXISTS (true or false)
//---------------------------------
function check_username_availablity()
{
    $this->load->model('Inicio_model');
    $get_result = $this->Inicio_model->check_username_availablity();

    if(!$get_result )
    echo '<span class="text-danger"><i class="fa fa-times" aria-hidden="true"></i>    Este nombre de usuario ya existe ¿Quieres volver a intentarlo?.</span>';
    else
    echo '<span class="text-success"><i class="fa fa-check" aria-hidden="true"></i>   ¡Disponible!</span>';
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


                $pdf->AddPage();
                // get the current page break margin
                $bMargin = $pdf->getBreakMargin();
                // get current auto-page-break mode
                $auto_page_break = $pdf->getAutoPageBreak();
                // disable auto-page-break
                $pdf->SetAutoPageBreak(false, 0);
                // set bacground image
                $pdf->Image('assets/images/correo_ponente.jpg', 0, 0, 210, 297, '', '', '', false, 300, '', false, false, 0);
                // restore auto-page-break status
                $pdf->SetAutoPageBreak($auto_page_break, $bMargin);
                // set the starting point for the page content
                $pdf->setPageMark();
                // set style for barcode
                $pdf->SetFont('dejavusans', '', 14, '', true);
                $pdf->SetTextColor(70,70,72);
                $pdf->SetXY(60,70);
                $pdf->writeHTML($nombres, true, false, true, false, '');
                $pdf->SetXY(89,77);
                $pdf->SetFont('dejavusans', '', 11, '', true);
                $pdf->Write(50, 'Líneamientos Generales', 'http://sicdet.org/congreso_ciencia/formatos/Lineamientos_congreso12.pdf');
                $pdf->SetFont('dejavusans', '', 12, '', true);
                $pdf->SetXY(40,174);
                $pdf->writeHTML($user, true, false, true, false, '');
                $pdf->SetXY(40,180);
                $pdf->writeHTML($pa, true, false, true, false, '');



                $pdf->AddPage();
                // get the current page break margin
                $bMargin = $pdf->getBreakMargin();
                // get current auto-page-break mode
                $auto_page_break = $pdf->getAutoPageBreak();
                // disable auto-page-break
                $pdf->SetAutoPageBreak(false, 0);
                // set bacground image
                $pdf->Image('assets/images/ticket_ponente_12_congreso.jpg', 0, 0, 210, 297, '', '', '', false, 300, '', false, false, 0);
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
                $pdflisto = $pdf->Output();

             
        }


    function registro_evaluador() {

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


                $pdf->AddPage();
                // get the current page break margin
                $bMargin = $pdf->getBreakMargin();
                // get current auto-page-break mode
                $auto_page_break = $pdf->getAutoPageBreak();
                // disable auto-page-break
                $pdf->SetAutoPageBreak(false, 0);
                // set bacground image
                $pdf->Image('assets/images/correo_evaluador.jpg', 0, 0, 210, 297, '', '', '', false, 300, '', false, false, 0);
                // restore auto-page-break status
                $pdf->SetAutoPageBreak($auto_page_break, $bMargin);
                // set the starting point for the page content
                $pdf->setPageMark();
                // set style for barcode
                $pdf->SetFont('dejavusans', '', 14, '', true);
                $pdf->SetTextColor(70,70,72);
                $pdf->SetXY(62,70);
                $pdf->writeHTML($nombres, true, false, true, false, '');
                $pdf->SetXY(89,77);
                $pdf->SetFont('dejavusans', '', 11, '', true);
                $pdf->Write(50, 'Líneamientos Generales', 'http://sicdet.org/congreso_ciencia/formatos/Lineamientos_congreso12.pdf');
                $pdf->SetFont('dejavusans', '', 12, '', true);
                $pdf->SetXY(40,174);
                $pdf->writeHTML($user, true, false, true, false, '');
                $pdf->SetXY(40,180);
                $pdf->writeHTML($pa, true, false, true, false, '');



                $pdf->AddPage();
                // get the current page break margin
                $bMargin = $pdf->getBreakMargin();
                // get current auto-page-break mode
                $auto_page_break = $pdf->getAutoPageBreak();
                // disable auto-page-break
                $pdf->SetAutoPageBreak(false, 0);
                // set bacground image
                $pdf->Image('assets/images/ticket_evaluador_12_congreso.jpg', 0, 0, 210, 297, '', '', '', false, 300, '', false, false, 0);
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
                $pdflisto = $pdf->Output();

             
        }

    function registro_moderador() {

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


                $pdf->AddPage();
                // get the current page break margin
                $bMargin = $pdf->getBreakMargin();
                // get current auto-page-break mode
                $auto_page_break = $pdf->getAutoPageBreak();
                // disable auto-page-break
                $pdf->SetAutoPageBreak(false, 0);
                // set bacground image
                $pdf->Image('assets/images/correo_moderador.jpg', 0, 0, 210, 297, '', '', '', false, 300, '', false, false, 0);
                // restore auto-page-break status
                $pdf->SetAutoPageBreak($auto_page_break, $bMargin);
                // set the starting point for the page content
                $pdf->setPageMark();
                // set style for barcode
                $pdf->SetFont('dejavusans', '', 14, '', true);
                $pdf->SetTextColor(70,70,72);
                $pdf->SetXY(65,70);
                $pdf->writeHTML($usuario, true, false, true, false, '');
                $pdf->SetXY(89,77);
                $pdf->SetFont('dejavusans', '', 11, '', true);
                $pdf->Write(50, 'Líneamientos Generales', 'http://sicdet.org/congreso_ciencia/formatos/Lineamientos_congreso12.pdf');
                $pdf->SetFont('dejavusans', '', 12, '', true);
                $pdf->SetXY(40,174);
                $pdf->writeHTML($username, true, false, true, false, '');
                $pdf->SetXY(40,180);
                $pdf->writeHTML($pass, true, false, true, false, '');



                $pdf->AddPage();
                // get the current page break margin
                $bMargin = $pdf->getBreakMargin();
                // get current auto-page-break mode
                $auto_page_break = $pdf->getAutoPageBreak();
                // disable auto-page-break
                $pdf->SetAutoPageBreak(false, 0);
                // set bacground image
                $pdf->Image('assets/images/ticket_moderador_12_congreso.jpg', 0, 0, 210, 297, '', '', '', false, 300, '', false, false, 0);
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
                $pdflisto = $pdf->Output();

             
        }


    function registro_relator() {

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


                $pdf->AddPage();
                // get the current page break margin
                $bMargin = $pdf->getBreakMargin();
                // get current auto-page-break mode
                $auto_page_break = $pdf->getAutoPageBreak();
                // disable auto-page-break
                $pdf->SetAutoPageBreak(false, 0);
                // set bacground image
                $pdf->Image('assets/images/correo_relator.jpg', 0, 0, 210, 297, '', '', '', false, 300, '', false, false, 0);
                // restore auto-page-break status
                $pdf->SetAutoPageBreak($auto_page_break, $bMargin);
                // set the starting point for the page content
                $pdf->setPageMark();
                // set style for barcode
                $pdf->SetFont('dejavusans', '', 14, '', true);
                $pdf->SetTextColor(70,70,72);
                $pdf->SetXY(55,70);
                $pdf->writeHTML($usuario, true, false, true, false, '');
                $pdf->SetXY(89,77);
                $pdf->SetFont('dejavusans', '', 11, '', true);
                $pdf->Write(50, 'Líneamientos Generales', 'http://sicdet.org/congreso_ciencia/formatos/Lineamientos_congreso12.pdf');
                $pdf->SetFont('dejavusans', '', 12, '', true);
                $pdf->SetXY(40,174);
                $pdf->writeHTML($username, true, false, true, false, '');
                $pdf->SetXY(40,180);
                $pdf->writeHTML($pass, true, false, true, false, '');



                $pdf->AddPage();
                // get the current page break margin
                $bMargin = $pdf->getBreakMargin();
                // get current auto-page-break mode
                $auto_page_break = $pdf->getAutoPageBreak();
                // disable auto-page-break
                $pdf->SetAutoPageBreak(false, 0);
                // set bacground image
                $pdf->Image('assets/images/ticket_relator_12_congreso.jpg', 0, 0, 210, 297, '', '', '', false, 300, '', false, false, 0);
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
                $pdflisto = $pdf->Output();

             
        }

    function registro_logistico() {

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


                $pdf->AddPage();
                // get the current page break margin
                $bMargin = $pdf->getBreakMargin();
                // get current auto-page-break mode
                $auto_page_break = $pdf->getAutoPageBreak();
                // disable auto-page-break
                $pdf->SetAutoPageBreak(false, 0);
                // set bacground image
                $pdf->Image('assets/images/correo_apoyo.jpg', 0, 0, 210, 297, '', '', '', false, 300, '', false, false, 0);
                // restore auto-page-break status
                $pdf->SetAutoPageBreak($auto_page_break, $bMargin);
                // set the starting point for the page content
                $pdf->setPageMark();
                // set style for barcode
                $pdf->SetFont('dejavusans', '', 14, '', true);
                $pdf->SetTextColor(70,70,72);
                $pdf->SetXY(55,70);
                $pdf->writeHTML($usuario, true, false, true, false, '');
                $pdf->SetXY(89,77);
                $pdf->SetFont('dejavusans', '', 11, '', true);
                $pdf->Write(50, 'Líneamientos Generales', 'http://sicdet.org/congreso_ciencia/formatos/Lineamientos_congreso12.pdf');
                $pdf->SetFont('dejavusans', '', 12, '', true);
                $pdf->SetXY(40,174);
                $pdf->writeHTML($username, true, false, true, false, '');
                $pdf->SetXY(40,180);
                $pdf->writeHTML($pass, true, false, true, false, '');



                $pdf->AddPage();
                // get the current page break margin
                $bMargin = $pdf->getBreakMargin();
                // get current auto-page-break mode
                $auto_page_break = $pdf->getAutoPageBreak();
                // disable auto-page-break
                $pdf->SetAutoPageBreak(false, 0);
                // set bacground image
                $pdf->Image('assets/images/ticket_apoyo_12_congreso.jpg', 0, 0, 210, 297, '', '', '', false, 300, '', false, false, 0);
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
                $pdflisto = $pdf->Output();

             
        }

    function registro_asistente() {

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


                $pdf->AddPage();
                // get the current page break margin
                $bMargin = $pdf->getBreakMargin();
                // get current auto-page-break mode
                $auto_page_break = $pdf->getAutoPageBreak();
                // disable auto-page-break
                $pdf->SetAutoPageBreak(false, 0);
                // set bacground image
                $pdf->Image('assets/images/correo_asistente.jpg', 0, 0, 210, 297, '', '', '', false, 300, '', false, false, 0);
                // restore auto-page-break status
                $pdf->SetAutoPageBreak($auto_page_break, $bMargin);
                // set the starting point for the page content
                $pdf->setPageMark();
                // set style for barcode
                $pdf->SetFont('dejavusans', '', 14, '', true);
                $pdf->SetTextColor(70,70,72);
                $pdf->SetXY(42,70);
                $pdf->writeHTML($nombres, true, false, true, false, '');
                $pdf->SetXY(89,77);
                $pdf->SetFont('dejavusans', '', 11, '', true);
                $pdf->Write(50, 'Líneamientos Generales', 'http://sicdet.org/congreso_ciencia/formatos/Lineamientos_congreso12.pdf');
                $pdf->SetFont('dejavusans', '', 12, '', true);
                $pdf->SetXY(40,174);
                $pdf->writeHTML($user, true, false, true, false, '');
                $pdf->SetXY(40,180);
                $pdf->writeHTML($pa, true, false, true, false, '');



                $pdf->AddPage();
                // get the current page break margin
                $bMargin = $pdf->getBreakMargin();
                // get current auto-page-break mode
                $auto_page_break = $pdf->getAutoPageBreak();
                // disable auto-page-break
                $pdf->SetAutoPageBreak(false, 0);
                // set bacground image
                $pdf->Image('assets/images/ticket_asistente_12_congreso.jpg', 0, 0, 210, 297, '', '', '', false, 300, '', false, false, 0);
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
                $pdflisto = $pdf->Output();
        }


}

?>