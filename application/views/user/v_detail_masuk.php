<?php 
    function nama_bulan($m)
    {
        if (trim($m) != '' and $m != '0') {
            $getbulan = array();
            $getbulan[1] = 'Januari';
            $getbulan[2] = 'Februari';
            $getbulan[3] = 'Maret';
            $getbulan[4] = 'April';
            $getbulan[5] = 'Mei';
            $getbulan[6] = 'Juni';
            $getbulan[7] = 'Juli';
            $getbulan[8] = 'Agustus';
            $getbulan[9] = 'September';
            $getbulan[10] = 'Oktober';
            $getbulan[11] = 'November';
            $getbulan[12] = 'Desember';
    
            return $getbulan[(int) $m];
        }
    }
?>
<title>SDN Sukamenak 09</title>

<nav class="navbar navbar-dark">
	<ul class="navbar-nav ml-auto">
        <li class="nav-item">
			<span class="nav-link mr-4" style="cursor: pointer">
                <a href="http://localhost/e-arsip/user/page/laporan-dokumen-masuk" class="text-light"><i class="fa fa-fw fa-arrow-circle-left"></i> Back</a>
			</span>
		</li>
	</ul>
</nav>


<section class="content">
    <div class="container mt-4">
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb">
                <li class="breadcrumb-item active" aria-current="page"><i class="fas fa-envelope-open text-dark"></i><strong class="text-dark">  Detail Laporan Dokumen Masuk</strong></li>
            </ol>
        </nav>
        <div class="container col-11">
            <div class="card">
                <div class="card-header">
                    <p class="h5 mt-2 ">Laporan Bulan <?= nama_bulan($bulan)?> Tahun <?= $tahun ?></p>
                </div>
                <div class="card-body">
                    <table class="table table-striped w-100 dt-responsive nowrap mb-5" id="dataTable">
                        <thead>
                            <tr>
                                <th>No. </th>
                                <th>Detail Dokumen</th>
                                <th>Keterangan</th>
								<th>Opsi</th>
                            </tr>
                        </thead>
                        <tbody>
                        <?php 
                            $no = 1;
                            foreach($data as $values){
                        ?>
                            <tr style="font-size: 13px; ">
                                <td><?= $no++ ?></td>
                                <td><strong><?= $values->perihal ?></strong><hr>Dari : <?= $values->dari ?> <br>No : <?= $values->no_dokumen ?></td>
                                <td><?= "Tgl Dibuat : ". $values->tgl_dokumen ?><br><?= "Tgl Disposisi : ".$values->tgl_disposisi ?></td>
								<td>
									<a href="<?= base_url('assets/' . $values->path_folder . '/' . $values->file_dokumen) ?>" class="badge badge-info"><i class="fa fa-download"></i></a>
									<a href="#" onclick="printJS('<?= base_url('assets/' . $values->path_folder . '/' . $values->file_dokumen) ?>')" class="badge badge-success"><i class="fas fa-print"></i></a>
								</td>
                                <td>
									
								</td>
                            </tr>
                        <?php } ?>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- Favivon -->
