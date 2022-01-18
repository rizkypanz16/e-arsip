<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Laporan_dok_masuk extends CI_Controller
{
	public function __construct()
	{
		parent::__construct();
		$this->load->model('M_login', 'm_login');
		$this->load->model('M_dokumen_keluar', 'm_dok_keluar');
		$this->load->model('M_jenis_dokumen', 'm_jns_dokumen');
		$this->load->model('M_kategori', 'm_kategori');
		$this->load->model('M_unit_tujuan', 'm_tujuan');
		$this->load->model('M_pegawai', 'm_pegawai');
		$this->load->model('M_config', 'm_config');

		$is_login = $this->session->userdata('is_login');

		if ($is_login === true) {
			$cek_role = $this->m_login->get_user($this->session->userdata('username'));
			if ($cek_role['lv_user'] != $this->session->userdata('lv_user')) {
				session_destroy();
				redirect(base_url());
			}
		} else {
			session_destroy();
			redirect(base_url());
		}
	}

	public function index()
	{
		$page = 'user/v_laporan_masuk';
		
		$data['title'] = 'Laporan Dokumen Masuk';

		$this->load->view($page, $data);
	}
	public function detail_masuk(){
		$bulan = $this->input->get('bulan');
		$tahun = $this->input->get('tahun');
		// $id_user = $this->session->userdata('id_user');
		// $jml_data = "SELECT count(id) as jumlah FROM item_pekerjaan WHERE month(created_at)=".$bulan." and year(created_at)=".$tahun ." and id_user=".$id_user;
		// $query1 = $this->db->query($jml_data)->row();
		$query2 = "SELECT * FROM tbl_dok_masuk WHERE month(tgl_dokumen)=".$bulan." and year(tgl_dokumen)=".$tahun;
		$data = $this->db->query($query2)->result();
		// echo '<pre>' , var_dump($data) , '</pre>';die;
		$this->load->view('user/v_detail_masuk.php', [
			'data' => $data,
			'bulan' => $bulan,
			'tahun' => $tahun
		]);
	}
}
