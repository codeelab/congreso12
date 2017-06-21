<?php


class Enviar_correo extends CI_Model{


	function registro_ponentes($datos){

		$body="<div align='center'>
<table width='100%' border='0' cellspacing='0' cellpadding='0' style='min-width: 320px;'><tr><td align='center' bgcolor='#fff'>

<table border='0' cellspacing='0' cellpadding='0' class='table_width_100' width='100%' style='max-width: 680px; min-width: 300px;'>
    <tr><td>
	<!-- padding --><div style='height: 80px; line-height: 80px; font-size: 10px;'> </div>
	</td></tr>
	<!--header -->
	<tr><td align='center' bgcolor='#ffffff'>
		<!-- padding --><div style='height: 30px; line-height: 30px; font-size: 10px;'> </div>
		<table width='90%' border='0' cellspacing='0' cellpadding='0'>
			<tr><td align='left'><!--

				Item --><div class='mob_center_bl' style='float: left; display: inline-block; width: 115px;'>
					<table class='mob_center' width='115' border='0' cellspacing='0' cellpadding='0' align='left' style='border-collapse: collapse;'>
						<tr><td align='left' valign='middle'>
							<!-- padding --><div style='height: 20px; line-height: 20px; font-size: 10px;'> </div>
							<table width='115' border='0' cellspacing='0' cellpadding='0' >
								<tr><td align='left' valign='top' class='mob_center'>
									<a href='#' target='_blank' style='color: #596167; font-family: Arial, Helvetica, sans-serif; font-size: 13px;'>
									<font face='Arial, Helvetica, sans-seri; font-size: 13px;' size='3' color='#596167'>
									<img src='http://localhost/congreso12/assets/img/logo-black.png' width='270' height='50' alt='Metronic' border='0' style='display: block;' /></font></a>
								</td></tr>
							</table>
						</td></tr>
					</table></div><!-- Item END--><!--[if gte mso 10]>
					</td>
					<td align='right'>
				<![endif]--><!--Item --><div class='mob_center_bl' style='float: right; display: inline-block; width: 88px;'>
					<table width='88' border='0' cellspacing='0' cellpadding='0' align='right' style='border-collapse: collapse;'>
						<tr><td align='right' valign='middle'>
							<!-- padding --><div style='height: 20px; line-height: 20px; font-size: 10px;'> </div>
							<table width='100%' border='0' cellspacing='0' cellpadding='0' >
								<tr><td align='right'>
									<!--social -->
									<div class='mob_center_bl' style='width: 100px;'>
									<table border='0' cellspacing='0' cellpadding='0'>
										<tr><td width='30' align='center' style='line-height: 19px;'>
											<a href='https://www.facebook.com/SICDET/' target='_blank' style='color: #596167; font-family: Arial, Helvetica, sans-serif; font-size: 12px;'>
											<font face='Arial, Helvetica, sans-serif' size='2' color='#596167'>
											<img src='https://www.iconfinder.com/data/icons/social-media-hexagon-1/1024/facebook-32.png' width='32' height='32' alt='Facebook' border='0' style='display: block;' /></font></a>
										</td><td width='39' align='center' style='line-height: 19px;'>
											<a href='https://twitter.com/SICDETmichoacan/' target='_blank' style='color: #596167; font-family: Arial, Helvetica, sans-serif; font-size: 12px;'>
											<font face='Arial, Helvetica, sans-serif' size='2' color='#596167'>
											<img src='https://www.iconfinder.com/data/icons/social-media-hexagon-1/1024/twitter-32.png' width='32' height='32' alt='Twitter' border='0' style='display: block;' /></font></a>
										</td><td width='29' align='right' style='line-height: 19px;'>
											<a href='https://www.instagram.com/GobMichoacan/' target='_blank' style='color: #596167; font-family: Arial, Helvetica, sans-serif; font-size: 12px;'>
											<font face='Arial, Helvetica, sans-serif' size='2' color='#596167'>
											<img src='https://www.iconfinder.com/data/icons/social-media-hexagon-1/1024/instagram-32.png' width='32' height='32' alt='Dribbble' border='0' style='display: block;' /></font></a>

										</td><td width='29' align='right' style='line-height: 19px;'>
											<a href='https://www.youtube.com/channel/UC_uaIRgMrAl91qewRt17v5g' target='_blank' style='color: #596167; font-family: Arial, Helvetica, sans-serif; font-size: 12px;'>
											<font face='Arial, Helvetica, sans-serif' size='2' color='#596167'>
											<img src='https://www.iconfinder.com/data/icons/social-media-hexagon-1/1024/youtube-32.png' width='32' height='32' alt='Dribbble' border='0' style='display: block;' /></font></a>

										</td></tr>
									</table>
									</div>
									<!--social END-->
								</td></tr>
							</table>
						</td></tr>
					</table></div><!-- Item END--></td>
			</tr>
		</table>
		<!-- padding --><div style='height: 50px; line-height: 50px; font-size: 10px;'> </div>
	</td></tr>
	<!--header END-->

	<!--content 1 -->
	<tr><td align='center' bgcolor='#fbfcfd'>
		<table width='90%' border='0' cellspacing='0' cellpadding='0'>
			<tr><td align='center'>
				<!-- padding --><div style='height: 40px; line-height: 60px; font-size: 10px;'> </div>
				<div style='line-height: 44px;'>
					<font face='Arial, Helvetica, sans-serif' size='5' color='#57697e' style='font-size: 19px;'>
					<span style='font-family: Arial, Helvetica, sans-serif; font-size: 19px; color: #57697e;'>
						CONGRESO ESTATAL DE CIENCIA, TECNOLOGÍA E INNOVACIÓN
					</span></font>
				</div>
				<!-- padding --><div style='height: 20px; line-height: 20px; font-size: 10px;'> </div>
			</td></tr>
		</table>
	</td></tr>
	<!--content 1 END-->

 	<!--content 2 -->
	<tr><td align='center' bgcolor='#ffffff' style='border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: #eff2f4;'>
	   <font face='Arial, Helvetica, sans-serif' size='3' color='#57697e' style='font-size: 14px;'>
		<table width='94%' border='0' cellspacing='0' cellpadding='0'>
			<tr><td>
				<!-- padding --><div style='height: 40px; line-height: 40px; font-size: 10px;'> </div>
              <div style='font-family: Arial, Helvetica, sans-serif; font-size: 16px; color: #57697e;'>
                <p >Estimado (a) Ponente, <b>{$datos['nombre']} {$datos['a_paterno']} {$datos['a_materno']}</b></p>
                <p>Te tenemos buenas noticias, su  <b>REGISTRO</b> para el 12° Congreso Estatal de Ciencia, Tecnología e Innovación ya ha sido habilitado.</p>
              <p>En este correo se encuentra la información de acceso y otros detalles importantes para tu acceso. Por favor lee detenidamente y guarda la información que te proporcionamos para futuras consultas.</p>
                <p><b>Información de Acceso</b></p>
                <p><b>Usuario:</b>  ".$datos['username']." <br/>
                  <b>Contraseña:</b>  ".$datos['password']." </p><br/>
                </div>
			</td></tr>
			<tr><td align='center'>
				<div style='display: inline-block;float: center;width: 49.25%;height: 40px;border: none;line-height: 40px;font-size: 17px;text-align: center;border-radius: 2px;box-shadow: none;background: #3469c4;'>
  				<a href=\"".base_url()."\" style='color: #fff; text-decoration:none; '>Acceso a Panel</a>
				</div>
			</td></tr>			
          <tr><td><br/>
              <div style='font-family: Arial, Helvetica, sans-serif; font-size: 16px; color: #57697e;'>
                <p><b>¿Cómo utilizar tus servicios?</b></p>
                <p>Te recomendamos que revises continuamente tu panel para estar al pendiente de los cambios o información proporcionada durante el congreso.</p>
                </div>
            <br/>
			</td></tr>
		</table>
		</font>
	</td></tr>
	<!--content 2 END-->


	<!--links -->
	<tr><td align='center' bgcolor='#ffffff' style='border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: #eff2f4;'>
		<table width='100%' border='0' cellspacing='0' cellpadding='0'>
			<tr><td align='center'>
				<!-- padding --><div style='height: 32px; line-height: 32px; font-size: 10px;'> </div>
        <table width='80%' align='center' cellpadding='0' cellspacing='0'>
          <tr>
            <td align='center' valign='middle' style='font-size: 12px; line-height: 21px;'>
            	<font face='Tahoma, Arial, Helvetica, sans-serif' size='2' color='#282f37' style='font-size: 12px;'>
								<span style='font-family: Arial, Helvetica, sans-serif; font-size: 10px; color: #5b9bd1;'>
		              <a href='#PRODUCTS' target='_blank' style='color: #5b9bd1; text-decoration: none;'>PROGRAMA</a>
		               |  
		              <a href='#FEATURES' target='_blank' style='color: #5b9bd1; text-decoration: none;'>REGISTRO</a>
		               |   
		              <a href='#LAYOUTS' target='_blank' style='color: #5b9bd1; text-decoration: none;'>CONVOCATORIA</a>
		               |   
		              <a href='#SUPPORT' target='_blank' style='color: #5b9bd1; text-decoration: none;'>LINEAMIENTOS</a>
		               |
		              <a href='#DISCOVER' target='_blank' style='color: #5b9bd1; text-decoration: none;'>CONTACTO</a>
              </span></font>
            </td>
          </tr>
        </table>
			</td></tr>
			<tr><td><!-- padding --><div style='height: 32px; line-height: 32px; font-size: 10px;'> </div></td></tr>
		</table>
	</td></tr>
	<!--links END-->



	<!--footer -->
	<tr><td class='iage_footer' align='center' bgcolor='#ffffff'>
		<!-- padding --><div style='height: 80px; line-height: 80px; font-size: 10px;'> </div>	

		<table width='100%' border='0' cellspacing='0' cellpadding='0'>
			<tr><td align='center'>
				<font face='Arial, Helvetica, sans-serif' size='3' color='#96a5b5' style='font-size: 13px;'>
				<span style='font-family: Arial, Helvetica, sans-serif; font-size: 13px; color: #96a5b5;'>
					© 2015 - 2021 SECRETARÍA DE INNOVACIÓN, CIENCIA Y DESARROLLO TECNOLOGICO.
                  <p>Queda prohibida la reproducción total o parcial de cualquier parte de esta obra sin la autorización previa, expresa y por escrito de su titular.</p>
				</span></font>
			</td></tr>
		</table>

		<!-- padding --><div style='height: 30px; line-height: 30px; font-size: 10px;'> </div>	
	</td></tr>
	<!--footer END-->
	<tr><td>
	<!-- padding --><div style='height: 80px; line-height: 80px; font-size: 10px;'> </div>
	</td></tr>
</table>
<!--[if gte mso 10]>
</td></tr>
</table>
<![endif]-->

</td></tr>
</table>

</div>";
		return $body;
	}



