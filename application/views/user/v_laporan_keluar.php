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
				<div class="row mb-2">
					<div class="col-sm-6">
						<h1 class="m-0 text-dark"><?= $title; ?></h1>
					</div><!-- /.col -->
				</div><!-- /.row -->
			</div><!-- /.container-fluid -->
		</div>
		<!-- /.content-header -->

		<!-- Main content -->
		<section class="content">
			<div class="container-fluid">
				<div class="row">
					<div class="col-12">
						<div class="card">
							<div class="card-body">
                                <form class="mt-4 mb-4" action="<?php echo base_url(). 'user/page/detail_keluar'; ?>">
                                    <div class="row">
                                        <label class="label mr-3 py-1">Bulan</label>
                                        <select name="bulan" class="btn btn-dark text-light mr-3">
                                        <option value="1">Januari</option>
                                        <option value="2">Februari</option>
                                        <option value="3">Maret</option>
                                        <option value="4">April</option>
                                        <option value="5">Mei</option>
                                        <option value="6">Juni</option>
                                        <option value="7">Juli</option>
                                        <option value="8">Agustus</option>
                                        <option value="9">September</option>
                                        <option value="10">Oktober</option>
                                        <option value="11">November</option>
                                        <option value="12">Desember</option>
                                        </select>

                                        <select name="tahun" class="btn btn-dark text-light mr-3">
                                            <?php
                                            $mulai= date('Y') - 15;
                                            for($i = $mulai;$i<$mulai + 25;$i++){
                                                $sel = $i == date('Y') ? ' selected="selected"' : '';
                                                echo '<option value="'.$i.'"'.$sel.'>'.$i.'</option>';
                                            }
                                            ?>
                                        </select>

                                        <button type="submit" class="btn btn-danger"><i class="fa fa-search"></i> Search</button>
                                    </div>
								</form>
							</div>
						</div>
					</div>
				</div>
				<!-- /.row -->
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
