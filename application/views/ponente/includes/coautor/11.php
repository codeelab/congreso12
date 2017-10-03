<?php
        // create new PDF document
        $pdf = new TCPDF('L', PDF_UNIT, 'A4', true, 'UTF-8', false);
        $pdf->SetTitle("constancia.pdf");
        // remove default header/footer
        $pdf->setPrintHeader(false);
        $pdf->setPrintFooter(false);
        // set margins
        $pdf->SetMargins(10, PDF_MARGIN_TOP, 10);
        // set auto page breaks
        $pdf->SetAutoPageBreak(TRUE, PDF_MARGIN_BOTTOM);
        // set image scale factor
        $pdf->setImageScale(PDF_IMAGE_SCALE_RATIO);


        $pdf->AddPage();
        // disable auto-page-break
        $pdf->SetAutoPageBreak(false, 0);
        // set bacground image
        $pdf->Image('assets/constancias/constancia.jpg', 0, 0, 297, 210, '', '', '', false, 300, '', false, false, 0);
        // set JPEG quality
        $pdf->setJPEGQuality(100);
        // set the starting point for the page content
        $pdf->setPageMark();

        $pdf->SetTextColor(73,66,73);
        $pdf->SetFont('dejavusans','',12);
        $pdf->SetXY(30,85);
        $pdf->setCellPaddings(45);
        $html = '<p style="text-align: left; vertical-align:bottom;">'.$coautores.'</p>';
        $pdf->writeHTML($html, true, 0, true, true);

        // create some HTML content
        $pdf->SetTextColor(73,66,73);
        $pdf->SetFont('dejavusans','',12);
        $pdf->SetXY(30,110);
        $pdf->setCellPaddings(30);
        $html = '<p style="text-align: left; vertical-align:bottom;">Por su ponencia en la "'.$mesa.'", titulada: '.$titulo.'</p>';
        $pdf->writeHTML($html, true, 0, true, true);



        $pdf->Output("constancia.pdf");

 ?>