	function registro_evaluador($datos){

		$body="<div align='center'>
<table width='100%' border='0' cellspacing='0' cellpadding='0' style='min-width: 320px;'><tr><td align='center' bgcolor='#fff'>

<table border='0' cellspacing='0' cellpadding='0' class='table_width_100' width='100%' style='max-width: 680px; min-width: 300px;'>
    <tr><td>
	<!-- padding --><div style='height: 80px; line-height: 80px; font-size: 10px;'> </div>
	</td></tr>
	<!--header -->
	<tr><td align='center' bgcolor='#ffffff'>
		<!-- padding --><div style='height: 30px; line-height: 30px; font-size: 10px;'> </div>
		<table width='90%' border='0' cellspacing='0' cellpadding='0'>
			<tr><td align='left'><!--

				Item --><div class='mob_center_bl' style='float: left; display: inline-block; width: 115px;'>
					<table class='mob_center' width='115' border='0' cellspacing='0' cellpadding='0' align='left' style='border-collapse: collapse;'>
						<tr><td align='left' valign='middle'>
							<!-- padding --><div style='height: 20px; line-height: 20px; font-size: 10px;'> </div>
							<table width='115' border='0' cellspacing='0' cellpadding='0' >
								<tr><td align='left' valign='top' class='mob_center'>
									<a href='#' target='_blank' style='color: #596167; font-family: Arial, Helvetica, sans-serif; font-size: 13px;'>
									<font face='Arial, Helvetica, sans-seri; font-size: 13px;' size='3' color='#596167'>
									<img src='http://localhost/congreso12/assets/img/logo-black.png' width='270' height='50' alt='Metronic' border='0' style='display: block;' /></font></a>
								</td></tr>
							</table>
						</td></tr>
					</table></div><!-- Item END--><!--[if gte mso 10]>
					</td>
					<td align='right'>
				<![endif]--><!--Item --><div class='mob_center_bl' style='float: right; display: inline-block; width: 88px;'>
					<table width='88' border='0' cellspacing='0' cellpadding='0' align='right' style='border-collapse: collapse;'>
						<tr><td align='right' valign='middle'>
							<!-- padding --><div style='height: 20px; line-height: 20px; font-size: 10px;'> </div>
							<table width='100%' border='0' cellspacing='0' cellpadding='0' >
								<tr><td align='right'>
									<!--social -->
									<div class='mob_center_bl' style='width: 100px;'>
									<table border='0' cellspacing='0' cellpadding='0'>
										<tr><td width='30' align='center' style='line-height: 19px;'>
											<a href='https://www.facebook.com/SICDET/' target='_blank' style='color: #596167; font-family: Arial, Helvetica, sans-serif; font-size: 12px;'>
											<font face='Arial, Helvetica, sans-serif' size='2' color='#596167'>
											<img src='https://www.iconfinder.com/data/icons/social-media-hexagon-1/1024/facebook-32.png' width='32' height='32' alt='Facebook' border='0' style='display: block;' /></font></a>
										</td><td width='39' align='center' style='line-height: 19px;'>
											<a href='https://twitter.com/SICDETmichoacan/' target='_blank' style='color: #596167; font-family: Arial, Helvetica, sans-serif; font-size: 12px;'>
											<font face='Arial, Helvetica, sans-serif' size='2' color='#596167'>
											<img src='https://www.iconfinder.com/data/icons/social-media-hexagon-1/1024/twitter-32.png' width='32' height='32' alt='Twitter' border='0' style='display: block;' /></font></a>
										</td><td width='29' align='right' style='line-height: 19px;'>
											<a href='https://www.instagram.com/GobMichoacan/' target='_blank' style='color: #596167; font-family: Arial, Helvetica, sans-serif; font-size: 12px;'>
											<font face='Arial, Helvetica, sans-serif' size='2' color='#596167'>
											<img src='https://www.iconfinder.com/data/icons/social-media-hexagon-1/1024/instagram-32.png' width='32' height='32' alt='Dribbble' border='0' style='display: block;' /></font></a>

										</td><td width='29' align='right' style='line-height: 19px;'>
											<a href='https://www.youtube.com/channel/UC_uaIRgMrAl91qewRt17v5g' target='_blank' style='color: #596167; font-family: Arial, Helvetica, sans-serif; font-size: 12px;'>
											<font face='Arial, Helvetica, sans-serif' size='2' color='#596167'>
											<img src='https://www.iconfinder.com/data/icons/social-media-hexagon-1/1024/youtube-32.png' width='32' height='32' alt='Dribbble' border='0' style='display: block;' /></font></a>

										</td></tr>
									</table>
									</div>
									<!--social END-->
								</td></tr>
							</table>
						</td></tr>
					</table></div><!-- Item END--></td>
			</tr>
		</table>
		<!-- padding --><div style='height: 50px; line-height: 50px; font-size: 10px;'> </div>
	</td></tr>
	<!--header END-->

	<!--content 1 -->
	<tr><td align='center' bgcolor='#fbfcfd'>
		<table width='90%' border='0' cellspacing='0' cellpadding='0'>
			<tr><td align='center'>
				<!-- padding --><div style='height: 40px; line-height: 60px; font-size: 10px;'> </div>
				<div style='line-height: 44px;'>
					<font face='Arial, Helvetica, sans-serif' size='5' color='#57697e' style='font-size: 19px;'>
					<span style='font-family: Arial, Helvetica, sans-serif; font-size: 19px; color: #57697e;'>
						CONGRESO ESTATAL DE CIENCIA, TECNOLOGÍA E INNOVACIÓN
					</span></font>
				</div>
				<!-- padding --><div style='height: 20px; line-height: 20px; font-size: 10px;'> </div>
			</td></tr>
		</table>
	</td></tr>
	<!--content 1 END-->

 	<!--content 2 -->
	<tr><td align='center' bgcolor='#ffffff' style='border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: #eff2f4;'>
	   <font face='Arial, Helvetica, sans-serif' size='3' color='#57697e' style='font-size: 14px;'>
		<table width='94%' border='0' cellspacing='0' cellpadding='0'>
			<tr><td>
				<!-- padding --><div style='height: 40px; line-height: 40px; font-size: 10px;'> </div>
              <div style='font-family: Arial, Helvetica, sans-serif; font-size: 16px; color: #57697e;'>
                <p >Estimado (a) Evaluador (a), <b>{$datos['nombre']} {$datos['a_paterno']} {$datos['a_materno']}</b></p>
                <p>Te tenemos buenas noticias, tu  <b>REGISTRO</b> para el 12° Congreso Estatal de Ciencia, Tecnología e Innovación ya ha sido habilitado.</p>
              <p>En este correo se encuentra la información de acceso y otros detalles importantes para tu acceso. Por favor lee detenidamente y guarda la información que te proporcionamos para futuras consultas.</p>
                <p><b>Información de Acceso</b></p>
                <p><b>Usuario:</b>  ".$datos['username']." <br/>
                  <b>Contraseña:</b>  ".$datos['password']." </p><br/>
                </div>
			</td></tr>
			<tr><td align='center'>
				<div style='display: inline-block;float: center;width: 49.25%;height: 40px;border: none;line-height: 40px;font-size: 17px;text-align: center;border-radius: 2px;box-shadow: none;background: #3469c4;'>
  				<a href=\"".base_url()."\" style='color: #fff; text-decoration:none; '>Acceso a Panel</a>
				</div>
			</td></tr>			
          <tr><td><br/>
              <div style='font-family: Arial, Helvetica, sans-serif; font-size: 16px; color: #57697e;'>
                <p><b>¿Cómo utilizar tus servicios?</b></p>
                <p>Te recomendamos que revises continuamente tu panel para estar al pendiente de los cambios o información proporcionada durante el congreso.</p>
                </div>
            <br/>
			</td></tr>
		</table>
		</font>
	</td></tr>
	<!--content 2 END-->


	<!--links -->
	<tr><td align='center' bgcolor='#ffffff' style='border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: #eff2f4;'>
		<table width='100%' border='0' cellspacing='0' cellpadding='0'>
			<tr><td align='center'>
				<!-- padding --><div style='height: 32px; line-height: 32px; font-size: 10px;'> </div>
        <table width='80%' align='center' cellpadding='0' cellspacing='0'>
          <tr>
            <td align='center' valign='middle' style='font-size: 12px; line-height: 21px;'>
            	<font face='Tahoma, Arial, Helvetica, sans-serif' size='2' color='#282f37' style='font-size: 12px;'>
								<span style='font-family: Arial, Helvetica, sans-serif; font-size: 10px; color: #5b9bd1;'>
		              <a href='#PRODUCTS' target='_blank' style='color: #5b9bd1; text-decoration: none;'>PROGRAMA</a>
		               |  
		              <a href='#FEATURES' target='_blank' style='color: #5b9bd1; text-decoration: none;'>REGISTRO</a>
		               |   
		              <a href='#LAYOUTS' target='_blank' style='color: #5b9bd1; text-decoration: none;'>CONVOCATORIA</a>
		               |   
		              <a href='#SUPPORT' target='_blank' style='color: #5b9bd1; text-decoration: none;'>LINEAMIENTOS</a>
		               |
		              <a href='#DISCOVER' target='_blank' style='color: #5b9bd1; text-decoration: none;'>CONTACTO</a>
              </span></font>
            </td>
          </tr>
        </table>
			</td></tr>
			<tr><td><!-- padding --><div style='height: 32px; line-height: 32px; font-size: 10px;'> </div></td></tr>
		</table>
	</td></tr>
	<!--links END-->



	<!--footer -->
	<tr><td class='iage_footer' align='center' bgcolor='#ffffff'>
		<!-- padding --><div style='height: 80px; line-height: 80px; font-size: 10px;'> </div>	

		<table width='100%' border='0' cellspacing='0' cellpadding='0'>
			<tr><td align='center'>
				<font face='Arial, Helvetica, sans-serif' size='3' color='#96a5b5' style='font-size: 13px;'>
				<span style='font-family: Arial, Helvetica, sans-serif; font-size: 13px; color: #96a5b5;'>
					© 2015 - 2021 SECRETARÍA DE INNOVACIÓN, CIENCIA Y DESARROLLO TECNOLOGICO.
                  <p>Queda prohibida la reproducción total o parcial de cualquier parte de esta obra sin la autorización previa, expresa y por escrito de su titular.</p>
				</span></font>
			</td></tr>
		</table>

		<!-- padding --><div style='height: 30px; line-height: 30px; font-size: 10px;'> </div>	
	</td></tr>
	<!--footer END-->
	<tr><td>
	<!-- padding --><div style='height: 80px; line-height: 80px; font-size: 10px;'> </div>
	</td></tr>
</table>
<!--[if gte mso 10]>
</td></tr>
</table>
<![endif]-->

</td></tr>
</table>

</div>";
		return $body;
	}


