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
                //GENERADOR DE PDF EN CORREO
                $pdf = new TCPDF(PDF_PAGE_ORIENTATION, PDF_UNIT, PDF_PAGE_FORMAT, true, 'UTF-8', false);

                  $user = $this->session->userdata('id_usuarios');
                  $nombre = $this->session->userdata('nombre');
                  $a_paterno = $this->session->userdata('a_paterno');
                  $a_materno = $this->session->userdata('a_materno');

                  $nombres = $nombre .' '.$a_paterno .' '.$a_materno;
                  $registro = "000".$user."";

                  $info = "Usuario: \n".$nombres."
                         \nFolio: \n".$registro."
                         \nAcceso: Ponente
                         \nStatus: Activo
                         ";

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