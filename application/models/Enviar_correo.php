<?php


class Enviar_correo extends CI_Model{


	function acceso_html($datos){

		$body="<img src='".base_url()."images/banner.png'' width='700px' align='center'><p>{$datos['nombre']}: <br/><br/>Por medio del presente correo, se le notifica de la alta de usuario para registrar trabajos en el 11� Congreso Estatal de Ciencia, Tecnolog�a e Innovaci�n, para lo cual le entregamos las credenciales de acceso</p>
		<p>Nombre de Usuario:  ".$datos['username']." <br/>
		Contrase�a de Usuario:  ".$datos['password']." <br/>

		<center><a href=\"".base_url()."\">Micrositio del Congreso</a></center><br/>
		</p>".
		"<p>Atentamente: <br/><br/><a href='http://sicdet.michoacan.gob.mx'>Secrtetar�a de Innovaci�n, Ciencia y desarrollo tecnol�gico</a></p>";
		return $body;
	}
}