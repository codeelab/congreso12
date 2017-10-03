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

$pdf=new Fpdf_multicell();
        foreach($datos->result() as $row){
            $logistico = $row->nombre.' '.$row->a_paterno.' '.$row->a_materno;
            if ($row->id_usuarios === $row->id_usuarios) {
                $pdf->AddPage('L');
                $pdf->SetAutoPageBreak(false);
                $pdf->Image('assets/images/constancia_2016.jpg',5,5, 270);
                $pdf->SetXY(40,90);
                $pdf->SetFont('Times','B',25);
                $pdf->Cell(200,25,"$logistico",0,1,'C');
                $pdf->SetXY(40,100);
                $pdf->SetFont('Times','B',14);
                $pdf->SetXY(0,207);
                $pdf->SetFont('Times','',10);
        }else
        show_error("No hay registros que coincidan");
    }
        $pdf->Output();

?>
