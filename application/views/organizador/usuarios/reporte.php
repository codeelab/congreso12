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
ob_start();

    foreach ($listado as $row) {
      $folio        = $row->id_usuarios;
      $status       = $row->status;
      $puesto       = $row->nombre_puesto;
      $usuario      = $row->username;
      $correo       = $row->email;
      $nombre       = $row->nombre;
      $paterno      = $row->a_paterno;
      $materno      = $row->a_materno;
      $edad         = $row->edad;
      $genero       = $row->nombre_gen;
      $nacionalidad = $row->nombre_nac;
      $estado       = $row->nombre_est;
      $municipio    = $row->nombre_mun;
      $institucion  = $row->nombre_ins;
      $facultad     = $row->nombre_fac;
      $grado        = $row->nombre_aca;
      $area         = $row->nombre_tem;
      $modalidad    = $row->nombre_trabajo;
      $apoyo        = $row->nombre_area_apoyo;
    }
               //GENERADOR DE PDF EN CORREO
                $pdf = new TCPDF(PDF_PAGE_ORIENTATION, PDF_UNIT, PDF_PAGE_FORMAT, true, 'UTF-8', false);
$date = "CONGRESO ESTATAL DE CIENCIA, INNOVACIÓN Y TECNOLOGÍA". ' ' . date('Y');

                $pdf->AddPage();
                // get the current page break margin
                $bMargin = $pdf->getBreakMargin();
                // get current auto-page-break mode
                $auto_page_break = $pdf->getAutoPageBreak();
                // disable auto-page-break
                $pdf->SetAutoPageBreak(false, 0);
                // set bacground image
                $pdf->Image('assets/images/reporte_pdf.jpg', 0, 0, 210, 297, '', '', '', false, 300, '', false, false, 0);
                // restore auto-page-break status
                $pdf->SetAutoPageBreak($auto_page_break, $bMargin);
                // set the starting point for the page content
                $pdf->setPageMark();
                // set style for barcode
                $pdf->SetFont('dejavusans', 'B', 14, '', true);
                $pdf->SetTextColor(70,70,72);
                $pdf->SetXY(45,65);
                $pdf->writeHTML("REPORTE GENERAL POR USUARIO REGISTRADO", true, false, true, false, '');
                $pdf->SetXY(61,72);
                $pdf->SetFont('dejavusans', '', 8, '', true);
                $pdf->writeHTML($date, true, false, true, false, '');
                $pdf->SetXY(5,92);
                $pdf->SetFont('dejavusans', '', 13, '', true);

$html = '
<table style="border-collapse: collapse;width: 100%; cellpadding: 4; cellspacing: 3;">
  <thead>
    <tr style="background-color: #b42c63;color: white;">
      <th style="width:10%;">Folio</th>
      <th style="width:15%;">Status</th>
      <th style="width:15%;">Puesto</th>
      <th style="width:20%;">Usuario</th>
      <th style="width:40%;">Correo</th>
    </tr>
  </thead>
  <tbody>
    <tr style="background-color: #f2f2f2">
      <td style="width:10%;">'.$folio.'</td>
      <td style="width:15%;">'.$status.'</td>
      <td style="width:15%;">'.$puesto.'</td>
      <td style="width:20%;">'.$usuario.'</td>
      <td style="width:40%;">'.$correo.'</td>
    </tr>
  </tbody>
</table>
<table style="border-collapse: collapse;width: 100%;">
    <thead>
    <tr style="background-color: #b42c63;color: white;">
      <th style="width:60%;">Nombre</th>
      <th style="width:10%;">Edad</th>
      <th style="width:30%;">Genero</th>
    </tr>
  </thead>
  <tbody>
    <tr style="background-color: #f2f2f2">
      <td style="width:60%;">'.$nombre ." ". $paterno ." ".$materno.'</td>
      <td style="width:10%;">'.$edad.'</td>
      <td style="width:30%;">'.$genero.'</td>
    </tr>
  </tbody>
</table>
<table style="border-collapse: collapse;width: 100%;">
    <thead>
    <tr style="background-color: #b42c63;color: white;">
      <th>Nacionalidad</th>
      <th>Estado</th>
      <th>Municipio</th>
    </tr>
  </thead>
  <tbody>
    <tr style="background-color: #f2f2f2">
      <td>'.$nacionalidad.'</td>
      <td>'.$estado.'</td>
      <td>'.$municipio.'</td>
    </tr>
  </tbody>
</table>
<table style="border-collapse: collapse;width: 100%;">
    <thead>
    <tr style="background-color: #b42c63;color: white;">
      <th>Institución Educativa</th>
    </tr>
  </thead>
  <tbody>
    <tr style="background-color: #f2f2f2">
      <td>'.$institucion.'</td>
    </tr>
  </tbody>
</table>
<table style="border-collapse: collapse;width: 100%;">
    <thead>
    <tr style="background-color: #b42c63;color: white;">
      <th style="width:60%;">Facultad</th>
      <th style="width:40%;">Grado Academico</th>
    </tr>
  </thead>
  <tbody>
    <tr style="background-color: #f2f2f2">
      <td style="width:60%;">'.$facultad.'</td>
      <td style="width:40%;">'.$grado.'</td>
    </tr>
  </tbody>
</table>
<table style="border-collapse: collapse;width: 100%;">
    <thead>
    <tr style="background-color: #b42c63;color: white;">
      <th>Área Tematica</th>
    </tr>
  </thead>
  <tbody>
    <tr style="background-color: #f2f2f2">
      <td>'.$area.'</td>
    </tr>
  </tbody>
</table>
<table style="border-collapse: collapse;width: 100%;">
    <thead>
    <tr style="background-color: #b42c63;color: white;">
      <th style="width:60%;">Área Tematica</th>
      <th style="width:40%;">Apoyo Logistico</th>
    </tr>
  </thead>
  <tbody>
    <tr style="background-color: #f2f2f2">
      <td style="width:60%;">'.$modalidad.'</td>
      <td style="width:40%;">'.$apoyo.'</td>
    </tr>
  </tbody>
</table>';

// output the HTML content
$pdf->writeHTML($html, true, false, true, false, '');

$pdf->Output();

?>