	function registro_moderela($datos){

		$body="<div align='center'>
<table width='100%' border='0' cellspacing='0' cellpadding='0' style='min-width: 320px;'><tr><td align='center' bgcolor='#fff'>

<table border='0' cellspacing='0' cellpadding='0' class='table_width_100' width='100%' style='max-width: 680px; min-width: 300px;'>
    <tr><td>
	<!-- padding --><div style='height: 80px; line-height: 80px; font-size: 10px;'> </div>
	</td></tr>
	<!--header -->
	<tr><td align='center' bgcolor='#ffffff'>
		<!-- padding --><div style='height: 30px; line-height: 30px; font-size: 10px;'> </div>
		<table width='90%' border='0' cellspacing='0' cellpadding='0'>
			<tr><td align='left'><!--

				Item --><div class='mob_center_bl' style='float: left; display: inline-block; width: 115px;'>
					<table class='mob_center' width='115' border='0' cellspacing='0' cellpadding='0' align='left' style='border-collapse: collapse;'>
						<tr><td align='left' valign='middle'>
							<!-- padding --><div style='height: 20px; line-height: 20px; font-size: 10px;'> </div>
							<table width='115' border='0' cellspacing='0' cellpadding='0' >
								<tr><td align='left' valign='top' class='mob_center'>
									<a href='#' target='_blank' style='color: #596167; font-family: Arial, Helvetica, sans-serif; font-size: 13px;'>
									<font face='Arial, Helvetica, sans-seri; font-size: 13px;' size='3' color='#596167'>
									<img src='http://localhost/congreso12/assets/img/logo-black.png' width='270' height='50' alt='Metronic' border='0' style='display: block;' /></font></a>
								</td></tr>
							</table>
						</td></tr>
					</table></div><!-- Item END--><!--[if gte mso 10]>
					</td>
					<td align='right'>
				<![endif]--><!--Item --><div class='mob_center_bl' style='float: right; display: inline-block; width: 88px;'>
					<table width='88' border='0' cellspacing='0' cellpadding='0' align='right' style='border-collapse: collapse;'>
						<tr><td align='right' valign='middle'>
							<!-- padding --><div style='height: 20px; line-height: 20px; font-size: 10px;'> </div>
							<table width='100%' border='0' cellspacing='0' cellpadding='0' >
								<tr><td align='right'>
									<!--social -->
									<div class='mob_center_bl' style='width: 100px;'>
									<table border='0' cellspacing='0' cellpadding='0'>
										<tr><td width='30' align='center' style='line-height: 19px;'>
											<a href='https://www.facebook.com/SICDET/' target='_blank' style='color: #596167; font-family: Arial, Helvetica, sans-serif; font-size: 12px;'>
											<font face='Arial, Helvetica, sans-serif' size='2' color='#596167'>
											<img src='https://www.iconfinder.com/data/icons/social-media-hexagon-1/1024/facebook-32.png' width='32' height='32' alt='Facebook' border='0' style='display: block;' /></font></a>
										</td><td width='39' align='center' style='line-height: 19px;'>
											<a href='https://twitter.com/SICDETmichoacan/' target='_blank' style='color: #596167; font-family: Arial, Helvetica, sans-serif; font-size: 12px;'>
											<font face='Arial, Helvetica, sans-serif' size='2' color='#596167'>
											<img src='https://www.iconfinder.com/data/icons/social-media-hexagon-1/1024/twitter-32.png' width='32' height='32' alt='Twitter' border='0' style='display: block;' /></font></a>
										</td><td width='29' align='right' style='line-height: 19px;'>
											<a href='https://www.instagram.com/GobMichoacan/' target='_blank' style='color: #596167; font-family: Arial, Helvetica, sans-serif; font-size: 12px;'>
											<font face='Arial, Helvetica, sans-serif' size='2' color='#596167'>
											<img src='https://www.iconfinder.com/data/icons/social-media-hexagon-1/1024/instagram-32.png' width='32' height='32' alt='Dribbble' border='0' style='display: block;' /></font></a>

										</td><td width='29' align='right' style='line-height: 19px;'>
											<a href='https://www.youtube.com/channel/UC_uaIRgMrAl91qewRt17v5g' target='_blank' style='color: #596167; font-family: Arial, Helvetica, sans-serif; font-size: 12px;'>
											<font face='Arial, Helvetica, sans-serif' size='2' color='#596167'>
											<img src='https://www.iconfinder.com/data/icons/social-media-hexagon-1/1024/youtube-32.png' width='32' height='32' alt='Dribbble' border='0' style='display: block;' /></font></a>

										</td></tr>
									</table>
									</div>
									<!--social END-->
								</td></tr>
							</table>
						</td></tr>
					</table></div><!-- Item END--></td>
			</tr>
		</table>
		<!-- padding --><div style='height: 50px; line-height: 50px; font-size: 10px;'> </div>
	</td></tr>
	<!--header END-->

	<!--content 1 -->
	<tr><td align='center' bgcolor='#fbfcfd'>
		<table width='90%' border='0' cellspacing='0' cellpadding='0'>
			<tr><td align='center'>
				<!-- padding --><div style='height: 40px; line-height: 60px; font-size: 10px;'> </div>
				<div style='line-height: 44px;'>
					<font face='Arial, Helvetica, sans-serif' size='5' color='#57697e' style='font-size: 19px;'>
					<span style='font-family: Arial, Helvetica, sans-serif; font-size: 19px; color: #57697e;'>
						CONGRESO ESTATAL DE CIENCIA, TECNOLOGÍA E INNOVACIÓN
					</span></font>
				</div>
				<!-- padding --><div style='height: 20px; line-height: 20px; font-size: 10px;'> </div>
			</td></tr>
		</table>
	</td></tr>
	<!--content 1 END-->

 	<!--content 2 -->
	<tr><td align='center' bgcolor='#ffffff' style='border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: #eff2f4;'>
	   <font face='Arial, Helvetica, sans-serif' size='3' color='#57697e' style='font-size: 14px;'>
		<table width='94%' border='0' cellspacing='0' cellpadding='0'>
			<tr><td>
				<!-- padding --><div style='height: 40px; line-height: 40px; font-size: 10px;'> </div>
              <div style='font-family: Arial, Helvetica, sans-serif; font-size: 16px; color: #57697e;'>
                <p >Estimado (a) Moderador y/o Relator (a), <b>{$datos['nombre']} {$datos['a_paterno']} {$datos['a_materno']}</b></p>
                <p>Te tenemos buenas noticias, tu  <b>REGISTRO</b> para el 12° Congreso Estatal de Ciencia, Tecnología e Innovación ya ha sido habilitado.</p>
              <p>En este correo se encuentra la información de acceso y otros detalles importantes para tu acceso. Por favor lee detenidamente y guarda la información que te proporcionamos para futuras consultas.</p>
                <p><b>Información de Acceso</b></p>
                <p><b>Usuario:</b>  ".$datos['username']." <br/>
                  <b>Contraseña:</b>  ".$datos['password']." </p><br/>
                </div>
			</td></tr>
			<tr><td align='center'>
				<div style='display: inline-block;float: center;width: 49.25%;height: 40px;border: none;line-height: 40px;font-size: 17px;text-align: center;border-radius: 2px;box-shadow: none;background: #3469c4;'>
  				<a href=\"".base_url()."\" style='color: #fff; text-decoration:none; '>Acceso a Panel</a>
				</div>
			</td></tr>			
          <tr><td><br/>
              <div style='font-family: Arial, Helvetica, sans-serif; font-size: 16px; color: #57697e;'>
                <p><b>¿Cómo utilizar tus servicios?</b></p>
                <p>Te recomendamos que revises continuamente tu panel para estar al pendiente de los cambios o información proporcionada durante el congreso.</p>
                </div>
            <br/>
			</td></tr>
		</table>
		</font>
	</td></tr>
	<!--content 2 END-->


	<!--links -->
	<tr><td align='center' bgcolor='#ffffff' style='border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: #eff2f4;'>
		<table width='100%' border='0' cellspacing='0' cellpadding='0'>
			<tr><td align='center'>
				<!-- padding --><div style='height: 32px; line-height: 32px; font-size: 10px;'> </div>
        <table width='80%' align='center' cellpadding='0' cellspacing='0'>
          <tr>
            <td align='center' valign='middle' style='font-size: 12px; line-height: 21px;'>
            	<font face='Tahoma, Arial, Helvetica, sans-serif' size='2' color='#282f37' style='font-size: 12px;'>
								<span style='font-family: Arial, Helvetica, sans-serif; font-size: 10px; color: #5b9bd1;'>
		              <a href='#PRODUCTS' target='_blank' style='color: #5b9bd1; text-decoration: none;'>PROGRAMA</a>
		               |  
		              <a href='#FEATURES' target='_blank' style='color: #5b9bd1; text-decoration: none;'>REGISTRO</a>
		               |   
		              <a href='#LAYOUTS' target='_blank' style='color: #5b9bd1; text-decoration: none;'>CONVOCATORIA</a>
		               |   
		              <a href='#SUPPORT' target='_blank' style='color: #5b9bd1; text-decoration: none;'>LINEAMIENTOS</a>
		               |
		              <a href='#DISCOVER' target='_blank' style='color: #5b9bd1; text-decoration: none;'>CONTACTO</a>
              </span></font>
            </td>
          </tr>
        </table>
			</td></tr>
			<tr><td><!-- padding --><div style='height: 32px; line-height: 32px; font-size: 10px;'> </div></td></tr>
		</table>
	</td></tr>
	<!--links END-->



	<!--footer -->
	<tr><td class='iage_footer' align='center' bgcolor='#ffffff'>
		<!-- padding --><div style='height: 80px; line-height: 80px; font-size: 10px;'> </div>	

		<table width='100%' border='0' cellspacing='0' cellpadding='0'>
			<tr><td align='center'>
				<font face='Arial, Helvetica, sans-serif' size='3' color='#96a5b5' style='font-size: 13px;'>
				<span style='font-family: Arial, Helvetica, sans-serif; font-size: 13px; color: #96a5b5;'>
					© 2015 - 2021 SECRETARÍA DE INNOVACIÓN, CIENCIA Y DESARROLLO TECNOLOGICO.
                  <p>Queda prohibida la reproducción total o parcial de cualquier parte de esta obra sin la autorización previa, expresa y por escrito de su titular.</p>
				</span></font>
			</td></tr>
		</table>

		<!-- padding --><div style='height: 30px; line-height: 30px; font-size: 10px;'> </div>	
	</td></tr>
	<!--footer END-->
	<tr><td>
	<!-- padding --><div style='height: 80px; line-height: 80px; font-size: 10px;'> </div>
	</td></tr>
</table>
<!--[if gte mso 10]>
</td></tr>
</table>
<![endif]-->

</td></tr>
</table>

</div>";
		return $body;
	}


