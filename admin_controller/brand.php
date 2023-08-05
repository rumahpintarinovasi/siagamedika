<?php
session_start();

if (!isset($_SESSION["loggedin"]) || $_SESSION["loggedin"] !== true) {
    header("Location: login.php");
    exit;
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <?php include('layout/head.php') ?>
    <meta name="description" content="">
    <meta name="author" content=""> 
    <title>Siagamedika - Brand</title>
    <?php include('layout/css.php')?>
</head>

<body id="page-top">

    <!-- Page Wrapper -->
    <div id="wrapper">

        <!-- Sidebar -->
        <?php include('layout/side_nav.php') ?> 
        <!-- End of Sidebar -->

        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content">

                <!-- Topbar -->
               <?php include ('layout/nav.php') ?>
                <!-- End of Topbar -->

                <!-- Begin Page Content -->
                <form class="container-fluid" action="php/function_php/brand_insert.php" method="post">

                <!-- Page Heading -->
                    <div class="d-sm-flex align-items-center justify-content-between mb-4">
                        <h1 class="h3 mb-0 text-gray-800">Brand</h1>
                        <button class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm" type="submit"><i class="fas fa-plus fa-sm text-white-50"></i> Add Brand</button>
                    </div>
                    
                    <p class="mb-4">DataTables is a third party plugin that is used to generate the demo table below.
                        For more information about DataTables, please visit the <a target="_blank"
                            href="https://datatables.net">official DataTables documentation</a>.</p>

                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">Data Brand</h6>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered text-nowrap" id="brand_table" width="100%" cellspacing="0">
                                    <thead>
                                        <tr>
                                            <th>SKU</th>
                                            <th>Nama</th>
                                            <th>Creation Date</th>
                                            <th width="10" >Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                        <td>BRND000</td>
                                            <td><input type="text" class="border-0 w-100 bg-transparent p-0 m-0" id="new-brand-name" style="color: grey; box-sizing: border-box;" placeholder="Isi Nama Brand..."></td>
                                            <td><input type="hidden" class="form-control border-0 bg-transparent" value="<?php echo date('d-m-Y'); ?>" id="new-creation-date" readonly><?php echo date('d-m-Y'); ?></td>
                                            <td><button class="btn rounded-circle btn-sm btn-primary mx-2" id="add-brand-btn" type="button"><i class="fas fa-plus"></i></button></td>
                                        </tr>
                                        
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    
                </form>
                <!-- /.container-fluid -->

            </div>
            <!-- End of Main Content -->

            <!-- Footer -->
           <?php include('layout/footer.php')?>
            <!-- End of Footer -->

        </div>
        <!-- End of Content Wrapper -->

    </div>
    <!-- End of Page Wrapper -->

    
    <?php include('layout/script.php') ?>
</body>
</html>