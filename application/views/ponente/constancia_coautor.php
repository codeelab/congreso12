<?php

ob_start();

    foreach ($datos->result() as $row) {
          $coautores = $row->coautores;
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

    $remplazar = str_replace($buscar, $repl, $coautores);

    $ex = explode($repl,$remplazar);

   $ads =  count($ex);

    if ($ads === 1) {
       include('includes/coautor/1.php');
    }else if($ads === 2){
        include('includes/coautor/2.php');
    }else if($ads === 3){
        include('includes/coautor/3.php');
    }else if($ads === 4){
        include('includes/coautor/4.php');
    }else if($ads === 5){
        include('includes/coautor/5.php');
    }else if($ads === 6){
        include('includes/coautor/6.php');
    }else if($ads === 7){
        include('includes/coautor/7.php');
    }else if($ads === 8){
        include('includes/coautor/8.php');
    }else if($ads === 9){
        include('includes/coautor/9.php');
    }else if($ads === 10){
        include('includes/coautor/10.php');
    }else if($ads === 11){
        include('includes/coautor/11.php');
    }else if($ads === 12){
        include('includes/coautor/12.php');
    }else if($ads === 13){
        include('includes/coautor/13.php');
    }else if($ads === 14){
        include('includes/coautor/14.php');
    }else if($ads === 15){
        include('includes/coautor/15.php');
    }else{
        echo 'NO EXISTEN DATOS EN EL SISTEMA';
    }



?>