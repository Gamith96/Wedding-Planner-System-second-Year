
<%@page import="wedding.beans.ShowSpRequestDetailsBean"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>SB Admin - showRequests</title>

        <!-- Bootstrap core CSS-->
        <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

        <!-- Custom fonts for this template-->
        <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">

        <!-- Page level plugin CSS-->
        <link href="vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">

        <!-- Custom styles for this template-->
        <link href="css/sb-admin.css" rel="stylesheet">

    </head>

    <body id="page-top">

        <%

            response.setHeader("Cache-Control", "no-cache, no-store,must-revalidate");
            response.setHeader("Pragma", "no-cache");
            response.setHeader("Expires", "0");
            if (session.getAttribute("email") == null) {

                response.sendRedirect("admin_login.jsp");

            }


        %>


        <nav class="navbar navbar-expand navbar-dark bg-dark static-top">

            <a class="navbar-brand mr-1" href="ShowSpRequestDetailsServlet">Wedding Bells</a>
            <a class="navbar-brand" href="ShowSpRequestDetailsServlet">
                <img src="wedding-couple.png" alt="logo" style="width:40px;">
            </a>


            <button class="btn btn-link btn-sm text-white order-1 order-sm-0" id="sidebarToggle">
                <i class="fas fa-bars"></i>
            </button>
            <h4>Welcome ${email}</h4>
            <!-- Navbar Search -->
            <form class="d-none d-md-inline-block form-inline ml-auto mr-0 mr-md-3 my-2 my-md-0">
                <div class="input-group">
                    <input type="text" class="form-control" placeholder="Search for..." aria-label="Search" aria-describedby="basic-addon2">
                    <div class="input-group-append">
                        <button class="btn btn-primary" type="button">
                            <i class="fas fa-search"></i>
                        </button>
                    </div>
                </div>
            </form>

            <!-- Navbar -->
            <ul class="navbar-nav ml-auto ml-md-0">
                <li class="nav-item dropdown no-arrow mx-1">
                    <a class="nav-link dropdown-toggle" href="#" id="alertsDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <i class="fas fa-bell fa-fw"></i>
                        <span class="badge badge-danger">9+</span>
                    </a>
                    <div class="dropdown-menu dropdown-menu-right" aria-labelledby="alertsDropdown">
                        <a class="dropdown-item" href="#">Action</a>
                        <a class="dropdown-item" href="#">Another action</a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="#">Something else here</a>
                    </div>
                </li>
                <li class="nav-item dropdown no-arrow mx-1">
                    <a class="nav-link dropdown-toggle" href="#" id="messagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <i class="fas fa-envelope fa-fw"></i>
                        <span class="badge badge-danger">7</span>
                    </a>
                    <div class="dropdown-menu dropdown-menu-right" aria-labelledby="messagesDropdown">
                        <a class="dropdown-item" href="#">Action</a>
                        <a class="dropdown-item" href="#">Another action</a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="#">Something else here</a>
                    </div>
                </li>
                <li class="nav-item dropdown no-arrow">
                    <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <i class="fas fa-user-circle fa-fw"></i>
                    </a>
                    <div class="dropdown-menu dropdown-menu-right" aria-labelledby="userDropdown">
                        <a class="dropdown-item" href="#">Settings</a>
                        <a class="dropdown-item" href="#">Activity Log</a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="admin_logout.jsp" data-toggle="modal" data-target="#adlogoutModal">Logout</a>
                    </div>
                </li>
            </ul>

        </nav>

        <div id="wrapper">

            <!-- Sidebar -->
            <ul class="sidebar navbar-nav">

               <li class="nav-item">
                    <a class="nav-link" href="admin_home.jsp">
                        <i class="fas fa-fw fa-tachometer-alt"></i>
                        <span>Dashboard</span>
                    </a>
                </li>
        
       <li class="nav-item">
                    <a class="nav-link" href="ShowSpRequestDetailsServlet">
                        <i class="fas fa-fw fa-tachometer-alt"></i>
                        <span>SP Requests</span>
                    </a>
                </li>
                
                   <li class="nav-item">
                    <a class="nav-link" href="ShowSpServlet">
                        <i class="fas fa-fw fa-tachometer-alt"></i>
                        <span>Show Service Providers</span>
                    </a>
                </li>



            </ul>

            <div id="content-wrapper">

                <div class="container-fluid">

                    <!-- Breadcrumbs-->
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item disabled">
                            <a href="admin_home.jsp">Dashboard</a>
                        </li>
                        <li class="breadcrumb-item active">Service Provider Requests</li>
                    </ol>

                    <div class="container">
                        <div class="jumbotron">

                            <h3>Add New Service Provider</h3>
                            <form action="AddSpServlet" method="POST">

                                <div class="row">
                                    <div class="col">
                                        <input type="email" class="form-control" placeholder="email" name="spemail">
                                    </div>
                                    <div class="col">
                                        <input type="text" class="form-control" placeholder="password" name="pass">
                                    </div>
                                </div>

                                <br>
                                <input type="submit" value="Add New SP" class="btn btn-primary btn-lg btn-block">





                            </form>
                        </div>
                    </div>
                    <div class="container">
                        <div class="jumbotron">
                            <h2>

                                Service Provider's Request Details
                            </h2>
                            <table class="table table-hover table-dark">
                                <thead>
                                    <tr>
                                        <th scope="col">Id</th>
                                        <th scope="col">First Name</th>
                                        <th scope="col">Last Name</th>
                                        <th scope="col">Email</th>
                                        <th scope="col">Details</th>
                                    </tr>
                                </thead>
                                <tbody>

                                    <%                        ArrayList<ShowSpRequestDetailsBean> list = (ArrayList<ShowSpRequestDetailsBean>) request.getAttribute("sprequestdetails");

                                        for (ShowSpRequestDetailsBean category : list) {


                                    %>





                                    <tr>
                                        <th scope="row"><% out.println(category.getId()); %></th>
                                        <td><% out.println(category.getFname()); %></td>
                                        <td><% out.println(category.getLname()); %></td>
                                        <td><% out.println(category.getEmail()); %></td>
                                        <td><% out.println(category.getDetails()); %></td>
                                    </tr>












                                    <% }
                                    %>


                                </tbody>
                            </table>


                        </div>

                    </div>












                    <!-- Sticky Footer -->
                    <footer class="sticky-footer">
                        <div class="container my-auto">
                            <div class="copyright text-center my-auto">
                                <span>Copyright © Wedding Bells 2019</span>
                            </div>
                        </div>
                    </footer>

                </div>


            </div>


            <!-- Scroll to Top Button-->
            <a class="scroll-to-top rounded" href="#page-top">
                <i class="fas fa-angle-up"></i>
            </a>

            <!-- Logout Modal-->
            <div class="modal fade" id="adlogoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
                            <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">×</span>
                            </button>
                        </div>
                        <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
                        <div class="modal-footer">
                            <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                            <form action="AdLogoutServlet" method="get">
                                <input type="submit" value="Logout" class="btn btn-secondary" >
                            </form>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Bootstrap core JavaScript-->
            <script src="vendor/jquery/jquery.min.js"></script>
            <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

            <!-- Core plugin JavaScript-->
            <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

            <!-- Page level plugin JavaScript-->
            <script src="vendor/chart.js/Chart.min.js"></script>
            <script src="vendor/datatables/jquery.dataTables.js"></script>
            <script src="vendor/datatables/dataTables.bootstrap4.js"></script>

            <!-- Custom scripts for all pages-->
            <script src="js/sb-admin.min.js"></script>

            <!-- Demo scripts for this page-->
            <script src="js/demo/datatables-demo.js"></script>
            <script src="js/demo/chart-area-demo.js"></script>

    </body>

</html>
