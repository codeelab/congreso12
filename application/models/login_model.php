<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');
/**
 *
 */
class Login_model extends CI_Model {

	public function __construct() {
		parent::__construct();
	}

	public function login($username,$password)
	{
		$this->db->where('username',$username);
		$this->db->where('password',$password);
		$query = $this->db->get('usuarios');
		if($query->num_rows() == 1)
		{
			return $query->row();
		}else{
			$this->session->set_flashdata('usuario_incorrecto','El usuario o la contraseña son incorrectos. Por favor intenténtelo nuevamente.');
			redirect(base_url().'login');
		}
	}


	/**
	* @desc - comprueba si existe el email
	* @param - $email string con el email del formulario
	* @return - boolean
	*/
	public function verifica_email($email)
	{
		$query = $this->db->get_where('usuarios', array('email' => $email));
        if($query->num_rows() === 1)
        {
            return TRUE;
        }
	}

	/**
	* @desc - obtiene los datos de un usuario por su email
	* @param - $email string con el email del formulario
	* @return - mixed
	*/
	public function getUserData($email)
	{
		$query = $this->db->get_where('usuarios', array('email' => $email));
        if($query->num_rows() === 1)
        {
        	//actualizamos el campo request_token del usuario y
        	//le damos 5 minutos para recuperar el password
        	if($this->startRecoveryPassword($query->row()->id_usuarios))
        	{
        		return $query->row();
        	}
        }
	}

	/**
	* @desc - actualiza el campo request_token del usuario para dar 5 minutos
	* @param - $id_usuarios int con el id del usuario
	* @return - bool
	*/
	private function startRecoveryPassword($user_id)
	{
		//damos 5 minutos al usuario para recuperar su password
        $expire_stamp = date('Y-m-d H:i:s', strtotime("+5 min"));
		$data = array("request_token" => $expire_stamp);
		$this->db->where("id_usuarios", $user_id);
		if($this->db->update("usuarios", $data))
		{
			return TRUE;
		}
	}

	/**
	* @desc - comprueba si el campo request_token es menor que la fecha actual
	* @param $token - string unico por usuario
	* @return - bool
	*/
	public function checkIsLiveToken($token)
	{
		$current_stamp = date('Y-m-d H:i:s');
		$query = $this->db->select("id_usuarios")
				 ->from("usuarios")
				 ->where("token",$token)
				 ->where("request_token >",$current_stamp)
				 ->get();

		if($query->num_rows() === 1)
		{
			return $query->row();
		}
		else
		{
			return FALSE;
		}
	}

	/**
	* @desc - hacemos el update del password del usuario
	* @param $data - array con datos para actualizar
	* @return - bool
	*/
	public function change_password($data = array())
	{
		$this->db->where("id_usuarios",$data["user_id"]);
		unset($data['user_id']);//eliminamos la clave id_usuarios del array
		if($this->db->update("usuarios", $data))
		{
			return TRUE;
		}
		else
		{
			return FALSE;
		}
	}



}
