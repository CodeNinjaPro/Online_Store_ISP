<!--
=========================================================
* Paper Dashboard 2 - v2.0.1
=========================================================

* Product Page: https://www.creative-tim.com/product/paper-dashboard-2
* Copyright 2020 Creative Tim (https://www.creative-tim.com)

Coded by www.creative-tim.com

 =========================================================

* The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
-->
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8" />
        <link rel="apple-touch-icon" sizes="76x76" href="assets/img/apple-icon.png">
        <link rel="icon" type="image/png" href="assets/img/favicon.png">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
        <title>
            Online Store
        </title>
        <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
        <!--     Fonts and icons     -->
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200" rel="stylesheet" />
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" rel="stylesheet">
        <!-- CSS Files -->
        <link href="assets/css/bootstrap.min.css" rel="stylesheet" />
        <link href="assets/css/paper-dashboard.css?v=2.0.1" rel="stylesheet" />
        <!-- CSS Just for demo purpose, don't include it in your project -->
        <link href="assets/demo/demo.css" rel="stylesheet" />
    </head>

    <body class="" onload="load()">
        <div class="wrapper ">
            <div class="sidebar" data-color="white" data-active-color="danger">
                <div class="logo">
                    <a href="https://www.creative-tim.com" class="simple-text logo-mini">
                        <div class="logo-image-small">
                            <img src="assets/img/logo-small.png">
                        </div>
                        <!-- <p>CT</p> -->
                    </a>
                    <a href="https://www.creative-tim.com" class="simple-text logo-normal">
                        Gainmart.lk
                        <!-- <div class="logo-image-big">
                          <img src="assets/img/logo-big.png">
                        </div> -->
                    </a>
                </div>
                <div class="sidebar-wrapper">
                    <ul class="nav">

                        <li>
                            <a href="invoice.jsp">
                                <i class="nc-icon nc-paper"></i>
                                <p>Invoice</p>
                            </a>
                        </li>
                        <li>
                            <a href="delivery.jsp">
                                <i class="nc-icon nc-single-02"></i>
                                <p>Delivery</p>
                            </a>
                        </li>
                        <li>
                            <a href="customer.jsp">
                                <i class="nc-icon nc-single-02"></i>
                                <p>Customer</p>
                            </a>
                        </li>
                        <li>
                            <a href="grn.jsp">
                                <i class="nc-icon nc-bookmark-2"></i>
                                <p>GRN</p>
                            </a>
                        </li>                        
                        <li>
                            <a href="supplier.jsp">
                                <i class="nc-icon nc-single-02"></i>
                                <p>Supplier</p>
                            </a>
                        </li>                        
                        <li>
                            <a href="item.jsp">
                                <i class="nc-icon nc-box"></i>
                                <p>Item Registration</p>
                            </a>
                        </li>                        
                        <li>
                            <a href="stock.jsp">
                                <i class="nc-icon nc-chart-bar-32"></i>
                                <p>Stock</p>
                            </a>
                        </li>                        
                        <li>
                            <a href="employee.jsp">
                                <i class="nc-icon nc-user-run"></i>
                                <p>Employee</p>
                            </a>
                        </li>                        
                        <li>
                            <a href="attendance.jsp">
                                <i class="nc-icon nc-calendar-60"></i>
                                <p>Attendance</p>
                            </a>
                        </li>                        
                        <li>
                            <a href="salary.jsp">
                                <i class="nc-icon nc-money-coins"></i>
                                <p>Salary</p>
                            </a>
                        </li>                        
                        <li class="active ">
                            <a href="user.jsp">
                                <i class="nc-icon nc-circle-10"></i>
                                <p>User</p>
                            </a>
                        </li>

                    </ul>
                </div>
            </div>
            <div class="main-panel">
                <!-- Navbar -->
                <nav class="navbar navbar-expand-lg navbar-absolute fixed-top navbar-transparent">
                    <div class="container-fluid">
                        <div class="navbar-wrapper">
                            <div class="navbar-toggle">
                                <button type="button" class="navbar-toggler">
                                    <span class="navbar-toggler-bar bar1"></span>
                                    <span class="navbar-toggler-bar bar2"></span>
                                    <span class="navbar-toggler-bar bar3"></span>
                                </button>
                            </div>
                            <a class="navbar-brand" href="invoice.jsp">Online Store</a>
                        </div>
                        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navigation" aria-controls="navigation-index" aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-bar navbar-kebab"></span>
                            <span class="navbar-toggler-bar navbar-kebab"></span>
                            <span class="navbar-toggler-bar navbar-kebab"></span>
                        </button>
                        <div class="collapse navbar-collapse justify-content-end" id="navigation">
                            <form>
                                <div class="input-group no-border">
                                    <input type="text" value="" class="form-control" placeholder="Search...">
                                    <div class="input-group-append">
                                        <div class="input-group-text">
                                            <i class="nc-icon nc-zoom-split"></i>
                                        </div>
                                    </div>
                                </div>
                            </form>
                            <ul class="navbar-nav">
                                <li class="nav-item btn-rotate dropdown">
                                    <a class="nav-link dropdown-toggle" href="http://example.com" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        <i class="nc-icon nc-circle-10"></i>
                                        <p>
                                            <span class="d-lg-none d-md-block">User Profile</span>
                                        </p>
                                    </a>
                                    <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownMenuLink">
                                        <a class="dropdown-item" >User</a>
                                        <a class="dropdown-item" >User Type</a>
                                        <a class="dropdown-item" href="logout.jsp">Logout</a>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </nav>
                <!-- End Navbar -->
                <div class="content">

                    <section class="forms">
                        <div class="container-fluid">
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="card">
                                        <div class="card-header d-flex align-items-center">
                                            <h3 class="h4">user</h3>
                                        </div>
                                        <div class="card-body">
                                            <form class="form-horizontal">
                                                <div class="form-group row">
                                                    <div class="col-sm-9">
                                                        <input id="user_id" type="hidden"	value="0" class="form-control form-control-warning">
                                                    </div>
                                                </div>
                                                <div class="form-group row">
                                                    <label class="col-sm-3 form-control-label">emp id</label>
                                                    <div class="col-sm-9">
                                                        <input id="emp_id" type="text"	placeholder="emp id" class="form-control form-control-warning">
                                                    </div>
                                                </div>
                                                <div class="form-group row">
                                                    <label class="col-sm-3 form-control-label">user type</label>
                                                    <div class="col-sm-9">
                                                        <input id="user_type" type="text"	placeholder="user type" class="form-control form-control-warning">
                                                    </div>
                                                </div>
                                                <div class="form-group row">
                                                    <label class="col-sm-3 form-control-label">username</label>
                                                    <div class="col-sm-9">
                                                        <input id="username" type="text"	placeholder="username" class="form-control form-control-warning">
                                                    </div>
                                                </div>
                                                <div class="form-group row">
                                                    <label class="col-sm-3 form-control-label">password</label>
                                                    <div class="col-sm-9">
                                                        <input id="password" type="text"	placeholder="password" class="form-control form-control-warning">
                                                    </div>
                                                </div>
                                                <div class="form-group row">
                                                    <label class="col-sm-3 form-control-label">date time</label>
                                                    <div class="col-sm-9">
                                                        <input id="date_time" type="text"	placeholder="date time" class="form-control form-control-warning">
                                                    </div>
                                                </div>
                                                <div class="form-group row">
                                                    <div class="col-sm-9 offset-sm-3">
                                                        <input onclick="save()" type="button" value="Save" class="btn btn-primary">
                                                        <input onclick="update()" type="button" value="Update" class="btn btn-primary">
                                                        <input onclick="delet()" type="button" value="Delete" class="btn btn-primary">
                                                        <input type="reset" value="Reset" class="btn btn-primary">
                                                    </div>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-lg-12">
                                    <div class="card">
                                        <div class="card-header d-flex align-items-center">
                                            <h3 class="h4">History</h3>
                                        </div>
                                        <div class="card-body">
                                            <div class="table-responsive">
                                                <table class="table table-hover" id="table">
                                                    <thead>
                                                        <tr>
                                                            <th>#</th>
                                                            <th>user id</th>
                                                            <th>emp id</th>
                                                            <th>user type</th>
                                                            <th>username</th>
                                                            <th>password</th>
                                                            <th>date time</th>
                                                        </tr>
                                                    </thead>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                </div>


                            </div>
                        </div>
                    </section>

                </div>
                <footer class="footer footer-black  footer-white ">
                    <div class="container-fluid">
                        <div class="row">
                            <nav class="footer-nav">
                                <ul>
                                    <li><a href="https://www.creative-tim.com" target="_blank">Creative Tim</a></li>
                                    <li><a href="https://www.creative-tim.com/blog" target="_blank">Blog</a></li>
                                    <li><a href="https://www.creative-tim.com/license" target="_blank">Licenses</a></li>
                                </ul>
                            </nav>
                            <div class="credits ml-auto">
                                <span class="copyright">
                                    © <script>
                                        document.write(new Date().getFullYear())
                                    </script>, made with <i class="fa fa-heart heart"></i> by Creative Tim
                                </span>
                            </div>
                        </div>
                    </div>
                </footer>
            </div>
        </div>
        <!--   Core JS Files   -->
        <script src="assets/js/core/jquery.min.js"></script>
        <script src="assets/js/core/popper.min.js"></script>
        <script src="assets/js/core/bootstrap.min.js"></script>
        <script src="assets/js/plugins/perfect-scrollbar.jquery.min.js"></script>
        <!--  Google Maps Plugin    -->
        <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>
        <!-- Chart JS -->
        <script src="assets/js/plugins/chartjs.min.js"></script>
        <!--  Notifications Plugin    -->
        <script src="assets/js/plugins/bootstrap-notify.js"></script>
        <!-- Control Center for Now Ui Dashboard: parallax effects, scripts for the example pages etc -->
        <script src="assets/js/paper-dashboard.min.js?v=2.0.1" type="text/javascript"></script><!-- Paper Dashboard DEMO methods, don't include it in your project! -->
        <script src="assets/demo/demo.js"></script>
        <script src="Ajax/jquery.3.2.1.min.js" type="text/javascript"></script>
        <script src="Ajax/ajax.js" type="text/javascript"></script>
        <script src="Ajax/UserJS.js" type="text/javascript"></script>

    </body>

</html>