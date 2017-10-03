              <?php 
               ob_start();
                //GENERADOR DE PDF EN CORREO
                $pdf = new TCPDF(PDF_PAGE_ORIENTATION, PDF_UNIT, PDF_PAGE_FORMAT, true, 'UTF-8', false);


                $nombres = 'Joel Alvarez';
                $registro = '0001';
                $fecha = date('Y');
                $status = 'Activo';
                $acceso = 'Ponente';
                $user = 'wwww';
                $pa = sha1('AIRL2018');

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
                $pdf->SetXY(40,179);
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
                //$pdflisto = $pdf->Output('','D');
                $pdf->Output();
                

?>