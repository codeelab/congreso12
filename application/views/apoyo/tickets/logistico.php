<?php

if($pdf !== FALSE) {
    foreach ($pdf as $v) {
      $nombre = $v->nombre.' '.$v->a_paterno.' '.$v->a_materno;
      $reg = $v->id_usuarios;
      $puesto = $v->nombre_puesto;
      $estado = $v->status;
    }
}


              ob_start();
                //GENERADOR DE PDF EN CORREO
                $pdf = new TCPDF(PDF_PAGE_ORIENTATION, PDF_UNIT, PDF_PAGE_FORMAT, true, 'UTF-8', false);
                $pdf->SetTitle("REGISTRO-000".$reg.".pdf");


                  $registro = "000".$reg."";

                  $info = "Usuario: \n".$nombre."
                         \nFolio: \n".$registro."
                         \nAcceso: \n".$puesto."
                         \nStatus: \n".$estado."
                         ";

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
                $pdf->writeHTML($nombre, true, false, true, false, '');
                $pdf->write2DBarcode($info, 'QRCODE,H', 138, 91, 59, 52, $style, 'N');
                $pdf->Output("REGISTRO-000".$reg.".pdf");

?>