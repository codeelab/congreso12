<?php

ob_start();

    foreach ($datos->result() as $row) {
          $autor = $row->autor;
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

    $remplazar = str_replace($buscar, $repl, $autor);

    $ex = explode($repl,$remplazar);

   $ads =  count($ex);

    if ($ads === 1) {
       include('includes/autor/1.php');
    }else if($ads === 2){
        include('includes/autor/2.php');
    }else if($ads === 3){
        include('includes/autor/3.php');
    }else if($ads === 4){
        include('includes/autor/4.php');
    }else if($ads === 5){
        include('includes/autor/5.php');
    }else if($ads === 6){
        include('includes/autor/6.php');
    }else if($ads === 7){
        include('includes/autor/7.php');
    }else if($ads === 8){
        include('includes/autor/8.php');
    }else if($ads === 9){
        include('includes/autor/9.php');
    }else if($ads === 10){
        include('includes/autor/10.php');
    }else if($ads === 11){
        include('includes/autor/11.php');
    }else if($ads === 12){
        include('includes/autor/12.php');
    }else if($ads === 13){
        include('includes/autor/13.php');
    }else if($ads === 14){
        include('includes/autor/14.php');
    }else if($ads === 15){
        include('includes/autor/15.php');
    }else{
        echo 'NO EXISTEN DATOS EN EL SISTEMA';
    }



?>