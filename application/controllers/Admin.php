<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

/**
 * This controller can be accessed 
 * for Admin group only
 */
class Admin extends MY_Controller {

	protected $access = "Admin";

	public function index()
	{
		$this->load->view("theme/header");
        $this->load->view("theme/menu");
		$this->load->view("admin");
		$this->load->view("ftheme/ooter");
	}

}