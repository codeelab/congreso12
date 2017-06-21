<?php
// create new PDF document
$pdf = new TCPDF(PDF_PAGE_ORIENTATION, PDF_UNIT, PDF_PAGE_FORMAT, true, 'UTF-8', false);

$pdf->AddPage();
$usuario = "Abraham Joel Alvarez Garcia";
$estado = "Michoacán";
$institucion = "Instituto Tecnologico de Morelia";
$escolaridad = "Licenciatura";
$registro = "0001023";
$acceso = "Ponente";
$fecha = date('Y m d');
$status = "Activo";
$datos = "Usuario: \n".$usuario."
        \nInstitución: \n".$institucion."
        \nEscolaridad: \n".$escolaridad."
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
$pdf->Image('assets/images/Ticket_relator_12_congreso.jpg', 0, 0, 210, 297, '', '', '', false, 300, '', false, false, 0);
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
$pdf->writeHTML($usuario, true, false, true, false, '');
$pdf->write2DBarcode($datos, 'QRCODE,H', 138, 91, 59, 52, $style, 'N');
$pdf->Output();

?>