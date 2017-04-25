<?php

/**
 * Modelo para Generar HTML de los correos en Pavel
 *
 * Transforms users table into an object.
 * This is just here for use with the example in the Controllers.
 *
 * @licence 	MIT Licence
 * @category	Models
 * @author  	Salvador Salgado Ramírez SARS
 * @link
 */
class Enviar_correo extends Model{


	function Menu()
	{
		parent::Model();
	}

	function acceso_html($datos){
		//Obtener la razon social del proveedor
		//Generar html de la bienvenida
//		$verificacion=md5($datos->id."&".$p->razon_social);
		$body="<img src='".base_url()."images/banner.png'' width='700px' align='center'><p>{$datos['nombre']}: <br/><br/>Por medio del presente correo, se le notifica de la alta de usuario para registrar trabajos en el 11° Congreso Estatal de Ciencia, Tecnología e Innovación, para lo cual le entregamos las credenciales de acceso</p>
		<p>Nombre de Usuario:  ".$datos['username']." <br/>
		Contraseña de Usuario:  ".$datos['passwd']." <br/>
		<center><a href=\"".base_url()."\">Micrositio del Congreso</a></center><br/>
		</p>".
		"<p>Atentamente: <br/><br/><a href='http://sicdet.michoacan.gob.mx'>Secrtetaría de Innovación, Ciencia y desarrollo tecnológico</a></p>";
		return $body;
	}

}
