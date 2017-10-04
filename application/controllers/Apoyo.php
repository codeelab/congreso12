<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

/**
 * This controller can be accessed
 * for encentro group only
 */
class Apoyo extends MY_Controller {

    public function __construct()
    {
        parent::__construct();
        $this->load->model('Apoyo_model');
        $this->load->library(array('session','user_agent','form_validation'));
        $this->load->helper('url','form','security');
    }

    public function index()
    {
        $this->load->view("theme/header");
        $this->load->view("theme/menu");
        $this->load->view("apoyo/index");
        $this->load->view("theme/footer");
    }



//----------------------------------------------------------------------------------------
//
//  SECCIÓN DE IMPRESIOÓN DE TICKET AL CONGRESO
//
//----------------------------------------------------------------------------------------


    public function listado_ticket()
    {
        $data['listado'] = $this->Apoyo_model->listado_tickets();
        $this->load->view("theme/header");
        $this->load->view("theme/menu");
        $this->load->view("apoyo/ticket",$data);
        $this->load->view("theme/footer");
    }

    public function ticket_ponente()
    {
        $data['pdf'] = $this->Apoyo_model->pdf($this->uri->segment(3));
        $this->load->view("apoyo/tickets/ponente",$data);
    }

    public function ticket_evaluador()
    {
        $data['pdf'] = $this->Apoyo_model->pdf($this->uri->segment(3));
        $this->load->view("apoyo/tickets/evaluador",$data);
    }

    public function ticket_encuentro()
    {
        $data['pdf'] = $this->Apoyo_model->pdf($this->uri->segment(3));
        $this->load->view("apoyo/tickets/encuentro",$data);
    }

    public function ticket_moderador()
    {
        $data['pdf'] = $this->Apoyo_model->pdf($this->uri->segment(3));
        $this->load->view("apoyo/tickets/moderador",$data);
    }

    public function ticket_relator()
    {
        $data['pdf'] = $this->Apoyo_model->pdf($this->uri->segment(3));
        $this->load->view("apoyo/tickets/relator",$data);
    }

    public function ticket_asistente()
    {
        $data['pdf'] = $this->Apoyo_model->pdf($this->uri->segment(3));
        $this->load->view("apoyo/tickets/asistente",$data);
    }

    public function ticket_logistico()
    {
        $data['pdf'] = $this->Apoyo_model->pdf($this->uri->segment(3));
        $this->load->view("apoyo/tickets/logistico",$data);
    }


//----------------------------------------------------------------------------------------
//
//  SECCIÓN DE REGISTRO AL CONGRESO
//
//----------------------------------------------------------------------------------------

    public function registro()
    {
        $data['estados']           = $this->Apoyo_model->getEstados();
        $data['instituciones']     = $this->Apoyo_model->getInstituciones();
        $data['gen']               = $this->Apoyo_model->sexo();
        $data['esc']               = $this->Apoyo_model->escolaridad();
        $data['nac']               = $this->Apoyo_model->nacionalidad();
        $this->load->view("theme/header");
        $this->load->view("theme/menu");
        $this->load->view('apoyo/asistente',$data);
        $this->load->view("theme/footer");
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


//----------------------------------------------------------------------------------------
//
//  SECCIÓN DE CORRECCIÓN DE DATOS A USUARIOS DEL CONGRESO
//
//----------------------------------------------------------------------------------------

    public function correccion()
    {
        $data['listado'] = $this->Apoyo_model->listado_tickets();
        $this->load->view("theme/header");
        $this->load->view("theme/menu");
        $this->load->view("apoyo/correccion",$data);
        $this->load->view("theme/footer");
    }


    public function mod()
    {
        $id_usuarios               = $this->uri->segment(3);
        $data['mods']              = $this->Apoyo_model->ponencia($id_usuarios);
        $data['mod_user']          = $this->Apoyo_model->usuario($id_usuarios);
        $this->load->view("theme/header");
        $this->load->view("theme/menu");
        $this->load->view("apoyo/editar",$data);
        $this->load->view("theme/footer");
    }


    public function mod_user()
    {
        $id_usuarios               = $this->uri->segment(3);
        $data['mod_user']          = $this->Apoyo_model->modificacion_user($id_usuarios);
        $this->load->view("theme/header");
        $this->load->view("theme/menu");
        $this->load->view("apoyo/usuario",$data);
        $this->load->view("theme/footer");
    }

    public function mod_ponencia()
    {
        $id_usuarios               = $this->uri->segment(3);
        $data['mod']               = $this->Apoyo_model->modificacion($id_usuarios);
        $this->load->view("theme/header");
        $this->load->view("theme/menu");
        $this->load->view("apoyo/ponencia",$data);
        $this->load->view("theme/footer");
    }



    public function actualizar_usuario()
    {
        $id         = $this->input->post('id_usuarios');
        $nombre     = $this->input->post('nombre');
        $paterno    = $this->input->post('a_paterno');
        $materno    = $this->input->post('a_materno');

        $this->db->query("
            UPDATE usuarios SET
            nombre = '$nombre',
            a_paterno = '$paterno',
            a_materno = '$materno'
            WHERE id_usuarios = '$id'
        ");

        redirect('apoyo/mod/'.$id);

    }


    public function actualizar_ponencia()
    {
        $id         = $this->input->post('usuario_id');
        $autor      = $this->input->post('autor');
        $coautor    = $this->input->post('coautor');
        $asesor     = $this->input->post('asesor');
        $titulo     = $this->input->post('titulo');

        $this->db->query("
            UPDATE ponencias SET
            autor       = '$nombre',
            coautores   = '$paterno',
            asesor      = '$materno',
            titulo      = '$titulo'
            WHERE id_ponencias = '$id'
        ");

        redirect('apoyo/mod/'.$id);

    }






    private function token()
    {
        return sha1(uniqid(rand(),true));
    }

    function newregistro()
    {

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
        $listo = $pdf->Output('Folio-000'.$id_usuarios.'.pdf','D');


    }


function check_username_availablity()
{
    $this->load->model('Inicio_model');
    $get_result = $this->Inicio_model->check_username_availablity();

    if(!$get_result )
    echo '<span class="text-danger"><i class="fa fa-times" aria-hidden="true"></i>    Este nombre de usuario ya existe ¿Quieres volver a intentarlo?.</span>';
    else
    echo '<span class="text-success"><i class="fa fa-check" aria-hidden="true"></i>   ¡Disponible!</span>';
}




}//CIERRE DE CONTROLADOR