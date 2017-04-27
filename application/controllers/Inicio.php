<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Inicio extends CI_Controller {

    public function __construct()
    {
        parent::__construct();
    }


	public function index()
	{
        $this->load->view("theme/header");
        $this->load->view("theme/menu");
        $this->load->view('inicio');
        $this->load->view("theme/footer");
	}

    public function contacto()
    {
        $this->load->view("theme/header");
        $this->load->view("theme/menu");
        $this->load->view('contacto');
        $this->load->view("theme/footer");
    }

    public function mapa()
    {
        $this->load->view("theme/header");
        $this->load->view("theme/menu");
        $this->load->view('mapa');
        $this->load->view("theme/footer");
    }

    public function registro()
    {
        $this->load->view("theme/header");
        $this->load->view("theme/menu");
        $this->load->view('registro');
        $this->load->view("theme/footer");
    }

    public function login()
    {
        $this->load->view("theme/header");
        $this->load->view("theme/menu");
        $this->load->view('login');
        $this->load->view("theme/footer");
    }

}

?>