<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Masuk extends CI_Controller {

	function __construct(){
		parent:: __construct();
		$this->load->model('Penjualan_model');
		$this->load->model('Data_model');
		$this->load->model('Admin_model');
		$this->load->model('User_model');
		$this->load->library('ECRUD/ecrud');
	}
	public function masuk_list()
	{
		$this->load->view('masuk/list');
	}
	public function masuk_barang()
	{
		$a['ad'] = $this->db->get('barang')->result();
		$this->load->view('masuk/barang', $a);
	}
	public function tambah()
	{
		$this->load->view('masuk/tambah');
	}

	public function table()
	{
		$this->load->view('masuk/table_barang');
	}
	public function tambah_kategori()
	{
		$this->load->view('masuk/tambah_kategori');
	}
	public function kategori()
	{
		$this->load->view('masuk/kategori');
	}
	public function tambah_artikel()
	{
		$this->load->view('masuk/tambah_artikel');
	}
	public function artikel()
	{
		$this->load->view('masuk/artikel');
	}
	public function profil()
	{
		$this->load->view('masuk/profil');
	}
}