	function registro_logistico($datos){

		$body="<div align='center'>
<table width='100%' border='0' cellspacing='0' cellpadding='0' style='min-width: 320px;'><tr><td align='center' bgcolor='#fff'>

<table border='0' cellspacing='0' cellpadding='0' class='table_width_100' width='100%' style='max-width: 680px; min-width: 300px;'>
    <tr><td>
	<!-- padding --><div style='height: 80px; line-height: 80px; font-size: 10px;'> </div>
	</td></tr>
	<!--header -->
	<tr><td align='center' bgcolor='#ffffff'>
		<!-- padding --><div style='height: 30px; line-height: 30px; font-size: 10px;'> </div>
		<table width='90%' border='0' cellspacing='0' cellpadding='0'>
			<tr><td align='left'><!--

				Item --><div class='mob_center_bl' style='float: left; display: inline-block; width: 115px;'>
					<table class='mob_center' width='115' border='0' cellspacing='0' cellpadding='0' align='left' style='border-collapse: collapse;'>
						<tr><td align='left' valign='middle'>
							<!-- padding --><div style='height: 20px; line-height: 20px; font-size: 10px;'> </div>
							<table width='115' border='0' cellspacing='0' cellpadding='0' >
								<tr><td align='left' valign='top' class='mob_center'>
									<a href='#' target='_blank' style='color: #596167; font-family: Arial, Helvetica, sans-serif; font-size: 13px;'>
									<font face='Arial, Helvetica, sans-seri; font-size: 13px;' size='3' color='#596167'>
									<img src='http://localhost/congreso12/assets/img/logo-black.png' width='270' height='50' alt='Metronic' border='0' style='display: block;' /></font></a>
								</td></tr>
							</table>
						</td></tr>
					</table></div><!-- Item END--><!--[if gte mso 10]>
					</td>
					<td align='right'>
				<![endif]--><!--Item --><div class='mob_center_bl' style='float: right; display: inline-block; width: 88px;'>
					<table width='88' border='0' cellspacing='0' cellpadding='0' align='right' style='border-collapse: collapse;'>
						<tr><td align='right' valign='middle'>
							<!-- padding --><div style='height: 20px; line-height: 20px; font-size: 10px;'> </div>
							<table width='100%' border='0' cellspacing='0' cellpadding='0' >
								<tr><td align='right'>
									<!--social -->
									<div class='mob_center_bl' style='width: 100px;'>
									<table border='0' cellspacing='0' cellpadding='0'>
										<tr><td width='30' align='center' style='line-height: 19px;'>
											<a href='https://www.facebook.com/SICDET/' target='_blank' style='color: #596167; font-family: Arial, Helvetica, sans-serif; font-size: 12px;'>
											<font face='Arial, Helvetica, sans-serif' size='2' color='#596167'>
											<img src='https://www.iconfinder.com/data/icons/social-media-hexagon-1/1024/facebook-32.png' width='32' height='32' alt='Facebook' border='0' style='display: block;' /></font></a>
										</td><td width='39' align='center' style='line-height: 19px;'>
											<a href='https://twitter.com/SICDETmichoacan/' target='_blank' style='color: #596167; font-family: Arial, Helvetica, sans-serif; font-size: 12px;'>
											<font face='Arial, Helvetica, sans-serif' size='2' color='#596167'>
											<img src='https://www.iconfinder.com/data/icons/social-media-hexagon-1/1024/twitter-32.png' width='32' height='32' alt='Twitter' border='0' style='display: block;' /></font></a>
										</td><td width='29' align='right' style='line-height: 19px;'>
											<a href='https://www.instagram.com/GobMichoacan/' target='_blank' style='color: #596167; font-family: Arial, Helvetica, sans-serif; font-size: 12px;'>
											<font face='Arial, Helvetica, sans-serif' size='2' color='#596167'>
											<img src='https://www.iconfinder.com/data/icons/social-media-hexagon-1/1024/instagram-32.png' width='32' height='32' alt='Dribbble' border='0' style='display: block;' /></font></a>

										</td><td width='29' align='right' style='line-height: 19px;'>
											<a href='https://www.youtube.com/channel/UC_uaIRgMrAl91qewRt17v5g' target='_blank' style='color: #596167; font-family: Arial, Helvetica, sans-serif; font-size: 12px;'>
											<font face='Arial, Helvetica, sans-serif' size='2' color='#596167'>
											<img src='https://www.iconfinder.com/data/icons/social-media-hexagon-1/1024/youtube-32.png' width='32' height='32' alt='Dribbble' border='0' style='display: block;' /></font></a>

										</td></tr>
									</table>
									</div>
									<!--social END-->
								</td></tr>
							</table>
						</td></tr>
					</table></div><!-- Item END--></td>
			</tr>
		</table>
		<!-- padding --><div style='height: 50px; line-height: 50px; font-size: 10px;'> </div>
	</td></tr>
	<!--header END-->

	<!--content 1 -->
	<tr><td align='center' bgcolor='#fbfcfd'>
		<table width='90%' border='0' cellspacing='0' cellpadding='0'>
			<tr><td align='center'>
				<!-- padding --><div style='height: 40px; line-height: 60px; font-size: 10px;'> </div>
				<div style='line-height: 44px;'>
					<font face='Arial, Helvetica, sans-serif' size='5' color='#57697e' style='font-size: 19px;'>
					<span style='font-family: Arial, Helvetica, sans-serif; font-size: 19px; color: #57697e;'>
						CONGRESO ESTATAL DE CIENCIA, TECNOLOGÍA E INNOVACIÓN
					</span></font>
				</div>
				<!-- padding --><div style='height: 20px; line-height: 20px; font-size: 10px;'> </div>
			</td></tr>
		</table>
	</td></tr>
	<!--content 1 END-->

 	<!--content 2 -->
	<tr><td align='center' bgcolor='#ffffff' style='border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: #eff2f4;'>
	   <font face='Arial, Helvetica, sans-serif' size='3' color='#57697e' style='font-size: 14px;'>
		<table width='94%' border='0' cellspacing='0' cellpadding='0'>
			<tr><td>
				<!-- padding --><div style='height: 40px; line-height: 40px; font-size: 10px;'> </div>
              <div style='font-family: Arial, Helvetica, sans-serif; font-size: 16px; color: #57697e;'>
                <p >Estimado (a) Moderador y/o Relator (a), <b>{$datos['nombre']} {$datos['a_paterno']} {$datos['a_materno']}</b></p>
                <p>Te tenemos buenas noticias, tu  <b>REGISTRO</b> para el 12° Congreso Estatal de Ciencia, Tecnología e Innovación ya ha sido habilitado.</p>
              <p>En este correo se encuentra la información de acceso y otros detalles importantes para tu acceso. Por favor lee detenidamente y guarda la información que te proporcionamos para futuras consultas.</p>
                <p><b>Información de Acceso</b></p>
                <p><b>Usuario:</b>  ".$datos['username']." <br/>
                  <b>Contraseña:</b>  ".$datos['password']." </p><br/>
                </div>
			</td></tr>
			<tr><td align='center'>
				<div style='display: inline-block;float: center;width: 49.25%;height: 40px;border: none;line-height: 40px;font-size: 17px;text-align: center;border-radius: 2px;box-shadow: none;background: #3469c4;'>
  				<a href=\"".base_url()."\" style='color: #fff; text-decoration:none; '>Acceso a Panel</a>
				</div>
			</td></tr>			
          <tr><td><br/>
              <div style='font-family: Arial, Helvetica, sans-serif; font-size: 16px; color: #57697e;'>
                <p><b>¿Cómo utilizar tus servicios?</b></p>
                <p>Te recomendamos que revises continuamente tu panel para estar al pendiente de los cambios o información proporcionada durante el congreso.</p>
                </div>
            <br/>
			</td></tr>
		</table>
		</font>
	</td></tr>
	<!--content 2 END-->


	<!--links -->
	<tr><td align='center' bgcolor='#ffffff' style='border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: #eff2f4;'>
		<table width='100%' border='0' cellspacing='0' cellpadding='0'>
			<tr><td align='center'>
				<!-- padding --><div style='height: 32px; line-height: 32px; font-size: 10px;'> </div>
        <table width='80%' align='center' cellpadding='0' cellspacing='0'>
          <tr>
            <td align='center' valign='middle' style='font-size: 12px; line-height: 21px;'>
            	<font face='Tahoma, Arial, Helvetica, sans-serif' size='2' color='#282f37' style='font-size: 12px;'>
								<span style='font-family: Arial, Helvetica, sans-serif; font-size: 10px; color: #5b9bd1;'>
		              <a href='#PRODUCTS' target='_blank' style='color: #5b9bd1; text-decoration: none;'>PROGRAMA</a>
		               |  
		              <a href='#FEATURES' target='_blank' style='color: #5b9bd1; text-decoration: none;'>REGISTRO</a>
		               |   
		              <a href='#LAYOUTS' target='_blank' style='color: #5b9bd1; text-decoration: none;'>CONVOCATORIA</a>
		               |   
		              <a href='#SUPPORT' target='_blank' style='color: #5b9bd1; text-decoration: none;'>LINEAMIENTOS</a>
		               |
		              <a href='#DISCOVER' target='_blank' style='color: #5b9bd1; text-decoration: none;'>CONTACTO</a>
              </span></font>
            </td>
          </tr>
        </table>
			</td></tr>
			<tr><td><!-- padding --><div style='height: 32px; line-height: 32px; font-size: 10px;'> </div></td></tr>
		</table>
	</td></tr>
	<!--links END-->



	<!--footer -->
	<tr><td class='iage_footer' align='center' bgcolor='#ffffff'>
		<!-- padding --><div style='height: 80px; line-height: 80px; font-size: 10px;'> </div>	

		<table width='100%' border='0' cellspacing='0' cellpadding='0'>
			<tr><td align='center'>
				<font face='Arial, Helvetica, sans-serif' size='3' color='#96a5b5' style='font-size: 13px;'>
				<span style='font-family: Arial, Helvetica, sans-serif; font-size: 13px; color: #96a5b5;'>
					© 2015 - 2021 SECRETARÍA DE INNOVACIÓN, CIENCIA Y DESARROLLO TECNOLOGICO.
                  <p>Queda prohibida la reproducción total o parcial de cualquier parte de esta obra sin la autorización previa, expresa y por escrito de su titular.</p>
				</span></font>
			</td></tr>
		</table>

		<!-- padding --><div style='height: 30px; line-height: 30px; font-size: 10px;'> </div>	
	</td></tr>
	<!--footer END-->
	<tr><td>
	<!-- padding --><div style='height: 80px; line-height: 80px; font-size: 10px;'> </div>
	</td></tr>
</table>
<!--[if gte mso 10]>
</td></tr>
</table>
<![endif]-->

</td></tr>
</table>

</div>";
		return $body;
	}



