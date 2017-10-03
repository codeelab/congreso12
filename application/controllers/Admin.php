<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Admin extends MY_Controller {

    public function __construct()
    {
        parent::__construct();
        $this->load->model(array('Admin_model','Excel_model','Pdf_model'));
        $this->load->library(array('session','form_validation','pdf','highcharts','user_agent'));
        $this->load->helper('url','form','security','export_excel');
        $this->load->database('default');
    }

	public function index()
	{
		$this->load->view('theme/header');
        $this->load->view('theme/menu');
		$this->load->view('admin/index');
		$this->load->view('theme/footer');
	}


 //=============================================================================
 // CARPETA DE FUNCIONES APARIENCIA
 //=============================================================================
    public function apariencia()
    {
        $this->load->view('theme/header');
        $this->load->view('theme/menu');
        $this->load->view('admin/apariencia/index');
        $this->load->view('theme/footer');
    }

 //-----------------------------------------------------------------------------
 // ADMIN/FUNCIONES
 // LISTADO DE LOS MENUS
 // FUNCIÓN AGREGAR Y ACTUALIZAR
 //-----------------------------------------------------------------------------
    public function menus()
    {
        $data['listado'] = $this->Admin_model->Getmenu();
        $this->load->view('theme/header');
        $this->load->view('theme/menu');
        $this->load->view('admin/apariencia/menu',$data);
        $this->load->view('theme/footer');
    }

    public function registro_menu()
    {
        if($this->input->post('guardar'))
        {
            //hacemos las comprobaciones que deseemos en nuestro formulario
            $this->form_validation->set_rules('nombre_menu','Nombre','trim|required|xss_clean');
            $this->form_validation->set_rules('url','URL','required|trim|xss_clean|prep_url');
            //validamos que se introduzcan los campos requeridos con la función de ci required
            $this->form_validation->set_message('required', 'Campo %s es obligatorio');

            $this->form_validation->set_error_delimiters('<div class="alert alert-danger" role="alert">', '</div>');

            if (!$this->form_validation->run())
            {
                //si no pasamos la validación volvemos al formulario mostrando los errores
                $this->menus();
            }
            //si pasamos la validación correctamente pasamos a hacer la inserción en la base de datos
            else
            {
                $query = $this->db->query('SELECT orden FROM menu ORDER BY orden DESC LIMIT 1');
                foreach($query->result() as $row){
                       $ord = $row->orden;
                       if ($ord === $ord) {
                           $ord++;
                    }
                }

                $estado = 'Activo';
                $nombre_menu = $this->input->post('nombre_menu');
                $url = $this->input->post('url');
                //ahora procesamos los datos hacía el modelo que debemos crear
                $nueva_insercion = $this->Admin_model->nuevo_menu(
                    $nombre_menu,
                    $url,
                    $ord,
                    $estado
                );
                redirect(base_url("admin/menus"), "refresh");
            }
        }
    }

    public function editar_menu()
    {
        $data['segmento'] = $this->uri->segment(3);
        $this->load->view('theme/header');
        $this->load->view('theme/menu');
        if (!$data['segmento']) {
           $data['mod'] = $this->Admin_model->lista_menu();
        }else{
            $data['mod'] = $this->Admin_model->lista_menu($data['segmento']);
        }
        $this->load->view('admin/apariencia/editar_menu',$data);
        $this->load->view('theme/footer');
    }


    public function actualizar($id_menu)
    {
        $id_menu = $this->input->post('id_menu');
            $data = array(
                'nombre_menu'   => $this->input->post('nombre_menu'),
                'url'           => $this->input->post('url'),
                'orden'         => $this->input->post('orden')
            );
            //print_r($data);
            $this->db->where('id_menu', $id_menu);
            $this->db->update('menu', $data);
            $this->menus();
    }


 //=============================================================================
 // CARPETA DE FUNCIONES USUARIOS
 //=============================================================================

    public function usuarios()
    {
        $this->load->view('theme/header');
        $this->load->view('theme/menu');
        $this->load->view('admin/usuarios/index');
        $this->load->view('theme/footer');
    }

 //-----------------------------------------------------------------------------
 // ADMIN/USUARIOS/TOTAL_USUARIOS
 //-----------------------------------------------------------------------------

    public function total_usuarios()
    {
        $data['listado'] = $this->Admin_model->getUsuarios();
        $this->load->view('theme/header');
        $this->load->view('theme/menu');
        $this->load->view('admin/usuarios/total',$data);
        $this->load->view('theme/footer');
    }

 //-----------------------------------------------------------------------------
 // ADMIN/USUARIOS/TOTAL_USUARIOS_PONENTES
 //-----------------------------------------------------------------------------

    public function total_usuarios_ponentes()
    {
        $data['listado'] = $this->Admin_model->getUsuariosP();
        $this->load->view('theme/header');
        $this->load->view('theme/menu');
        $this->load->view('admin/usuarios/total',$data);
        $this->load->view('theme/footer');
    }

 //-----------------------------------------------------------------------------
 // ADMIN/USUARIOS/TOTAL_USUARIOS_EVALUADORES
 //-----------------------------------------------------------------------------

    public function total_usuarios_evaluadores()
    {
        $data['listado'] = $this->Admin_model->getUsuariosE();
        $this->load->view('theme/header');
        $this->load->view('theme/menu');
        $this->load->view('admin/usuarios/total',$data);
        $this->load->view('theme/footer');
    }

 //-----------------------------------------------------------------------------
 // ADMIN/USUARIOS/TOTAL_USUARIOS_MODERADORES
 //-----------------------------------------------------------------------------

    public function total_usuarios_moderadores()
    {
        $data['listado'] = $this->Admin_model->getUsuariosM();
        $this->load->view('theme/header');
        $this->load->view('theme/menu');
        $this->load->view('admin/usuarios/total',$data);
        $this->load->view('theme/footer');
    }

 //-----------------------------------------------------------------------------
 // ADMIN/USUARIOS/TOTAL_USUARIOS_RELATORES
 //-----------------------------------------------------------------------------

    public function total_usuarios_relatores()
    {
        $data['listado'] = $this->Admin_model->getUsuariosR();
        $this->load->view('theme/header');
        $this->load->view('theme/menu');
        $this->load->view('admin/usuarios/total',$data);
        $this->load->view('theme/footer');
    }

 //-----------------------------------------------------------------------------
 // ADMIN/USUARIOS/TOTAL_USUARIOS_LOGISTIO
 //-----------------------------------------------------------------------------

    public function total_usuarios_logistico()
    {
        $data['listado'] = $this->Admin_model->getUsuariosL();
        $this->load->view('theme/header');
        $this->load->view('theme/menu');
        $this->load->view('admin/usuarios/total',$data);
        $this->load->view('theme/footer');
    }

 //-----------------------------------------------------------------------------
 // ADMIN/USUARIOS/TOTAL_USUARIOS_RELATORES
 //-----------------------------------------------------------------------------

    public function total_usuarios_asistentes()
    {
        $data['listado'] = $this->Admin_model->getUsuariosA();
        $this->load->view('theme/header');
        $this->load->view('theme/menu');
        $this->load->view('admin/usuarios/total',$data);
        $this->load->view('theme/footer');
    }


 //-----------------------------------------------------------------------------
 // ADMIN/USUARIOS/VER
 //-----------------------------------------------------------------------------

    public function ver()
    {
        $id = $this->uri->segment(3);
        $data['listado'] = $this->Admin_model->getUsuariosTotal($id);
        $this->load->view('theme/header');
        $this->load->view('theme/menu');
        $this->load->view('admin/usuarios/ver',$data);
        $this->load->view('theme/footer');
    }


 //-----------------------------------------------------------------------------
 // ADMIN/USUARIOS/TOTAL_USUARIOS
 // EXCEL - PONENTE - MODERADOR - RELATOR - ASISTENTE - LOGISTICO - EVALUADOR
 //-----------------------------------------------------------------------------

 //TODOS LOS REGISTROS
 public function tExcel()
 {
  $this->load->model("Admin_model");
  $this->load->library("excel");
  $object = new PHPExcel();

  $object->setActiveSheetIndex(0);

  $table_columns = array("Folio", "Nombre", "Apellido Paterno", "Apellido Materno", "Edad", "Genero", "Nacionalidad", "Estado", "Municipio", "Email", "Institución", "Facultad", "Nivel Academico", "Mailing", "Puesto", "nombre_tem", "nombre_trabajo", "nombre_area_apoyo","Status");

  $column = 0;

  foreach($table_columns as $field)
  {
   $object->getActiveSheet()->setCellValueByColumnAndRow($column, 1, $field);
   $column++;
  }

  $employee_data = $this->Excel_model->getUsuariosExcelTodos();

  $excel_row = 2;

  foreach($employee_data as $row)
  {
   $object->getActiveSheet()->setCellValueByColumnAndRow(0, $excel_row, $row->id_usuarios);
   $object->getActiveSheet()->setCellValueByColumnAndRow(1, $excel_row, $row->nombre);
   $object->getActiveSheet()->setCellValueByColumnAndRow(2, $excel_row, $row->a_paterno);
   $object->getActiveSheet()->setCellValueByColumnAndRow(3, $excel_row, $row->a_materno);
   $object->getActiveSheet()->setCellValueByColumnAndRow(4, $excel_row, $row->edad);
   $object->getActiveSheet()->setCellValueByColumnAndRow(5, $excel_row, $row->nombre_gen);
   $object->getActiveSheet()->setCellValueByColumnAndRow(6, $excel_row, $row->nombre_nac);
   $object->getActiveSheet()->setCellValueByColumnAndRow(7, $excel_row, $row->nombre_est);
   $object->getActiveSheet()->setCellValueByColumnAndRow(8, $excel_row, $row->nombre_mun);
   $object->getActiveSheet()->setCellValueByColumnAndRow(9, $excel_row, $row->email);
   $object->getActiveSheet()->setCellValueByColumnAndRow(10, $excel_row, $row->nombre_ins);
   $object->getActiveSheet()->setCellValueByColumnAndRow(11, $excel_row, $row->nombre_fac);
   $object->getActiveSheet()->setCellValueByColumnAndRow(12, $excel_row, $row->nombre_aca);
   $object->getActiveSheet()->setCellValueByColumnAndRow(13, $excel_row, $row->mailing);
   $object->getActiveSheet()->setCellValueByColumnAndRow(14, $excel_row, $row->nombre_puesto);
   $object->getActiveSheet()->setCellValueByColumnAndRow(15, $excel_row, $row->nombre_tem);
   $object->getActiveSheet()->setCellValueByColumnAndRow(16, $excel_row, $row->nombre_trabajo);
   $object->getActiveSheet()->setCellValueByColumnAndRow(17, $excel_row, $row->nombre_area_apoyo);
   $object->getActiveSheet()->setCellValueByColumnAndRow(18, $excel_row, $row->status);
   $excel_row++;
  }

  $object_writer = PHPExcel_IOFactory::createWriter($object, 'Excel5');
  header('Content-Type: application/vnd.ms-excel');
  header('Content-Disposition: attachment;filename="Registro_Total_Usuarios_Congreso.xls"');
  $object_writer->save('php://output');
 }

    //PONENTE
 function pExcel()
 {
  $this->load->model("Excel_model");
  $this->load->library("excel");
  $object = new PHPExcel();

  $object->setActiveSheetIndex(0);

  $table_columns = array("Folio", "Nombre", "Apellido Paterno", "Apellido Materno", "Edad", "Genero", "Nacionalidad", "Estado", "Municipio", "Email", "Institución", "Facultad", "Nivel Academico", "Mailing", "Puesto", "Status");

  $column = 0;

  foreach($table_columns as $field)
  {
   $object->getActiveSheet()->setCellValueByColumnAndRow($column, 1, $field);
   $column++;
  }

  $employee_data = $this->Excel_model->getUsuariosExcelPonentes();

  $excel_row = 2;

  foreach($employee_data as $row)
  {
   $object->getActiveSheet()->setCellValueByColumnAndRow(0, $excel_row, $row->id_usuarios);
   $object->getActiveSheet()->setCellValueByColumnAndRow(1, $excel_row, $row->nombre);
   $object->getActiveSheet()->setCellValueByColumnAndRow(2, $excel_row, $row->a_paterno);
   $object->getActiveSheet()->setCellValueByColumnAndRow(3, $excel_row, $row->a_materno);
   $object->getActiveSheet()->setCellValueByColumnAndRow(4, $excel_row, $row->edad);
   $object->getActiveSheet()->setCellValueByColumnAndRow(5, $excel_row, $row->nombre_gen);
   $object->getActiveSheet()->setCellValueByColumnAndRow(6, $excel_row, $row->nombre_nac);
   $object->getActiveSheet()->setCellValueByColumnAndRow(7, $excel_row, $row->nombre_est);
   $object->getActiveSheet()->setCellValueByColumnAndRow(8, $excel_row, $row->nombre_mun);
   $object->getActiveSheet()->setCellValueByColumnAndRow(9, $excel_row, $row->email);
   $object->getActiveSheet()->setCellValueByColumnAndRow(10, $excel_row, $row->nombre_ins);
   $object->getActiveSheet()->setCellValueByColumnAndRow(11, $excel_row, $row->nombre_fac);
   $object->getActiveSheet()->setCellValueByColumnAndRow(12, $excel_row, $row->nombre_aca);
   $object->getActiveSheet()->setCellValueByColumnAndRow(13, $excel_row, $row->mailing);
   $object->getActiveSheet()->setCellValueByColumnAndRow(14, $excel_row, $row->nombre_puesto);
   $object->getActiveSheet()->setCellValueByColumnAndRow(15, $excel_row, $row->status);
   $excel_row++;
  }

  $object_writer = PHPExcel_IOFactory::createWriter($object, 'Excel5');
  header('Content-Type: application/vnd.ms-excel');
  header('Content-Disposition: attachment;filename="Registro_Total_Usuarios_Ponentes_Congreso.xls"');
  $object_writer->save('php://output');
 }

 //MODERADOR
 public function mExcel()
 {
  $this->load->model("Excel_model");
  $this->load->library("excel");
  $object = new PHPExcel();

  $object->setActiveSheetIndex(0);

  $table_columns = array("Folio", "Nombre", "Apellido Paterno", "Apellido Materno", "Edad", "Genero", "Nacionalidad", "Estado", "Municipio", "Email", "Institución", "Facultad", "Nivel Academico", "Mailing", "Puesto", "nombre_tem", "nombre_trabajo", "nombre_area_apoyo","Status");

  $column = 0;

  foreach($table_columns as $field)
  {
   $object->getActiveSheet()->setCellValueByColumnAndRow($column, 1, $field);
   $column++;
  }

  $employee_data = $this->Excel_model->getUsuariosExcelModerador();

  $excel_row = 2;

  foreach($employee_data as $row)
  {
   $object->getActiveSheet()->setCellValueByColumnAndRow(0, $excel_row, $row->id_usuarios);
   $object->getActiveSheet()->setCellValueByColumnAndRow(1, $excel_row, $row->nombre);
   $object->getActiveSheet()->setCellValueByColumnAndRow(2, $excel_row, $row->a_paterno);
   $object->getActiveSheet()->setCellValueByColumnAndRow(3, $excel_row, $row->a_materno);
   $object->getActiveSheet()->setCellValueByColumnAndRow(4, $excel_row, $row->edad);
   $object->getActiveSheet()->setCellValueByColumnAndRow(5, $excel_row, $row->nombre_gen);
   $object->getActiveSheet()->setCellValueByColumnAndRow(6, $excel_row, $row->nombre_nac);
   $object->getActiveSheet()->setCellValueByColumnAndRow(7, $excel_row, $row->nombre_est);
   $object->getActiveSheet()->setCellValueByColumnAndRow(8, $excel_row, $row->nombre_mun);
   $object->getActiveSheet()->setCellValueByColumnAndRow(9, $excel_row, $row->email);
   $object->getActiveSheet()->setCellValueByColumnAndRow(10, $excel_row, $row->nombre_ins);
   $object->getActiveSheet()->setCellValueByColumnAndRow(11, $excel_row, $row->nombre_fac);
   $object->getActiveSheet()->setCellValueByColumnAndRow(12, $excel_row, $row->nombre_aca);
   $object->getActiveSheet()->setCellValueByColumnAndRow(13, $excel_row, $row->mailing);
   $object->getActiveSheet()->setCellValueByColumnAndRow(14, $excel_row, $row->nombre_puesto);
   $object->getActiveSheet()->setCellValueByColumnAndRow(15, $excel_row, $row->nombre_tem);
   $object->getActiveSheet()->setCellValueByColumnAndRow(16, $excel_row, $row->nombre_trabajo);
   $object->getActiveSheet()->setCellValueByColumnAndRow(17, $excel_row, $row->nombre_area_apoyo);
   $object->getActiveSheet()->setCellValueByColumnAndRow(18, $excel_row, $row->status);
   $excel_row++;
  }

  $object_writer = PHPExcel_IOFactory::createWriter($object, 'Excel5');
  header('Content-Type: application/vnd.ms-excel');
  header('Content-Disposition: attachment;filename="Registro_Total_Usuarios_Moderadores_Congreso.xls"');
  $object_writer->save('php://output');
 }

 //RELATOR
 public function rExcel()
 {
  $this->load->model("Excel_model");
  $this->load->library("excel");
  $object = new PHPExcel();

  $object->setActiveSheetIndex(0);

  $table_columns = array("Folio", "Nombre", "Apellido Paterno", "Apellido Materno", "Edad", "Genero", "Nacionalidad", "Estado", "Municipio", "Email", "Institución", "Facultad", "Nivel Academico", "Mailing", "Puesto", "nombre_tem", "nombre_trabajo", "nombre_area_apoyo","Status");

  $column = 0;

  foreach($table_columns as $field)
  {
   $object->getActiveSheet()->setCellValueByColumnAndRow($column, 1, $field);
   $column++;
  }

  $employee_data = $this->Excel_model->getUsuariosExcelRelator();

  $excel_row = 2;

  foreach($employee_data as $row)
  {
   $object->getActiveSheet()->setCellValueByColumnAndRow(0, $excel_row, $row->id_usuarios);
   $object->getActiveSheet()->setCellValueByColumnAndRow(1, $excel_row, $row->nombre);
   $object->getActiveSheet()->setCellValueByColumnAndRow(2, $excel_row, $row->a_paterno);
   $object->getActiveSheet()->setCellValueByColumnAndRow(3, $excel_row, $row->a_materno);
   $object->getActiveSheet()->setCellValueByColumnAndRow(4, $excel_row, $row->edad);
   $object->getActiveSheet()->setCellValueByColumnAndRow(5, $excel_row, $row->nombre_gen);
   $object->getActiveSheet()->setCellValueByColumnAndRow(6, $excel_row, $row->nombre_nac);
   $object->getActiveSheet()->setCellValueByColumnAndRow(7, $excel_row, $row->nombre_est);
   $object->getActiveSheet()->setCellValueByColumnAndRow(8, $excel_row, $row->nombre_mun);
   $object->getActiveSheet()->setCellValueByColumnAndRow(9, $excel_row, $row->email);
   $object->getActiveSheet()->setCellValueByColumnAndRow(10, $excel_row, $row->nombre_ins);
   $object->getActiveSheet()->setCellValueByColumnAndRow(11, $excel_row, $row->nombre_fac);
   $object->getActiveSheet()->setCellValueByColumnAndRow(12, $excel_row, $row->nombre_aca);
   $object->getActiveSheet()->setCellValueByColumnAndRow(13, $excel_row, $row->mailing);
   $object->getActiveSheet()->setCellValueByColumnAndRow(14, $excel_row, $row->nombre_puesto);
   $object->getActiveSheet()->setCellValueByColumnAndRow(15, $excel_row, $row->nombre_tem);
   $object->getActiveSheet()->setCellValueByColumnAndRow(16, $excel_row, $row->nombre_trabajo);
   $object->getActiveSheet()->setCellValueByColumnAndRow(17, $excel_row, $row->nombre_area_apoyo);
   $object->getActiveSheet()->setCellValueByColumnAndRow(18, $excel_row, $row->status);
   $excel_row++;
  }

  $object_writer = PHPExcel_IOFactory::createWriter($object, 'Excel5');
  header('Content-Type: application/vnd.ms-excel');
  header('Content-Disposition: attachment;filename="Registro_Total_Usuarios_Relatores_Congreso.xls"');
  $object_writer->save('php://output');
 }


  //LOGISTICO
  public function lExcel()
 {
  $this->load->model("Excel_model");
  $this->load->library("excel");
  $object = new PHPExcel();

  $object->setActiveSheetIndex(0);

  $table_columns = array("Folio", "Nombre", "Apellido Paterno", "Apellido Materno", "Edad", "Genero", "Nacionalidad", "Estado", "Municipio", "Email", "Institución", "Facultad", "Nivel Academico", "Mailing", "Puesto", "Status");

  $column = 0;

  foreach($table_columns as $field)
  {
   $object->getActiveSheet()->setCellValueByColumnAndRow($column, 1, $field);
   $column++;
  }

  $employee_data = $this->Excel_model->getUsuariosExcelLogistico();

  $excel_row = 2;

  foreach($employee_data as $row)
  {
   $object->getActiveSheet()->setCellValueByColumnAndRow(0, $excel_row, $row->id_usuarios);
   $object->getActiveSheet()->setCellValueByColumnAndRow(1, $excel_row, $row->nombre);
   $object->getActiveSheet()->setCellValueByColumnAndRow(2, $excel_row, $row->a_paterno);
   $object->getActiveSheet()->setCellValueByColumnAndRow(3, $excel_row, $row->a_materno);
   $object->getActiveSheet()->setCellValueByColumnAndRow(4, $excel_row, $row->edad);
   $object->getActiveSheet()->setCellValueByColumnAndRow(5, $excel_row, $row->nombre_gen);
   $object->getActiveSheet()->setCellValueByColumnAndRow(6, $excel_row, $row->nombre_nac);
   $object->getActiveSheet()->setCellValueByColumnAndRow(7, $excel_row, $row->nombre_est);
   $object->getActiveSheet()->setCellValueByColumnAndRow(8, $excel_row, $row->nombre_mun);
   $object->getActiveSheet()->setCellValueByColumnAndRow(9, $excel_row, $row->email);
   $object->getActiveSheet()->setCellValueByColumnAndRow(10, $excel_row, $row->nombre_ins);
   $object->getActiveSheet()->setCellValueByColumnAndRow(11, $excel_row, $row->nombre_fac);
   $object->getActiveSheet()->setCellValueByColumnAndRow(12, $excel_row, $row->nombre_aca);
   $object->getActiveSheet()->setCellValueByColumnAndRow(13, $excel_row, $row->mailing);
   $object->getActiveSheet()->setCellValueByColumnAndRow(14, $excel_row, $row->nombre_puesto);
   $object->getActiveSheet()->setCellValueByColumnAndRow(15, $excel_row, $row->status);
   $excel_row++;
  }
  $object_writer = PHPExcel_IOFactory::createWriter($object, 'Excel5');
  header('Content-Type: application/vnd.ms-excel');
  header('Content-Disposition: attachment;filename="Registro_Total_Usuarios_Logistico_Congreso.xls"');
  $object_writer->save('php://output');
 }

 //EVALUADOR
 public function eExcel()
 {
  $this->load->model("Excel_model");
  $this->load->library("excel");
  $object = new PHPExcel();

  $object->setActiveSheetIndex(0);

  $table_columns = array("Folio", "Nombre", "Apellido Paterno", "Apellido Materno", "Edad", "Genero", "Nacionalidad", "Estado", "Municipio", "Email", "Institución", "Facultad", "Nivel Academico", "Mailing", "Puesto", "nombre_tem", "nombre_trabajo", "nombre_area_apoyo","Status");

  $column = 0;

  foreach($table_columns as $field)
  {
   $object->getActiveSheet()->setCellValueByColumnAndRow($column, 1, $field);
   $column++;
  }

  $employee_data = $this->Excel_model->getUsuariosExcelEvaluador();

  $excel_row = 2;

  foreach($employee_data as $row)
  {
   $object->getActiveSheet()->setCellValueByColumnAndRow(0, $excel_row, $row->id_usuarios);
   $object->getActiveSheet()->setCellValueByColumnAndRow(1, $excel_row, $row->nombre);
   $object->getActiveSheet()->setCellValueByColumnAndRow(2, $excel_row, $row->a_paterno);
   $object->getActiveSheet()->setCellValueByColumnAndRow(3, $excel_row, $row->a_materno);
   $object->getActiveSheet()->setCellValueByColumnAndRow(4, $excel_row, $row->edad);
   $object->getActiveSheet()->setCellValueByColumnAndRow(5, $excel_row, $row->nombre_gen);
   $object->getActiveSheet()->setCellValueByColumnAndRow(6, $excel_row, $row->nombre_nac);
   $object->getActiveSheet()->setCellValueByColumnAndRow(7, $excel_row, $row->nombre_est);
   $object->getActiveSheet()->setCellValueByColumnAndRow(8, $excel_row, $row->nombre_mun);
   $object->getActiveSheet()->setCellValueByColumnAndRow(9, $excel_row, $row->email);
   $object->getActiveSheet()->setCellValueByColumnAndRow(10, $excel_row, $row->nombre_ins);
   $object->getActiveSheet()->setCellValueByColumnAndRow(11, $excel_row, $row->nombre_fac);
   $object->getActiveSheet()->setCellValueByColumnAndRow(12, $excel_row, $row->nombre_aca);
   $object->getActiveSheet()->setCellValueByColumnAndRow(13, $excel_row, $row->mailing);
   $object->getActiveSheet()->setCellValueByColumnAndRow(14, $excel_row, $row->nombre_puesto);
   $object->getActiveSheet()->setCellValueByColumnAndRow(15, $excel_row, $row->nombre_tem);
   $object->getActiveSheet()->setCellValueByColumnAndRow(16, $excel_row, $row->nombre_trabajo);
   $object->getActiveSheet()->setCellValueByColumnAndRow(17, $excel_row, $row->nombre_area_apoyo);
   $object->getActiveSheet()->setCellValueByColumnAndRow(18, $excel_row, $row->status);
   $excel_row++;
  }

  $object_writer = PHPExcel_IOFactory::createWriter($object, 'Excel5');
  header('Content-Type: application/vnd.ms-excel');
  header('Content-Disposition: attachment;filename="Registro_Total_Usuarios_Evaluadores_Congreso.xls"');
  $object_writer->save('php://output');
 }


 //ASISTENTE
 public function aExcel()
 {
  $this->load->model("Excel_model");
  $this->load->library("excel");
  $object = new PHPExcel();

  $object->setActiveSheetIndex(0);

  $table_columns = array("Folio", "Nombre", "Apellido Paterno", "Apellido Materno", "Edad", "Genero", "Nacionalidad", "Estado", "Municipio", "Email", "Institución", "Facultad", "Nivel Academico", "Mailing", "Puesto", "Status");

  $column = 0;

  foreach($table_columns as $field)
  {
   $object->getActiveSheet()->setCellValueByColumnAndRow($column, 1, $field);
   $column++;
  }

  $employee_data = $this->Excel_model->getUsuariosExcelAsistente();

  $excel_row = 2;

  foreach($employee_data as $row)
  {
   $object->getActiveSheet()->setCellValueByColumnAndRow(0, $excel_row, $row->id_usuarios);
   $object->getActiveSheet()->setCellValueByColumnAndRow(1, $excel_row, $row->nombre);
   $object->getActiveSheet()->setCellValueByColumnAndRow(2, $excel_row, $row->a_paterno);
   $object->getActiveSheet()->setCellValueByColumnAndRow(3, $excel_row, $row->a_materno);
   $object->getActiveSheet()->setCellValueByColumnAndRow(4, $excel_row, $row->edad);
   $object->getActiveSheet()->setCellValueByColumnAndRow(5, $excel_row, $row->nombre_gen);
   $object->getActiveSheet()->setCellValueByColumnAndRow(6, $excel_row, $row->nombre_nac);
   $object->getActiveSheet()->setCellValueByColumnAndRow(7, $excel_row, $row->nombre_est);
   $object->getActiveSheet()->setCellValueByColumnAndRow(8, $excel_row, $row->nombre_mun);
   $object->getActiveSheet()->setCellValueByColumnAndRow(9, $excel_row, $row->email);
   $object->getActiveSheet()->setCellValueByColumnAndRow(10, $excel_row, $row->nombre_ins);
   $object->getActiveSheet()->setCellValueByColumnAndRow(11, $excel_row, $row->nombre_fac);
   $object->getActiveSheet()->setCellValueByColumnAndRow(12, $excel_row, $row->nombre_aca);
   $object->getActiveSheet()->setCellValueByColumnAndRow(13, $excel_row, $row->mailing);
   $object->getActiveSheet()->setCellValueByColumnAndRow(14, $excel_row, $row->nombre_puesto);
   $object->getActiveSheet()->setCellValueByColumnAndRow(15, $excel_row, $row->status);
   $excel_row++;
  }

  $object_writer = PHPExcel_IOFactory::createWriter($object, 'Excel5');
  header('Content-Type: application/vnd.ms-excel');
  header('Content-Disposition: attachment;filename="Registro_Total_Usuarios_Asistente_Congreso.xls"');
  $object_writer->save('php://output');
 }

 //-----------------------------------------------------------------------------
 // ADMIN/USUARIOS/TOTAL_USUARIOS
 // PDF - PONENTE - MODERADOR - RELATOR - ASISTENTE - LOGISTICO - EVALUADOR
 //-----------------------------------------------------------------------------

  function tPDF()
  {
    $data['listado'] = $this->Pdf_model->getUsuariosTotalPdf();
    $this->load->view('admin/usuarios/reporte_gral',$data);
  }

  function pPDF()
  {
    $data['listado'] = $this->Pdf_model->getUsuariosPDFPonentes();
    $this->load->view('admin/usuarios/reporte_gral',$data);
  }

  function mPDF()
  {
    $data['listado'] = $this->Pdf_model->getUsuariosPDFModerador();
    $this->load->view('admin/usuarios/reporte_gral',$data);
  }

  function rPDF()
  {
    $data['listado'] = $this->Pdf_model->getUsuariosPDFRelator();
    $this->load->view('admin/usuarios/reporte_gral',$data);
  }

  function ePDF()
  {
    $data['listado'] = $this->Pdf_model->getUsuariosPDFEvaluador();
    $this->load->view('admin/usuarios/reporte_gral',$data);
  }

  function lPDF()
  {
    $data['listado'] = $this->Pdf_model->getUsuariosPDFLogistico();
    $this->load->view('admin/usuarios/reporte_gral',$data);
  }

  function aPDF()
  {
    $data['listado'] = $this->Pdf_model->getUsuariosPDFAsistente();
    $this->load->view('admin/usuarios/reporte_gral',$data);
  }
 //-----------------------------------------------------------------------------
 // ADMIN/USUARIOS/TOTAL_USUARIOS/VER
 // PDF - SÓLO SACA POR UN USUARIO
 //-----------------------------------------------------------------------------
  function uPDF()
  {
    $id = $this->uri->segment(3);
    $data['listado'] = $this->Admin_model->getUsuariosTotal($id);
    $this->load->view('admin/usuarios/reporte',$data);
  }

 //-----------------------------------------------------------------------------
 // ADMIN/USUARIOS/GRAFICAS
 //-----------------------------------------------------------------------------

  public function graficas()
  {
    $data['usuarios']           = $this->Admin_model->getTotalUsuarios();
    $data['asistencias']        = $this->Admin_model->getTotalAsistencia();
    $data['registros']          = $this->Admin_model->getUsuariosReg();
    $data['ponentes']           = $this->Admin_model->getTotalUsuariosP();
    $data['evaluadores']        = $this->Admin_model->getTotalUsuariosE();
    $data['moderadores']        = $this->Admin_model->getTotalUsuariosM();
    $data['relatores']          = $this->Admin_model->getTotalUsuariosR();
    $data['logistico']          = $this->Admin_model->getTotalUsuariosL();
    $data['asistentes']         = $this->Admin_model->getTotalUsuariosA();
    $data['hombres']            = $this->Admin_model->getTotalUsuariosGeneroM();
    $data['mujeres']            = $this->Admin_model->getTotalUsuariosGeneroF();
    $data['uno']                = $this->Admin_model->getRangoEdadUsuariosA();
    $data['dos']                = $this->Admin_model->getRangoEdadUsuariosB();
    $data['tres']               = $this->Admin_model->getRangoEdadUsuariosC();
    $data['mexicanos']          = $this->Admin_model->getNacionalidadUsuariosM();
    $data['extranjeros']        = $this->Admin_model->getNacionalidadUsuariosE();
    $data['mich']               = $this->Admin_model->getEstadosUsuariosM();
    $data['estados']            = $this->Admin_model->getEstadosUsuariosT();
    $data['municipios']         = $this->Admin_model->getEstadosUsuariosMo();
    $data['instituciones']      = $this->Admin_model->getEstadosUsuariosIns();
    $data['facultades']         = $this->Admin_model->getEstadosUsuariosFac();
    $data['otros']              = $this->Admin_model->getEstadosUsuariosOtros();
    $data['licenciatura']       = $this->Admin_model->getEstadosUsuariosLic();
    $data['maestria']           = $this->Admin_model->getEstadosUsuariosMae();
    $data['doctorado']          = $this->Admin_model->getEstadosUsuariosDoc();
    $data['mesas']              = $this->Admin_model->getEstadosUsuariosMesas();
    $data['registrop']          = $this->Admin_model->getTotalUsuariosPregistro();
    $data['mesa1']              = $this->Admin_model->getEstadosUsuariosMes1();
    $data['mesa2']              = $this->Admin_model->getEstadosUsuariosMes2();
    $data['mesa3']              = $this->Admin_model->getEstadosUsuariosMes3();
    $data['mesa4']              = $this->Admin_model->getEstadosUsuariosMes4();
    $data['mesa5']              = $this->Admin_model->getEstadosUsuariosMes5();
    $data['mesa6']              = $this->Admin_model->getEstadosUsuariosMes6();
    $data['mesa7']              = $this->Admin_model->getEstadosUsuariosMes7();
    $data['mesa8']              = $this->Admin_model->getEstadosUsuariosMes8();
    $data['mesa9']              = $this->Admin_model->getEstadosUsuariosMes9();
    $data['mesa10']             = $this->Admin_model->getEstadosUsuariosMes10();

    $data['eva']                = $this->Admin_model->getUsuariosEvaluadores();
    $data['evaluados']          = $this->Admin_model->getUsuariosEvaluados();
    $data['noevaluados']        = $this->Admin_model->getUsuariosNoEvaluados();

    $data['evaluadores1']       = $this->Admin_model->getUsuariosEvaluadoresMesa1();
    $data['porevaluar1']        = $this->Admin_model->getUsuariosPorEvaluarMesa1();
    $data['evaluados1']         = $this->Admin_model->getUsuariosEvaluadosMesa1();
    $data['noevaluados1']       = $this->Admin_model->getUsuariosNoEvaluadosMesa1();

    $data['evaluadores2']       = $this->Admin_model->getUsuariosEvaluadoresMesa2();
    $data['porevaluar2']        = $this->Admin_model->getUsuariosPorEvaluarMesa2();
    $data['evaluados2']         = $this->Admin_model->getUsuariosEvaluadosMesa2();
    $data['noevaluados2']       = $this->Admin_model->getUsuariosNoEvaluadosMesa2();

    $data['evaluadores3']       = $this->Admin_model->getUsuariosEvaluadoresMesa3();
    $data['porevaluar3']        = $this->Admin_model->getUsuariosPorEvaluarMesa3();
    $data['evaluados3']         = $this->Admin_model->getUsuariosEvaluadosMesa3();
    $data['noevaluados3']       = $this->Admin_model->getUsuariosNoEvaluadosMesa3();

    $data['evaluadores4']       = $this->Admin_model->getUsuariosEvaluadoresMesa4();
    $data['porevaluar4']        = $this->Admin_model->getUsuariosPorEvaluarMesa4();
    $data['evaluados4']         = $this->Admin_model->getUsuariosEvaluadosMesa4();
    $data['noevaluados4']       = $this->Admin_model->getUsuariosNoEvaluadosMesa4();

    $data['evaluadores5']       = $this->Admin_model->getUsuariosEvaluadoresMesa5();
    $data['porevaluar5']        = $this->Admin_model->getUsuariosPorEvaluarMesa5();
    $data['evaluados5']         = $this->Admin_model->getUsuariosEvaluadosMesa5();
    $data['noevaluados5']       = $this->Admin_model->getUsuariosNoEvaluadosMesa5();

    $data['evaluadores6']       = $this->Admin_model->getUsuariosEvaluadoresMesa6();
    $data['porevaluar6']        = $this->Admin_model->getUsuariosPorEvaluarMesa6();
    $data['evaluados6']         = $this->Admin_model->getUsuariosEvaluadosMesa6();
    $data['noevaluados6']       = $this->Admin_model->getUsuariosNoEvaluadosMesa6();

    $data['evaluadores7']       = $this->Admin_model->getUsuariosEvaluadoresMesa7();
    $data['porevaluar7']        = $this->Admin_model->getUsuariosPorEvaluarMesa7();
    $data['evaluados7']         = $this->Admin_model->getUsuariosEvaluadosMesa7();
    $data['noevaluados7']       = $this->Admin_model->getUsuariosNoEvaluadosMesa7();

    $data['evaluadores8']       = $this->Admin_model->getUsuariosEvaluadoresMesa8();
    $data['porevaluar8']        = $this->Admin_model->getUsuariosPorEvaluarMesa8();
    $data['evaluados8']         = $this->Admin_model->getUsuariosEvaluadosMesa8();
    $data['noevaluados8']       = $this->Admin_model->getUsuariosNoEvaluadosMesa8();

    $data['evaluadores9']       = $this->Admin_model->getUsuariosEvaluadoresMesa9();
    $data['porevaluar9']        = $this->Admin_model->getUsuariosPorEvaluarMesa9();
    $data['evaluados9']         = $this->Admin_model->getUsuariosEvaluadosMesa9();
    $data['noevaluados9']       = $this->Admin_model->getUsuariosNoEvaluadosMesa9();

    $data['evaluadores10']       = $this->Admin_model->getUsuariosEvaluadoresMesa10();
    $data['porevaluar10']        = $this->Admin_model->getUsuariosPorEvaluarMesa10();
    $data['evaluados10']         = $this->Admin_model->getUsuariosEvaluadosMesa10();
    $data['noevaluados10']       = $this->Admin_model->getUsuariosNoEvaluadosMesa10();

    $this->load->view('theme/header');
    $this->load->view('theme/menu');
    $this->load->view('admin/usuarios/graficas',$data);
    $this->load->view('theme/footer');
  }

 //=============================================================================
 // CARPETA DE FUNCIONES ESTADISTICAS
 //=============================================================================

    public function estadistica()
    {
        $this->load->view('theme/header');
        $this->load->view('theme/menu');
        $this->load->view('admin/estadistica/index');
        $this->load->view('theme/footer');
    }

 //-----------------------------------------------------------------------------
 // ADMIN/ESTADISTICAS/PONENTES
 //-----------------------------------------------------------------------------

    public function estadisticas_ponentes()
    {
        $data['asistencias']        = $this->Admin_model->getTotalAsistencia();
        $data['ponentes']           = $this->Admin_model->getTotalUsuariosP();
        $data['report'] = $this->Admin_model->chartPonente();
        $data['charts'] = $this->Admin_model->chart();
        $this->load->view('theme/header');
        $this->load->view('theme/menu');
        $this->load->view('admin/estadistica/ponentes',$data);
        $this->load->view('theme/footer');
    }


 //-----------------------------------------------------------------------------
 // ADMIN/ESTADISTICAS/PONENTES/REGISTROS
 //-----------------------------------------------------------------------------

    public function estadisticas_ponentes_registros()
    {
        $data['asistencias']        = $this->Admin_model->getTotalAsistencia();
        $data['ponentes']           = $this->Admin_model->getTotalUsuariosP();
        $data['report'] = $this->Admin_model->chartPonente();
        $data['charts'] = $this->Admin_model->chart();
        $this->load->view('theme/header');
        $this->load->view('theme/menu');
        $this->load->view('admin/estadistica/ponentes_registros',$data);
        $this->load->view('theme/footer');
    }

 //-----------------------------------------------------------------------------
 // ADMIN/ESTADISTICAS/PONENTES/GENEROS
 //-----------------------------------------------------------------------------

    public function estadisticas_ponentes_generos()
    {
        $data['asistencias']  = $this->Admin_model->getTotalAsistencia();
        $data['hombres']      = $this->Admin_model->getTotalUsuariosGeneroM();
        $data['mujeres']      = $this->Admin_model->getTotalUsuariosGeneroF();
        $data['charh']        = $this->Admin_model->chartPGenerosH();
        $data['charm']        = $this->Admin_model->chartPGenerosM();
        $this->load->view('theme/header');
        $this->load->view('theme/menu');
        $this->load->view('admin/estadistica/ponentes_generos',$data);
        $this->load->view('theme/footer');
    }

 //-----------------------------------------------------------------------------
 // ADMIN/ESTADISTICAS/PONENTES/EDADES
 //-----------------------------------------------------------------------------

    public function estadisticas_ponentes_edades()
    {
        $data['asistencias']  = $this->Admin_model->getTotalAsistencia();
        $data['uno']          = $this->Admin_model->getRangoEdadUsuariosA();
        $data['dos']          = $this->Admin_model->getRangoEdadUsuariosB();
        $data['tres']         = $this->Admin_model->getRangoEdadUsuariosC();
        $data['charuno']      = $this->Admin_model->chartEdadUno();
        $data['chardos']      = $this->Admin_model->chartEdadDos();
        $data['chartres']     = $this->Admin_model->chartEdadTres();
        $this->load->view('theme/header');
        $this->load->view('theme/menu');
        $this->load->view('admin/estadistica/ponentes_edades',$data);
        $this->load->view('theme/footer');
    }
 //-----------------------------------------------------------------------------
 // ADMIN/ESTADISTICAS/PONENTES/NACIONALIDAD
 //-----------------------------------------------------------------------------
    public function estadisticas_ponentes_nacionalidad()
    {
        $data['asistencias']  = $this->Admin_model->getTotalAsistencia();
        $data['mexicanos']    = $this->Admin_model->getNacionalidadUsuariosM();
        $data['extranjeros']  = $this->Admin_model->getNacionalidadUsuariosE();
        $data['mexicano']     = $this->Admin_model->chartPmexicano();
        $data['extranjero']   = $this->Admin_model->chartPextranjero();
        $this->load->view('theme/header');
        $this->load->view('theme/menu');
        $this->load->view('admin/estadistica/ponentes_nacionalidad',$data);
        $this->load->view('theme/footer');
    }

 //-----------------------------------------------------------------------------
 // ADMIN/ESTADISTICAS/PONENTES/ESTADOS
 //-----------------------------------------------------------------------------
    public function estadisticas_ponentes_estados()
    {
        $data['estados']  = $this->Admin_model->getDatosEstados();
        $this->load->view('theme/header');
        $this->load->view('theme/menu');
        $this->load->view('admin/estadistica/ponentes_estados',$data);
        $this->load->view('theme/footer');
    }

 //-----------------------------------------------------------------------------
 // ADMIN/ESTADISTICAS/PONENTES/MUNICPIOS
 //-----------------------------------------------------------------------------
    public function estadisticas_ponentes_municipios()
    {
        $id = $this->uri->segment(3);
        $data['municipio']  = $this->Admin_model->getDatosMunicipios($id);
        $this->load->view('theme/header');
        $this->load->view('theme/menu');
        $this->load->view('admin/estadistica/ponentes_municipio',$data);
        $this->load->view('theme/footer');
    }


 //-----------------------------------------------------------------------------
 // ADMIN/ESTADISTICAS/PONENTES/INSTITUCIONES
 //-----------------------------------------------------------------------------
    public function estadisticas_ponentes_instituciones()
    {
        $data['institu']  = $this->Admin_model->getDatosInstituciones();
        $this->load->view('theme/header');
        $this->load->view('theme/menu');
        $this->load->view('admin/estadistica/ponentes_instituciones',$data);
        $this->load->view('theme/footer');
    }

 //-----------------------------------------------------------------------------
 // ADMIN/ESTADISTICAS/PONENTES/FACULTADES
 //-----------------------------------------------------------------------------
    public function estadisticas_ponentes_facultades()
    {
        $id = $this->uri->segment(3);
        $data['facultad']  = $this->Admin_model->getDatosFacultades($id);
        $this->load->view('theme/header');
        $this->load->view('theme/menu');
        $this->load->view('admin/estadistica/ponentes_facultades',$data);
        $this->load->view('theme/footer');
    }


 //-----------------------------------------------------------------------------
 // ADMIN/ESTADISTICAS/PONENTES/GRADO ACADEMICO
 //-----------------------------------------------------------------------------
    public function estadisticas_ponentes_grado()
    {
        $data['asistencias']    = $this->Admin_model->getTotalAsistencia();
        $data['licenciatura']   = $this->Admin_model->getEstadosUsuariosLic();
        $data['maestria']       = $this->Admin_model->getEstadosUsuariosMae();
        $data['doctorado']      = $this->Admin_model->getEstadosUsuariosDoc();
        $data['lic']            = $this->Admin_model->chartPLicenciatura();
        $data['mae']            = $this->Admin_model->chartPMaestria();
        $data['doc']            = $this->Admin_model->chartPDoctorado();
        $this->load->view('theme/header');
        $this->load->view('theme/menu');
        $this->load->view('admin/estadistica/ponentes_grados',$data);
        $this->load->view('theme/footer');
    }
 //-----------------------------------------------------------------------------
 // ADMIN/ESTADISTICAS/PONENTES/MESAS
 //-----------------------------------------------------------------------------

    public function estadisticas_ponentes_mesas()
    {
        $data['asistencias']    = $this->Admin_model->getTotalAsistencia();
        $data['ponentes']       = $this->Admin_model->getTotalUsuariosP();
        $data['registrop']      = $this->Admin_model->getTotalUsuariosPregistro();
        $data['mesas']          = $this->Admin_model->getEstadosUsuariosMesas();
        $data['mesa1']          = $this->Admin_model->getEstadosUsuariosMes1();
        $data['mesa2']          = $this->Admin_model->getEstadosUsuariosMes2();
        $data['mesa3']          = $this->Admin_model->getEstadosUsuariosMes3();
        $data['mesa4']          = $this->Admin_model->getEstadosUsuariosMes4();
        $data['mesa5']          = $this->Admin_model->getEstadosUsuariosMes5();
        $data['mesa6']          = $this->Admin_model->getEstadosUsuariosMes6();
        $data['mesa7']          = $this->Admin_model->getEstadosUsuariosMes7();
        $data['mesa8']          = $this->Admin_model->getEstadosUsuariosMes8();
        $data['mesa9']          = $this->Admin_model->getEstadosUsuariosMes9();
        $data['mesa10']         = $this->Admin_model->getEstadosUsuariosMes10();
        $data['chart']          = $this->Admin_model->chartBarraMesas();
        $this->load->view('theme/header');
        $this->load->view('theme/menu');
        $this->load->view('admin/estadistica/ponentes_mesas',$data);
        $this->load->view('theme/footer');
    }

 //=============================================================================
 // CARPETA DE ESTADISTICA EN COMPARATIVAS
 //=============================================================================
    public function comparativa()
    {
        $data['asistentes']         = $this->Admin_model->getTotalAsistencia();
        $data['ponentes']           = $this->Admin_model->UsuariosPonentesAprobadosMesas();
        $data['hombres']            = $this->Admin_model->getTotalUsuariosGeneroM();
        $data['mujeres']            = $this->Admin_model->getTotalUsuariosGeneroF();
        $data['homb']               = $this->Admin_model->TotalUsuariosPonentesGeneroM();
        $data['muje']               = $this->Admin_model->TotalUsuariosPonentesGeneroF();
        $data['oral']               = $this->Admin_model->UsuariosPonentesAprobadosOral();
        $data['cartel']             = $this->Admin_model->UsuariosPonentesAprobadosCartel();
        $this->load->view('theme/header');
        $this->load->view('theme/menu');
        $this->load->view('admin/comparativa/index',$data);
        $this->load->view('theme/footer');
    }























}