<?php

ob_start();

    foreach ($datos->result() as $row)
    {
          $asesor = $row->asesor;
          $titulo = $row->titulo;
          $mesa = $row->nombre_tem;
    }

    $buscar = array("\\", "¨", "º", "-", "~",
             "#", "@", "|", "!", "\"",
             "·", "$", "%", "&", "/",
             "(", ")", "?", "'", "¡",
             "¿", "[", "^", "`", "]",
             "+", "}", "{", "¨", "´",
             ">", "< ", ";", ":",".");

    $repl = ',';

    $remplazar = str_replace($buscar, $repl, $asesor);

    $ex = explode($repl,$remplazar);

   $ads =  count($ex);

    if ($ads === 1) {
       include('includes/asesor/1.php');
    }else if($ads === 2){
        include('includes/asesor/2.php');
    }else if($ads === 3){
        include('includes/asesor/3.php');
    }else if($ads === 4){
        include('includes/asesor/4.php');
    }else if($ads === 5){
        include('includes/asesor/5.php');
    }else if($ads === 6){
        include('includes/asesor/6.php');
    }else if($ads === 7){
        include('includes/asesor/7.php');
    }else if($ads === 8){
        include('includes/asesor/8.php');
    }else{
        echo 'NO EXISTEN DATOS EN EL SISTEMA';
    }



?>