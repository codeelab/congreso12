<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Inicio_model extends CI_Model {

function validate_user($clave, $usuario ) {
    // Build a query to retrieve the user's details
    // based on the received username and password
  $this->db->select('*');
    $this->db->from('clave');
    $this->db->where('clave',$clave );
    $this->db->where('usuario',$usuario);
    $login = $this->db->get()->result();

    // The results of the query are stored in $login.
    // If a value exists, then the user account exists and is validated
    if ( is_array($login) && count($login) == 1 ) {
        // Set the users details into the $details property of this class
        $this->details = $login[0];
        // Call set_session to set the user's session vars via CodeIgniter
        $this->set_session();
        return true;
    }

    return false;
}


function set_session() {
    // session->set_userdata is a CodeIgniter function that
    // stores data in a cookie in the user's browser.  Some of the values are built in
    // to CodeIgniter, others are added (like the IP address).  See CodeIgniter's documentation for details.
    $this->session->set_userdata( array(
            'clave'=>$this->details->clave,
            'usuario'=>$this->details->usuario,
            'isLoggedIn'=>true
        )
    );
}




}