<link rel="shortcut icon" href="<?= base_url('assets/logo-sd.png') ?>">
	<!-- Custome CSS -->
	<link rel="stylesheet" href="<?= base_url('assets/style.css') ?>">
	<!-- Font Awesome Icons -->
	<link rel="stylesheet" href="<?= base_url('assets/') . 'plugins/fontawesome-free/css/all.min.css' ?>">
	<!-- overlayScrollbars -->
	<link rel="stylesheet" href="<?= base_url('assets/') . 'plugins/overlayScrollbars/css/OverlayScrollbars.min.css' ?>">
	<!-- Theme style -->
	<link rel="stylesheet" href="<?= base_url('assets/') . 'dist/css/adminlte.min.css' ?>">
	<!-- Sweetalert2 -->
	<link rel="stylesheet" href="<?= base_url('assets/') . 'plugins/sweetalert2/sweetalert2.min.css' ?>">
	<!-- DataTables BS4 -->
	<link rel="stylesheet" href="<?= base_url('assets/') . 'plugins/datatables-bs4/css/dataTables.bootstrap4.min.css' ?>">
	<!-- Bootstrap Select -->
	<link rel="stylesheet" href="<?= base_url('assets/') . 'plugins/bootstrap-select/css/bootstrap-select.min.css' ?>">
	<!-- Bootstrap Select2 -->
	<link rel="stylesheet" href="<?= base_url('assets/') . 'plugins/select2/css/select2.min.css' ?>">
	<!-- Bootstrap Datepicker -->
	<link rel="stylesheet" href="<?= base_url('assets/') . 'plugins/bootstrap-datepicker/css/bootstrap-datepicker.min.css' ?>">
	<!-- Google Font: Source Sans Pro -->
	<link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">


	<!-- REQUIRED SCRIPTS -->
	<!-- jQuery -->
	<script src="<?= base_url('assets/') . 'plugins/jquery/jquery.min.js' ?>"></script>
	<!-- Bootstrap -->
	<script src="<?= base_url('assets/') . 'plugins/bootstrap/js/bootstrap.bundle.min.js' ?>"></script>
	<!-- overlayScrollbars -->
	<script src="<?= base_url('assets/') . 'plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js' ?>"></script>
	<!-- AdminLTE App -->
	<script src="<?= base_url('assets/') . 'dist/js/adminlte.js' ?>"></script>
	<!-- Sweetalert2 -->
	<script src="<?= base_url('assets/') . 'plugins/sweetalert2/sweetalert2.min.js' ?>"></script>
	<!-- DataTables BS4 -->
	<script src="<?= base_url('assets/') . 'plugins/datatables/jquery.dataTables.min.js' ?>"></script>
	<script src="<?= base_url('assets/') . 'plugins/datatables-bs4/js/dataTables.bootstrap4.min.js' ?>"></script>
	<!-- Bootstrap Select -->
	<script src="<?= base_url('assets/') . 'plugins/bootstrap-select/js/bootstrap-select.min.js' ?>"></script>
	<!-- Bootstrap Select2 -->
	<script src="<?= base_url('assets/') . 'plugins/select2/js/select2.min.js' ?>"></script>
	<!-- Bootstrap Datepicker -->
	<script src="<?= base_url('assets/') . 'plugins/bootstrap-datepicker/js/bootstrap-datepicker.min.js' ?>"></script>
	<!-- Pages Script -->
	<script>
		$(document).ready(function() {
			const url = '<?= $this->uri->segment('3'); ?>';

			$('.nav-link').removeClass('active');
			if (url == 'dashboard') {
				$('#' + url).addClass('active');
			} else {
				$('#' + url).addClass('active');
				$('#' + url).closest('ul').prev().addClass('active');
				$('#' + url).closest('ul').prev().parent('.has-treeview').addClass('menu-open');
			}

			$('.date').datepicker({
				container: '#datepicker',
				format: 'dd/mm/yyyy',
				todayHighlight: true,
				autoclose: true,
				orientation: 'top auto'
			});
		});

		function CheckNumeric() {
			return event.keyCode >= 48 && event.keyCode <= 57;
		}
	</script>

	<script src="<?= base_url(); ?>assets/vendor/printjs/src/js/print.js"></script>
	<script src="<?= base_url(); ?>assets/vendor/print.min.js"></script>
	<!-- Datatable -->
	<script src="<?= base_url(); ?>assets/vendor/datatables/jquery.dataTables.min.js"></script>
	<script src="<?= base_url(); ?>assets/vendor/datatables/dataTables.bootstrap4.min.js"></script>
	<script src="<?= base_url(); ?>assets/vendor/datatables/buttons/js/dataTables.buttons.min.js"></script>
	<script src="<?= base_url(); ?>assets/vendor/datatables/buttons/js/buttons.bootstrap4.min.js"></script>
	<script src="<?= base_url(); ?>assets/vendor/datatables/jszip/jszip.min.js"></script>
	<script src="<?= base_url(); ?>assets/vendor/datatables/pdfmake/pdfmake.min.js"></script>
	<script src="<?= base_url(); ?>assets/vendor/datatables/pdfmake/vfs_fonts.js"></script>
	<script src="<?= base_url(); ?>assets/vendor/datatables/buttons/js/buttons.html5.min.js"></script>
	<script src="<?= base_url(); ?>assets/vendor/datatables/buttons/js/buttons.print.min.js"></script>
	<script src="<?= base_url(); ?>assets/vendor/datatables/buttons/js/buttons.colVis.min.js"></script>
	<script src="<?= base_url(); ?>assets/vendor/datatables/responsive/js/dataTables.responsive.min.js"></script>
	<script src="<?= base_url(); ?>assets/vendor/datatables/responsive/js/responsive.bootstrap4.min.js"></script>

	<!-- PAGE PLUGINS -->
	<!-- jQuery Mapael -->
	<script src="<?= base_url('assets/') . 'plugins/jquery-mousewheel/jquery.mousewheel.js' ?>"></script>
	<script src="<?= base_url('assets/') . 'plugins/raphael/raphael.min.js' ?>"></script>
	<script src="<?= base_url('assets/') . 'plugins/jquery-mapael/jquery.mapael.min.js' ?>"></script>
	<script src="<?= base_url('assets/') . 'plugins/jquery-mapael/maps/usa_states.min.js' ?>"></script>
	<!-- ChartJS -->
	<script src="<?= base_url('assets/') . 'plugins/chart.js/Chart.min.js' ?>"></script>

    <!-- Data table -->
<script type="text/javascript">
$(document).ready(function() {
    var table = $('#dataTable').DataTable({
        // buttons: ['copy', 'csv', 'print', 'excel', 'pdf'],
        buttons: ['print', 'excel', 'pdf'],
        dom: "<'row px-2 px-md-4 pt-2'<'col-md-3'l><'col-md-5 text-center'B><'col-md-4'f>>" +
            "<'row'<'col-md-12'tr>>" +
            "<'row px-2 px-md-4 py-3'<'col-md-5'i><'col-md-7'p>>",
        lengthMenu: [
            [5, 10, 25, 50, 100, -1],
            [5, 10, 25, 50, 100, "All"]
        ],
        columnDefs: [{
            targets: -1,
            orderable: false,
            searchable: false
        }]
    });

    table.buttons().container().appendTo('#dataTable_wrapper .col-md-5:eq(0)');
});
</script>