	function registro_asistente($datos){

		$body="<div align='center'>
<table width='100%' border='0' cellspacing='0' cellpadding='0' style='min-width: 320px;'><tr><td align='center' bgcolor='#fff'>

<table border='0' cellspacing='0' cellpadding='0' class='table_width_100' width='100%' style='max-width: 680px; min-width: 300px;'>
    <tr><td>
	<!-- padding --><div style='height: 80px; line-height: 80px; font-size: 10px;'> </div>
	</td></tr>
	<!--header -->
	<tr><td align='center' bgcolor='#ffffff'>
		<!-- padding --><div style='height: 30px; line-height: 30px; font-size: 10px;'> </div>
		<table width='90%' border='0' cellspacing='0' cellpadding='0'>
			<tr><td align='left'><!--

				Item --><div class='mob_center_bl' style='float: left; display: inline-block; width: 115px;'>
					<table class='mob_center' width='115' border='0' cellspacing='0' cellpadding='0' align='left' style='border-collapse: collapse;'>
						<tr><td align='left' valign='middle'>
							<!-- padding --><div style='height: 20px; line-height: 20px; font-size: 10px;'> </div>
							<table width='115' border='0' cellspacing='0' cellpadding='0' >
								<tr><td align='left' valign='top' class='mob_center'>
									<a href='#' target='_blank' style='color: #596167; font-family: Arial, Helvetica, sans-serif; font-size: 13px;'>
									<font face='Arial, Helvetica, sans-seri; font-size: 13px;' size='3' color='#596167'>
									<img src='http://localhost/congreso12/assets/img/logo-black.png' width='270' height='50' alt='Metronic' border='0' style='display: block;' /></font></a>
								</td></tr>
							</table>
						</td></tr>
					</table></div><!-- Item END--><!--[if gte mso 10]>
					</td>
					<td align='right'>
				<![endif]--><!--Item --><div class='mob_center_bl' style='float: right; display: inline-block; width: 88px;'>
					<table width='88' border='0' cellspacing='0' cellpadding='0' align='right' style='border-collapse: collapse;'>
						<tr><td align='right' valign='middle'>
							<!-- padding --><div style='height: 20px; line-height: 20px; font-size: 10px;'> </div>
							<table width='100%' border='0' cellspacing='0' cellpadding='0' >
								<tr><td align='right'>
									<!--social -->
									<div class='mob_center_bl' style='width: 100px;'>
									<table border='0' cellspacing='0' cellpadding='0'>
										<tr><td width='30' align='center' style='line-height: 19px;'>
											<a href='https://www.facebook.com/SICDET/' target='_blank' style='color: #596167; font-family: Arial, Helvetica, sans-serif; font-size: 12px;'>
											<font face='Arial, Helvetica, sans-serif' size='2' color='#596167'>
											<img src='https://www.iconfinder.com/data/icons/social-media-hexagon-1/1024/facebook-32.png' width='32' height='32' alt='Facebook' border='0' style='display: block;' /></font></a>
										</td><td width='39' align='center' style='line-height: 19px;'>
											<a href='https://twitter.com/SICDETmichoacan/' target='_blank' style='color: #596167; font-family: Arial, Helvetica, sans-serif; font-size: 12px;'>
											<font face='Arial, Helvetica, sans-serif' size='2' color='#596167'>
											<img src='https://www.iconfinder.com/data/icons/social-media-hexagon-1/1024/twitter-32.png' width='32' height='32' alt='Twitter' border='0' style='display: block;' /></font></a>
										</td><td width='29' align='right' style='line-height: 19px;'>
											<a href='https://www.instagram.com/GobMichoacan/' target='_blank' style='color: #596167; font-family: Arial, Helvetica, sans-serif; font-size: 12px;'>
											<font face='Arial, Helvetica, sans-serif' size='2' color='#596167'>
											<img src='https://www.iconfinder.com/data/icons/social-media-hexagon-1/1024/instagram-32.png' width='32' height='32' alt='Dribbble' border='0' style='display: block;' /></font></a>

										</td><td width='29' align='right' style='line-height: 19px;'>
											<a href='https://www.youtube.com/channel/UC_uaIRgMrAl91qewRt17v5g' target='_blank' style='color: #596167; font-family: Arial, Helvetica, sans-serif; font-size: 12px;'>
											<font face='Arial, Helvetica, sans-serif' size='2' color='#596167'>
											<img src='https://www.iconfinder.com/data/icons/social-media-hexagon-1/1024/youtube-32.png' width='32' height='32' alt='Dribbble' border='0' style='display: block;' /></font></a>

										</td></tr>
									</table>
									</div>
									<!--social END-->
								</td></tr>
							</table>
						</td></tr>
					</table></div><!-- Item END--></td>
			</tr>
		</table>
		<!-- padding --><div style='height: 50px; line-height: 50px; font-size: 10px;'> </div>
	</td></tr>
	<!--header END-->

	<!--content 1 -->
	<tr><td align='center' bgcolor='#fbfcfd'>
		<table width='90%' border='0' cellspacing='0' cellpadding='0'>
			<tr><td align='center'>
				<!-- padding --><div style='height: 40px; line-height: 60px; font-size: 10px;'> </div>
				<div style='line-height: 44px;'>
					<font face='Arial, Helvetica, sans-serif' size='5' color='#57697e' style='font-size: 19px;'>
					<span style='font-family: Arial, Helvetica, sans-serif; font-size: 19px; color: #57697e;'>
						CONGRESO ESTATAL DE CIENCIA, TECNOLOGÍA E INNOVACIÓN
					</span></font>
				</div>
				<!-- padding --><div style='height: 20px; line-height: 20px; font-size: 10px;'> </div>
			</td></tr>
		</table>
	</td></tr>
	<!--content 1 END-->

 	<!--content 2 -->
	<tr><td align='center' bgcolor='#ffffff' style='border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: #eff2f4;'>
	   <font face='Arial, Helvetica, sans-serif' size='3' color='#57697e' style='font-size: 14px;'>
		<table width='94%' border='0' cellspacing='0' cellpadding='0'>
			<tr><td>
				<!-- padding --><div style='height: 40px; line-height: 40px; font-size: 10px;'> </div>
              <div style='font-family: Arial, Helvetica, sans-serif; font-size: 16px; color: #57697e;'>
                <p >Estimado (a) Asistente, <b>{$datos['nombre']} {$datos['a_paterno']} {$datos['a_materno']}</b></p>
                <p>Te tenemos buenas noticias, tu  <b>REGISTRO</b> para el 12° Congreso Estatal de Ciencia, Tecnología e Innovación ya ha sido habilitado.</p>
              <p>En este correo se encuentra la información de acceso y otros detalles importantes para tu acceso. Por favor lee detenidamente y guarda la información que te proporcionamos para futuras consultas.</p>
                <p><b>Información de Acceso</b></p>
                <p><b>Usuario:</b>  ".$datos['username']." <br/>
                  <b>Contraseña:</b>  ".$datos['password']." </p><br/>
                </div>
			</td></tr>
			<tr><td align='center'>
				<div style='display: inline-block;float: center;width: 49.25%;height: 40px;border: none;line-height: 40px;font-size: 17px;text-align: center;border-radius: 2px;box-shadow: none;background: #3469c4;'>
  				<a href=\"".base_url()."\" style='color: #fff; text-decoration:none; '>Acceso a Panel</a>
				</div>
			</td></tr>			
          <tr><td><br/>
              <div style='font-family: Arial, Helvetica, sans-serif; font-size: 16px; color: #57697e;'>
                <p><b>¿Cómo utilizar tus servicios?</b></p>
                <p>Te recomendamos que revises continuamente tu panel para estar al pendiente de los cambios o información proporcionada durante el congreso.</p>
                </div>
            <br/>
			</td></tr>
		</table>
		</font>
	</td></tr>
	<!--content 2 END-->


	<!--links -->
	<tr><td align='center' bgcolor='#ffffff' style='border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: #eff2f4;'>
		<table width='100%' border='0' cellspacing='0' cellpadding='0'>
			<tr><td align='center'>
				<!-- padding --><div style='height: 32px; line-height: 32px; font-size: 10px;'> </div>
        <table width='80%' align='center' cellpadding='0' cellspacing='0'>
          <tr>
            <td align='center' valign='middle' style='font-size: 12px; line-height: 21px;'>
            	<font face='Tahoma, Arial, Helvetica, sans-serif' size='2' color='#282f37' style='font-size: 12px;'>
								<span style='font-family: Arial, Helvetica, sans-serif; font-size: 10px; color: #5b9bd1;'>
		              <a href='#PRODUCTS' target='_blank' style='color: #5b9bd1; text-decoration: none;'>PROGRAMA</a>
		               |  
		              <a href='#FEATURES' target='_blank' style='color: #5b9bd1; text-decoration: none;'>REGISTRO</a>
		               |   
		              <a href='#LAYOUTS' target='_blank' style='color: #5b9bd1; text-decoration: none;'>CONVOCATORIA</a>
		               |   
		              <a href='#SUPPORT' target='_blank' style='color: #5b9bd1; text-decoration: none;'>LINEAMIENTOS</a>
		               |
		              <a href='#DISCOVER' target='_blank' style='color: #5b9bd1; text-decoration: none;'>CONTACTO</a>
              </span></font>
            </td>
          </tr>
        </table>
			</td></tr>
			<tr><td><!-- padding --><div style='height: 32px; line-height: 32px; font-size: 10px;'> </div></td></tr>
		</table>
	</td></tr>
	<!--links END-->



	<!--footer -->
	<tr><td class='iage_footer' align='center' bgcolor='#ffffff'>
		<!-- padding --><div style='height: 80px; line-height: 80px; font-size: 10px;'> </div>	

		<table width='100%' border='0' cellspacing='0' cellpadding='0'>
			<tr><td align='center'>
				<font face='Arial, Helvetica, sans-serif' size='3' color='#96a5b5' style='font-size: 13px;'>
				<span style='font-family: Arial, Helvetica, sans-serif; font-size: 13px; color: #96a5b5;'>
					© 2015 - 2021 SECRETARÍA DE INNOVACIÓN, CIENCIA Y DESARROLLO TECNOLOGICO.
                  <p>Queda prohibida la reproducción total o parcial de cualquier parte de esta obra sin la autorización previa, expresa y por escrito de su titular.</p>
				</span></font>
			</td></tr>
		</table>

		<!-- padding --><div style='height: 30px; line-height: 30px; font-size: 10px;'> </div>	
	</td></tr>
	<!--footer END-->
	<tr><td>
	<!-- padding --><div style='height: 80px; line-height: 80px; font-size: 10px;'> </div>
	</td></tr>
</table>
<!--[if gte mso 10]>
</td></tr>
</table>
<![endif]-->

</td></tr>
</table>

</div>";
		return $body;
	}



}