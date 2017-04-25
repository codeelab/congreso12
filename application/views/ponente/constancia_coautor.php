<?php
$pdf=new Fpdf_multicell();
        foreach($datos->result() as $row){
            if ($row->coautores === $row->coautores) {
                $pdf->AddPage('L');
                $pdf->SetAutoPageBreak(false);
                $pdf->Image('assets/images/constancia_2016.jpg',5,5, 270);
                $pdf->SetXY(40,90);
                $pdf->SetFont('Times','B',25);
                $pdf->Cell(200,25,"$row->coautores",0,1,'C');
                $pdf->SetFont('Times','',12);
                $pdf->Cell(150,1,"$row->titulo",0,1,'C');
                $pdf->SetXY(40,100);
                $pdf->SetFont('Times','B',14);
                $pdf->SetXY(0,207);
                $pdf->SetFont('Times','',10);
        }else
        show_error("No hay registros que coincidan");
    }
        $pdf->Output();

?>
