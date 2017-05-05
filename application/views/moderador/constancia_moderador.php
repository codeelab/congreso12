<?php
$pdf=new Fpdf_multicell();
        foreach($datos->result() as $row){
            $moderador = $row->nombre.' '.$row->a_paterno.' '.$row->a_materno;
            if ($row->id_usuarios === $row->id_usuarios) {
                $pdf->AddPage('L');
                $pdf->SetAutoPageBreak(false);
                $pdf->Image('assets/images/constancia_2016.jpg',5,5, 270);
                $pdf->SetXY(40,90);
                $pdf->SetFont('Times','B',25);
                $pdf->Cell(200,25,"$moderador",0,1,'C');
                $pdf->SetXY(40,100);
                $pdf->SetFont('Times','B',14);
                $pdf->SetXY(0,207);
                $pdf->SetFont('Times','',10);
        }else
        show_error("No hay registros que coincidan");
    }
        $pdf->Output();

?>
