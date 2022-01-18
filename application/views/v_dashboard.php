<?php $this->load->view('template/v_header'); ?>

<div class="wrapper">
	<!-- Navbar -->
	<?php $this->load->view('template/v_navbar'); ?>
	<!-- End of Navbar -->

	<!-- Sidebar -->
	<?php $this->load->view('template/v_sidebar'); ?>
	<!-- End of Sidebar -->

	<!-- Content Wrapper. Contains page content -->
	<div class="content-wrapper">
		<!-- Content Header (Page header) -->
		<div class="content-header">
			<div class="container-fluid">
				
			</div><!-- /.container-fluid -->
		</div>
		<!-- /.content-header -->

		<!-- Main content -->
		<section class="content">
			<nav aria-label="breadcrumb">
				<ol class="breadcrumb">
					<li class="breadcrumb-item active" aria-current="page"><strong class="text-dark">Dashboard</strong></li>
				</ol>
			</nav>
			<div class="container-fluid">
				<!-- Info boxes -->
				<div class="row">
					<div class="col-12 col-sm-6 col-md-3">
						<div class="info-box">
							<span class="info-box-icon bg-gradient-danger"><i class="fa fa-inbox"></i></span>

							<div class="info-box-content">
								<span class="info-box-text">Dokumen Masuk</span>
								<h3 class="info-box-number"><?= number_format($dok_masuk) ?></h3>
							</div>
							<!-- /.info-box-content -->
						</div>
						<!-- /.info-box -->
					</div>
					<!-- /.col -->
					<div class="col-12 col-sm-6 col-md-3">
						<div class="info-box mb-3">
							<span class="info-box-icon bg-gradient-danger"><i class="fa fa-paper-plane"></i></span>

							<div class="info-box-content">
								<span class="info-box-text">Dokumen Keluar</span>
								<h3 class="info-box-number"><?= number_format($dok_keluar) ?></h3>
							</div>
							<!-- /.info-box-content -->
						</div>
						<!-- /.info-box -->
					</div>
					<!-- /.col -->

					<!-- fix for small devices only -->
					<div class="clearfix hidden-md-up"></div>

					<div class="col-12 col-sm-6 col-md-3">
						<div class="info-box mb-3">
							<span class="info-box-icon bg-gradient-danger"><i class="fa fa-share"></i></span>

							<div class="info-box-content">
								<span class="info-box-text">Dokumen Disposisi</span>
								<h3 class="info-box-number"><?= number_format($disposisi) ?></h3>
							</div>
							<!-- /.info-box-content -->
						</div>
						<!-- /.info-box -->
					</div>
					<!-- /.col -->
					<div class="col-12 col-sm-6 col-md-3">
						<div class="info-box mb-3">
							<span class="info-box-icon bg-gradient-danger"><i class="fa fa-users"></i></span>

							<div class="info-box-content">
								<span class="info-box-text">Jumlah Pegawai</span>
								<h3 class="info-box-number"><?= number_format($pegawai) ?></h3>
							</div>
							<!-- /.info-box-content -->
						</div>
						<!-- /.info-box -->
					</div>
					<!-- /.col -->
				</div>
				<div class="row">
					<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
						<ol class="carousel-indicators">
							<li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
							<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
						</ol>
						<div class="carousel-inner">
							<div class="carousel-item active">
							<img class="d-block w-100" src="<?= base_url('assets/slide1.jpg') ?>" alt="First slide">
							</div>
							<div class="carousel-item">
							<img class="d-block w-100" src="<?= base_url('assets/slide2.jpg') ?>" alt="Second slide">
							</div>
						</div>
						<a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
							<span class="carousel-control-prev-icon" aria-hidden="true"></span>
							<span class="sr-only">Previous</span>
						</a>
						<a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
							<span class="carousel-control-next-icon" aria-hidden="true"></span>
							<span class="sr-only">Next</span>
						</a>
					</div>
				</div>
				<!-- /.row -->
				<!-- <div class="row">
					<div class="col-12">
						<div class="alert alert-info" role="alert">
							<h4 class="alert-heading">Selamat Datang</h4>
							<p>Aww yeah, you successfully read this important alert message.</p>
						</div>
					</div>
				</div> -->
			</div>
			<!--/. container-fluid -->
		</section>
		<!-- /.content -->
	</div>
	<!-- /.content-wrapper -->
</div>

<!-- Footer -->
<?php $this->load->view('template/v_footer'); ?>
<!-- End of Footer -->
