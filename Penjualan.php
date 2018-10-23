<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Penjualan extends CI_Controller {

	function __construct(){
		parent:: __construct();
		$this->load->model('Penjualan_model');
		$this->load->model('Data_model');
		$this->load->model('Admin_model');
		$this->load->model('User_model');
		$this->load->library('ECRUD/ecrud');
	}

	public function __construct()
	{
		parent::__construct();
		$this->load->helper('form');
		$this->load->model('penjualan_model');
	}
	public function penjualan_list()
	{
		$this->load->view('penjualan/list');
	}
	public function masuk_list()
	{
		$this->load->view('masuk/list');
	}
	public function masuk_barang()
	{
		$this->load->view('masuk/barang');
	}
}
