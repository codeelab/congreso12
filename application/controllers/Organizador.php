<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Organizador extends MY_Controller {

    public function __construct()
    {
        parent::__construct();
        $this->load->model(array('Organizador_model','Excel_model','Pdf_model'));
        $this->load->library(array('session','form_validation','pdf','highcharts','user_agent'));
        $this->load->helper('url','form','security','export_excel');
        $this->load->database('default');
    }

  public function index()
  {
    $this->load->view('theme/header');
        $this->load->view('theme/menu');
    $this->load->view('organizador/index');
    $this->load->view('theme/footer');
  }



 //=============================================================================
 // CARPETA DE FUNCIONES USUARIOS
 //=============================================================================

    public function usuarios()
    {
        $this->load->view('theme/header');
        $this->load->view('theme/menu');
        $this->load->view('organizador/usuarios/index');
        $this->load->view('theme/footer');
    }

 //-----------------------------------------------------------------------------
 // organizador/USUARIOS/TOTAL_USUARIOS
 //-----------------------------------------------------------------------------

    public function total_usuarios()
    {
        $data['listado'] = $this->Organizador_model->getUsuarios();
        $this->load->view('theme/header');
        $this->load->view('theme/menu');
        $this->load->view('organizador/usuarios/total',$data);
        $this->load->view('theme/footer');
    }

 //-----------------------------------------------------------------------------
 // organizador/USUARIOS/TOTAL_USUARIOS_PONENTES
 //-----------------------------------------------------------------------------

    public function total_usuarios_ponentes()
    {
        $data['listado'] = $this->Organizador_model->getUsuariosP();
        $this->load->view('theme/header');
        $this->load->view('theme/menu');
        $this->load->view('organizador/usuarios/total',$data);
        $this->load->view('theme/footer');
    }

 //-----------------------------------------------------------------------------
 // organizador/USUARIOS/TOTAL_USUARIOS_EVALUADORES
 //-----------------------------------------------------------------------------

    public function total_usuarios_evaluadores()
    {
        $data['listado'] = $this->Organizador_model->getUsuariosE();
        $this->load->view('theme/header');
        $this->load->view('theme/menu');
        $this->load->view('organizador/usuarios/total',$data);
        $this->load->view('theme/footer');
    }

 //-----------------------------------------------------------------------------
 // organizador/USUARIOS/TOTAL_USUARIOS_MODERADORES
 //-----------------------------------------------------------------------------

    public function total_usuarios_moderadores()
    {
        $data['listado'] = $this->Organizador_model->getUsuariosM();
        $this->load->view('theme/header');
        $this->load->view('theme/menu');
        $this->load->view('organizador/usuarios/total',$data);
        $this->load->view('theme/footer');
    }

 //-----------------------------------------------------------------------------
 // organizador/USUARIOS/TOTAL_USUARIOS_RELATORES
 //-----------------------------------------------------------------------------

    public function total_usuarios_relatores()
    {
        $data['listado'] = $this->Organizador_model->getUsuariosR();
        $this->load->view('theme/header');
        $this->load->view('theme/menu');
        $this->load->view('organizador/usuarios/total',$data);
        $this->load->view('theme/footer');
    }

 //-----------------------------------------------------------------------------
 // organizador/USUARIOS/TOTAL_USUARIOS_LOGISTIO
 //-----------------------------------------------------------------------------

    public function total_usuarios_logistico()
    {
        $data['listado'] = $this->Organizador_model->getUsuariosL();
        $this->load->view('theme/header');
        $this->load->view('theme/menu');
        $this->load->view('organizador/usuarios/total',$data);
        $this->load->view('theme/footer');
    }

 //-----------------------------------------------------------------------------
 // organizador/USUARIOS/TOTAL_USUARIOS_RELATORES
 //-----------------------------------------------------------------------------

    public function total_usuarios_asistentes()
    {
        $data['listado'] = $this->Organizador_model->getUsuariosA();
        $this->load->view('theme/header');
        $this->load->view('theme/menu');
        $this->load->view('organizador/usuarios/total',$data);
        $this->load->view('theme/footer');
    }


 //-----------------------------------------------------------------------------
 // organizador/USUARIOS/VER
 //-----------------------------------------------------------------------------

    public function ver()
    {
        $id = $this->uri->segment(3);
        $data['listado'] = $this->Organizador_model->getUsuariosTotal($id);
        $this->load->view('theme/header');
        $this->load->view('theme/menu');
        $this->load->view('organizador/usuarios/ver',$data);
        $this->load->view('theme/footer');
    }


 //-----------------------------------------------------------------------------
 // organizador/USUARIOS/TOTAL_USUARIOS
 // EXCEL - PONENTE - MODERADOR - RELATOR - ASISTENTE - LOGISTICO - EVALUADOR
 //-----------------------------------------------------------------------------

 //TODOS LOS REGISTROS
 public function tExcel()
 {
  $this->load->model("Organizador_model");
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
 // organizador/USUARIOS/TOTAL_USUARIOS
 // PDF - PONENTE - MODERADOR - RELATOR - ASISTENTE - LOGISTICO - EVALUADOR
 //-----------------------------------------------------------------------------

  function tPDF()
  {
    $data['listado'] = $this->Pdf_model->getUsuariosTotalPdf();
    $this->load->view('organizador/usuarios/reporte_gral',$data);
  }

  function pPDF()
  {
    $data['listado'] = $this->Pdf_model->getUsuariosPDFPonentes();
    $this->load->view('organizador/usuarios/reporte_gral',$data);
  }

  function mPDF()
  {
    $data['listado'] = $this->Pdf_model->getUsuariosPDFModerador();
    $this->load->view('organizador/usuarios/reporte_gral',$data);
  }

  function rPDF()
  {
    $data['listado'] = $this->Pdf_model->getUsuariosPDFRelator();
    $this->load->view('organizador/usuarios/reporte_gral',$data);
  }

  function ePDF()
  {
    $data['listado'] = $this->Pdf_model->getUsuariosPDFEvaluador();
    $this->load->view('organizador/usuarios/reporte_gral',$data);
  }

  function lPDF()
  {
    $data['listado'] = $this->Pdf_model->getUsuariosPDFLogistico();
    $this->load->view('organizador/usuarios/reporte_gral',$data);
  }

  function aPDF()
  {
    $data['listado'] = $this->Pdf_model->getUsuariosPDFAsistente();
    $this->load->view('organizador/usuarios/reporte_gral',$data);
  }
 //-----------------------------------------------------------------------------
 // organizador/USUARIOS/TOTAL_USUARIOS/VER
 // PDF - SÓLO SACA POR UN USUARIO
 //-----------------------------------------------------------------------------
  function uPDF()
  {
    $id = $this->uri->segment(3);
    $data['listado'] = $this->Organizador_model->getUsuariosTotal($id);
    $this->load->view('organizador/usuarios/reporte',$data);
  }

 //-----------------------------------------------------------------------------
 // organizador/USUARIOS/GRAFICAS
 //-----------------------------------------------------------------------------

  public function graficas()
  {
    $data['asistencias']        = $this->Organizador_model->getTotalAsistencia();
    $data['registros']          = $this->Organizador_model->getUsuariosReg();
    $data['ponentes']           = $this->Organizador_model->getTotalUsuariosP();
    $data['evaluadores']        = $this->Organizador_model->getTotalUsuariosE();
    $data['moderadores']        = $this->Organizador_model->getTotalUsuariosM();
    $data['relatores']          = $this->Organizador_model->getTotalUsuariosR();
    $data['logistico']          = $this->Organizador_model->getTotalUsuariosL();
    $data['asistentes']         = $this->Organizador_model->getTotalUsuariosA();
    $data['hombres']            = $this->Organizador_model->getTotalUsuariosGeneroM();
    $data['mujeres']            = $this->Organizador_model->getTotalUsuariosGeneroF();
    $data['uno']                = $this->Organizador_model->getRangoEdadUsuariosA();
    $data['dos']                = $this->Organizador_model->getRangoEdadUsuariosB();
    $data['tres']               = $this->Organizador_model->getRangoEdadUsuariosC();
    $data['mexicanos']          = $this->Organizador_model->getNacionalidadUsuariosM();
    $data['extranjeros']        = $this->Organizador_model->getNacionalidadUsuariosE();
    $data['mich']               = $this->Organizador_model->getEstadosUsuariosM();
    $data['estados']            = $this->Organizador_model->getEstadosUsuariosT();
    $data['municipios']         = $this->Organizador_model->getEstadosUsuariosMo();
    $data['instituciones']      = $this->Organizador_model->getEstadosUsuariosIns();
    $data['facultades']         = $this->Organizador_model->getEstadosUsuariosFac();
    $data['otros']              = $this->Organizador_model->getEstadosUsuariosOtros();
    $data['licenciatura']       = $this->Organizador_model->getEstadosUsuariosLic();
    $data['maestria']           = $this->Organizador_model->getEstadosUsuariosMae();
    $data['doctorado']          = $this->Organizador_model->getEstadosUsuariosDoc();
    $data['mesas']              = $this->Organizador_model->getEstadosUsuariosMesas();
    $data['registrop']          = $this->Organizador_model->getTotalUsuariosPregistro();

    $data['mesa1']              = $this->Organizador_model->getEstadosUsuariosMes1();
    $data['mesa2']              = $this->Organizador_model->getEstadosUsuariosMes2();
    $data['mesa3']              = $this->Organizador_model->getEstadosUsuariosMes3();
    $data['mesa4']              = $this->Organizador_model->getEstadosUsuariosMes4();
    $data['mesa5']              = $this->Organizador_model->getEstadosUsuariosMes5();
    $data['mesa6']              = $this->Organizador_model->getEstadosUsuariosMes6();
    $data['mesa7']              = $this->Organizador_model->getEstadosUsuariosMes7();
    $data['mesa8']              = $this->Organizador_model->getEstadosUsuariosMes8();
    $data['mesa9']              = $this->Organizador_model->getEstadosUsuariosMes9();
    $data['mesa10']             = $this->Organizador_model->getEstadosUsuariosMes10();

    $data['eva']                = $this->Organizador_model->getUsuariosEvaluadores();
    $data['evaluados']          = $this->Organizador_model->getUsuariosEvaluados();
    $data['noevaluados']        = $this->Organizador_model->getUsuariosNoEvaluados();

    $data['evaluadores1']       = $this->Organizador_model->getUsuariosEvaluadoresMesa1();
    $data['porevaluar1']        = $this->Organizador_model->getUsuariosPorEvaluarMesa1();
    $data['evaluados1']         = $this->Organizador_model->getUsuariosEvaluadosMesa1();
    $data['noevaluados1']       = $this->Organizador_model->getUsuariosNoEvaluadosMesa1();

    $data['evaluadores2']       = $this->Organizador_model->getUsuariosEvaluadoresMesa2();
    $data['porevaluar2']        = $this->Organizador_model->getUsuariosPorEvaluarMesa2();
    $data['evaluados2']         = $this->Organizador_model->getUsuariosEvaluadosMesa2();
    $data['noevaluados2']       = $this->Organizador_model->getUsuariosNoEvaluadosMesa2();

    $data['evaluadores3']       = $this->Organizador_model->getUsuariosEvaluadoresMesa3();
    $data['porevaluar3']        = $this->Organizador_model->getUsuariosPorEvaluarMesa3();
    $data['evaluados3']         = $this->Organizador_model->getUsuariosEvaluadosMesa3();
    $data['noevaluados3']       = $this->Organizador_model->getUsuariosNoEvaluadosMesa3();

    $data['evaluadores4']       = $this->Organizador_model->getUsuariosEvaluadoresMesa4();
    $data['porevaluar4']        = $this->Organizador_model->getUsuariosPorEvaluarMesa4();
    $data['evaluados4']         = $this->Organizador_model->getUsuariosEvaluadosMesa4();
    $data['noevaluados4']       = $this->Organizador_model->getUsuariosNoEvaluadosMesa4();

    $data['evaluadores5']       = $this->Organizador_model->getUsuariosEvaluadoresMesa5();
    $data['porevaluar5']        = $this->Organizador_model->getUsuariosPorEvaluarMesa5();
    $data['evaluados5']         = $this->Organizador_model->getUsuariosEvaluadosMesa5();
    $data['noevaluados5']       = $this->Organizador_model->getUsuariosNoEvaluadosMesa5();

    $data['evaluadores6']       = $this->Organizador_model->getUsuariosEvaluadoresMesa6();
    $data['porevaluar6']        = $this->Organizador_model->getUsuariosPorEvaluarMesa6();
    $data['evaluados6']         = $this->Organizador_model->getUsuariosEvaluadosMesa6();
    $data['noevaluados6']       = $this->Organizador_model->getUsuariosNoEvaluadosMesa6();

    $data['evaluadores7']       = $this->Organizador_model->getUsuariosEvaluadoresMesa7();
    $data['porevaluar7']        = $this->Organizador_model->getUsuariosPorEvaluarMesa7();
    $data['evaluados7']         = $this->Organizador_model->getUsuariosEvaluadosMesa7();
    $data['noevaluados7']       = $this->Organizador_model->getUsuariosNoEvaluadosMesa7();

    $data['evaluadores8']       = $this->Organizador_model->getUsuariosEvaluadoresMesa8();
    $data['porevaluar8']        = $this->Organizador_model->getUsuariosPorEvaluarMesa8();
    $data['evaluados8']         = $this->Organizador_model->getUsuariosEvaluadosMesa8();
    $data['noevaluados8']       = $this->Organizador_model->getUsuariosNoEvaluadosMesa8();

    $data['evaluadores9']       = $this->Organizador_model->getUsuariosEvaluadoresMesa9();
    $data['porevaluar9']        = $this->Organizador_model->getUsuariosPorEvaluarMesa9();
    $data['evaluados9']         = $this->Organizador_model->getUsuariosEvaluadosMesa9();
    $data['noevaluados9']       = $this->Organizador_model->getUsuariosNoEvaluadosMesa9();

    $data['evaluadores10']       = $this->Organizador_model->getUsuariosEvaluadoresMesa10();
    $data['porevaluar10']        = $this->Organizador_model->getUsuariosPorEvaluarMesa10();
    $data['evaluados10']         = $this->Organizador_model->getUsuariosEvaluadosMesa10();
    $data['noevaluados10']       = $this->Organizador_model->getUsuariosNoEvaluadosMesa10();

    $this->load->view('theme/header');
    $this->load->view('theme/menu');
    $this->load->view('organizador/usuarios/graficas',$data);
    $this->load->view('theme/footer');
  }

 //=============================================================================
 // CARPETA DE FUNCIONES ESTADISTICAS
 //=============================================================================

    public function estadistica()
    {
        $this->load->view('theme/header');
        $this->load->view('theme/menu');
        $this->load->view('organizador/estadistica/index');
        $this->load->view('theme/footer');
    }

 //-----------------------------------------------------------------------------
 // organizador/ESTADISTICAS/PONENTES
 //-----------------------------------------------------------------------------

    public function estadisticas_ponentes()
    {
        $data['asistencias']        = $this->Organizador_model->getTotalAsistencia();
        $data['ponentes']           = $this->Organizador_model->getTotalUsuariosP();
        $data['report'] = $this->Organizador_model->chartPonente();
        $data['charts'] = $this->Organizador_model->chart();
        $this->load->view('theme/header');
        $this->load->view('theme/menu');
        $this->load->view('organizador/estadistica/ponentes',$data);
        $this->load->view('theme/footer');
    }


 //-----------------------------------------------------------------------------
 // organizador/ESTADISTICAS/PONENTES/REGISTROS
 //-----------------------------------------------------------------------------

    public function estadisticas_ponentes_registros()
    {
        $data['asistencias']        = $this->Organizador_model->getTotalAsistencia();
        $data['ponentes']           = $this->Organizador_model->getTotalUsuariosP();
        $data['report'] = $this->Organizador_model->chartPonente();
        $data['charts'] = $this->Organizador_model->chart();
        $this->load->view('theme/header');
        $this->load->view('theme/menu');
        $this->load->view('organizador/estadistica/ponentes_registros',$data);
        $this->load->view('theme/footer');
    }

 //-----------------------------------------------------------------------------
 // organizador/ESTADISTICAS/PONENTES/GENEROS
 //-----------------------------------------------------------------------------

    public function estadisticas_ponentes_generos()
    {
        $data['asistencias']  = $this->Organizador_model->getTotalAsistencia();
        $data['hombres']      = $this->Organizador_model->getTotalUsuariosGeneroM();
        $data['mujeres']      = $this->Organizador_model->getTotalUsuariosGeneroF();
        $data['charh']        = $this->Organizador_model->chartPGenerosH();
        $data['charm']        = $this->Organizador_model->chartPGenerosM();
        $this->load->view('theme/header');
        $this->load->view('theme/menu');
        $this->load->view('organizador/estadistica/ponentes_generos',$data);
        $this->load->view('theme/footer');
    }

 //-----------------------------------------------------------------------------
 // organizador/ESTADISTICAS/PONENTES/EDADES
 //-----------------------------------------------------------------------------

    public function estadisticas_ponentes_edades()
    {
        $data['asistencias']  = $this->Organizador_model->getTotalAsistencia();
        $data['uno']          = $this->Organizador_model->getRangoEdadUsuariosA();
        $data['dos']          = $this->Organizador_model->getRangoEdadUsuariosB();
        $data['tres']         = $this->Organizador_model->getRangoEdadUsuariosC();
        $data['charuno']      = $this->Organizador_model->chartEdadUno();
        $data['chardos']      = $this->Organizador_model->chartEdadDos();
        $data['chartres']     = $this->Organizador_model->chartEdadTres();
        $this->load->view('theme/header');
        $this->load->view('theme/menu');
        $this->load->view('organizador/estadistica/ponentes_edades',$data);
        $this->load->view('theme/footer');
    }
 //-----------------------------------------------------------------------------
 // organizador/ESTADISTICAS/PONENTES/NACIONALIDAD
 //-----------------------------------------------------------------------------
    public function estadisticas_ponentes_nacionalidad()
    {
        $data['asistencias']  = $this->Organizador_model->getTotalAsistencia();
        $data['mexicanos']    = $this->Organizador_model->getNacionalidadUsuariosM();
        $data['extranjeros']  = $this->Organizador_model->getNacionalidadUsuariosE();
        $data['mexicano']     = $this->Organizador_model->chartPmexicano();
        $data['extranjero']   = $this->Organizador_model->chartPextranjero();
        $this->load->view('theme/header');
        $this->load->view('theme/menu');
        $this->load->view('organizador/estadistica/ponentes_nacionalidad',$data);
        $this->load->view('theme/footer');
    }

 //-----------------------------------------------------------------------------
 // organizador/ESTADISTICAS/PONENTES/ESTADOS
 //-----------------------------------------------------------------------------
    public function estadisticas_ponentes_estados()
    {
        $data['estados']  = $this->Organizador_model->getDatosEstados();
        $this->load->view('theme/header');
        $this->load->view('theme/menu');
        $this->load->view('organizador/estadistica/ponentes_estados',$data);
        $this->load->view('theme/footer');
    }

 //-----------------------------------------------------------------------------
 // organizador/ESTADISTICAS/PONENTES/MUNICPIOS
 //-----------------------------------------------------------------------------
    public function estadisticas_ponentes_municipios()
    {
        $id = $this->uri->segment(3);
        $data['municipio']  = $this->Organizador_model->getDatosMunicipios($id);
        $this->load->view('theme/header');
        $this->load->view('theme/menu');
        $this->load->view('organizador/estadistica/ponentes_municipio',$data);
        $this->load->view('theme/footer');
    }


 //-----------------------------------------------------------------------------
 // organizador/ESTADISTICAS/PONENTES/INSTITUCIONES
 //-----------------------------------------------------------------------------
    public function estadisticas_ponentes_instituciones()
    {
        $data['institu']  = $this->Organizador_model->getDatosInstituciones();
        $this->load->view('theme/header');
        $this->load->view('theme/menu');
        $this->load->view('organizador/estadistica/ponentes_instituciones',$data);
        $this->load->view('theme/footer');
    }

 //-----------------------------------------------------------------------------
 // organizador/ESTADISTICAS/PONENTES/FACULTADES
 //-----------------------------------------------------------------------------
    public function estadisticas_ponentes_facultades()
    {
        $id = $this->uri->segment(3);
        $data['facultad']  = $this->Organizador_model->getDatosFacultades($id);
        $this->load->view('theme/header');
        $this->load->view('theme/menu');
        $this->load->view('organizador/estadistica/ponentes_facultades',$data);
        $this->load->view('theme/footer');
    }


 //-----------------------------------------------------------------------------
 // organizador/ESTADISTICAS/PONENTES/GRADO ACADEMICO
 //-----------------------------------------------------------------------------
    public function estadisticas_ponentes_grado()
    {
        $data['asistencias']    = $this->Organizador_model->getTotalAsistencia();
        $data['licenciatura']   = $this->Organizador_model->getEstadosUsuariosLic();
        $data['maestria']       = $this->Organizador_model->getEstadosUsuariosMae();
        $data['doctorado']      = $this->Organizador_model->getEstadosUsuariosDoc();
        $data['lic']            = $this->Organizador_model->chartPLicenciatura();
        $data['mae']            = $this->Organizador_model->chartPMaestria();
        $data['doc']            = $this->Organizador_model->chartPDoctorado();
        $this->load->view('theme/header');
        $this->load->view('theme/menu');
        $this->load->view('organizador/estadistica/ponentes_grados',$data);
        $this->load->view('theme/footer');
    }
 //-----------------------------------------------------------------------------
 // organizador/ESTADISTICAS/PONENTES/MESAS
 //-----------------------------------------------------------------------------

    public function estadisticas_ponentes_mesas()
    {
        $data['asistencias']    = $this->Organizador_model->getTotalAsistencia();
        $data['ponentes']       = $this->Organizador_model->getTotalUsuariosP();
        $data['registrop']      = $this->Organizador_model->getTotalUsuariosPregistro();
        $data['mesas']          = $this->Organizador_model->getEstadosUsuariosMesas();
        $data['mesa1']          = $this->Organizador_model->getEstadosUsuariosMes1();
        $data['mesa2']          = $this->Organizador_model->getEstadosUsuariosMes2();
        $data['mesa3']          = $this->Organizador_model->getEstadosUsuariosMes3();
        $data['mesa4']          = $this->Organizador_model->getEstadosUsuariosMes4();
        $data['mesa5']          = $this->Organizador_model->getEstadosUsuariosMes5();
        $data['mesa6']          = $this->Organizador_model->getEstadosUsuariosMes6();
        $data['mesa7']          = $this->Organizador_model->getEstadosUsuariosMes7();
        $data['mesa8']          = $this->Organizador_model->getEstadosUsuariosMes8();
        $data['mesa9']          = $this->Organizador_model->getEstadosUsuariosMes9();
        $data['mesa10']         = $this->Organizador_model->getEstadosUsuariosMes10();
        $data['chart']          = $this->Organizador_model->chartBarraMesas();
        $this->load->view('theme/header');
        $this->load->view('theme/menu');
        $this->load->view('organizador/estadistica/ponentes_mesas',$data);
        $this->load->view('theme/footer');
    }

























}