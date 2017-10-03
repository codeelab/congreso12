<?php
if(!$user)
{
  redirect('login','refresh');
  exit();
}

//Validamos si es el path principal ? , si lo es deje accesar desde url
        if ($this->uri->uri_string()) {
            //Carga Libraria User_agent
            $this->load->library('user_agent');
            //Verifica si llega desde un enlace
            if ($this->agent->referrer()) {
                //Busca si el enlace llega de una URL diferente
                $post = strpos($this->agent->referrer(), base_url());
                if ($post === FALSE) {
                    //Podemos aqui crear un mensaje antes de redirigir que informe
                    redirect(base_url());
                }
            }
            //Si no se llega desde un enlace se redirecciona al inicio
            else {
                //Podemos aqui crear un mensaje antes de redirigir que informe
                redirect(base_url());
            }
        }
// Extend the TCPDF class to create custom Header and Footer
class MYPDF extends TCPDF {

    //Page header
    public function Header() {
        // Logo
        $date = "CONGRESO ESTATAL DE CIENCIA, INNOVACIÓN Y TECNOLOGÍA". ' ' . date('Y');
        $image_file = 'assets/images/rep.jpg';
        $this->Image($image_file, 5, 5, 130, '', 'JPG', '', 'T', false, 300, '', false, false, 0, false, false, false);
        $this->SetFont('dejavusans', 'B', 14, '', true);
        $this->SetTextColor(70,70,72);
        $this->SetXY(140,8);
        $this->writeHTML("REPORTE GENERAL POR USUARIO REGISTRADO", true, false, true, false, '');
        $this->SetXY(156,15);
        $this->SetFont('dejavusans', '', 8, '', true);
        $this->writeHTML($date, true, false, true, false, '');
    }

    // Page footer
    public function Footer() {
        // Position at 15 mm from bottom
        $this->SetY(-15);
        // Set font
        $this->SetFont('helvetica', 'I', 8);
        // Page number
        $this->Cell(0, 10, 'Page '.$this->getAliasNumPage().'/'.$this->getAliasNbPages(), 0, false, 'C', 0, '', 0, false, 'T', 'M');
    }
}

        $pdf = new MYPDF(PDF_PAGE_ORIENTATION, PDF_UNIT, PDF_PAGE_FORMAT, true, 'UTF-8', false);
        $pdf->SetCreator(PDF_CREATOR);
        $pdf->SetAuthor('Joel Álvarez');
        $pdf->SetTitle('REPORTE GENERAL DE USUARIOS AL CONGRESO');
        // set default header data
        $pdf->SetHeaderData(PDF_HEADER_LOGO, PDF_HEADER_LOGO_WIDTH, PDF_HEADER_TITLE, PDF_HEADER_STRING);

        // set margins
        $pdf->SetMargins(15, 35, 15,true);
        $pdf->SetHeaderMargin(PDF_MARGIN_HEADER);
        $pdf->SetFooterMargin(PDF_MARGIN_FOOTER);

        // set auto page breaks
        $pdf->SetAutoPageBreak(TRUE, PDF_MARGIN_BOTTOM);

        // set image scale factor
        $pdf->setImageScale(PDF_IMAGE_SCALE_RATIO);
        $pdf->AddPage('L', 'mm','A4');
        $pdf->SetXY(5,32);
        //preparamos y maquetamos el contenido a crear
        $html = '';
        $html .= "<style type=text/css>";
        $html .= "th{color: #fff;font-size: 8px; background-color: #B42C63;}";
        $html .= "td{color: #333;font-size: 8px;}";
        $html .= "</style>";
        $html .= "<table width='100%'>";
        $html .= "
                  <tr>
                    <th>Folio</th>
                    <th>Puesto</th>
                    <th>Nombre</th>
                    <th>Nacionalidad</th>
                    <th>Estado</th>
                    <th>Municipio</th>
                    <th>Institución Educativa</th>
                    <th>Facultad</th>
                    <th>Grado Academico</th>
                    <th>Área Tematica</th>
                    <th>Modalidad</th>
                    <th>Apoyo Logistico</th>
                </tr>";

        foreach ($listado as $row)
        {
            $id             = $row->id_usuarios;
            $puesto         = $row->nombre_puesto;
            $nombre         = $row->nombre ." ". $row->a_paterno ." ".$row->a_materno;
            $nacionalidad   = $row->nombre_nac;
            $estado         = $row->nombre_est;
            $municipio      = $row->nombre_mun;
            $institucion    = $row->nombre_ins;
            $facultad       = $row->nombre_fac;
            $grado          = $row->nombre_aca;
            $area           = $row->nombre_tem;
            $modalidad      = $row->nombre_trabajo;
            $apoyo          = $row->nombre_area_apoyo;

            $html .= "
            <tr>
              <td>" . $id . "</td>
              <td>" . $puesto . "</td>
              <td>" . $nombre . "</td>
              <td>" . $nacionalidad . "</td>
              <td>" . $estado . "</td>
              <td>" . $municipio . "</td>
              <td>" . $institucion . "</td>
              <td>" . $facultad . "</td>
              <td>" . $grado . "</td>
              <td>" . $area . "</td>
              <td>" . $modalidad . "</td>
              <td>" . $apoyo . "</td>
            </tr>";
        }
        $html .= "</table>";

// Imprimimos el texto con writeHTMLCell()
        $pdf->writeHTMLCell($w = 0, $h = 0, $x = '', $y = '', $html, $border = 0, $ln = 1, $fill = 0, $reseth = true, $align = '', $autopadding = true);
// ---------------------------------------------------------
// Cerrar el documento PDF y preparamos la salida
// Este método tiene varias opciones, consulte la documentación para más información.
        $fecha = date('Y');
        $nombre_archivo = utf8_decode("Reporte_General_Usuarios_Congreso_".$fecha.".pdf");
        $pdf->Output($nombre_archivo, 'I');

?>