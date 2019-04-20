

<%@page import="wedding.beans.ShowFeedbackbean"%>
<%@page import="wedding.beans.ShowInquiryBean"%>
<%@page import="wedding.beans.SpPostViewBean"%>
<%@page import="java.util.ArrayList"%>

<%@page import="java.util.Base64"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>Show_feedback</title>

        <!-- Bootstrap core CSS-->
        <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

        <!-- Custom fonts for this template-->
        <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">

        <!-- Page level plugin CSS-->
        <link href="vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">

        <!-- Custom styles for this template-->
        <link href="css/sb-admin.css" rel="stylesheet">

        <script src="//ajax.googleapis.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.css">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.js"></script>


    </head>

    <body id="page-top">


        <%

            response.setHeader("Cache-Control", "no-cache, no-store,must-revalidate");
            response.setHeader("Pragma", "no-cache");
            response.setHeader("Expires", "0");
            if (session.getAttribute("email") == null) {

                response.sendRedirect("index.jsp");

            }


        %>





        <nav class="navbar navbar-expand navbar-dark bg-dark static-top">

            <a class="navbar-brand mr-1" href="ShowFeedbackServlet">Wedding Bells</a>
              <a class="navbar-brand" href="ShowFeedbackServlet">
                <img src="wedding-couple.png" alt="logo" style="width:40px;">
            </a>

            <button class="btn btn-link btn-sm text-white order-1 order-sm-0" id="sidebarToggle" >
                <i class="fas fa-bars"></i>
            </button>

            <!-- Navbar Search -->
            <form class="d-none d-md-inline-block form-inline ml-auto mr-0 mr-md-3 my-2 my-md-0">
                <h4>Welcome ${email}</h4>
            </form>

            <!-- Navbar -->
            <ul class="navbar-nav ml-auto ml-md-0">


                <li class="nav-item dropdown no-arrow">
                    <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <i class="fas fa-user-circle fa-fw"></i>
                    </a>
                    <div class="dropdown-menu dropdown-menu-right" aria-labelledby="userDropdown">

                        <a class="dropdown-item" href="sp_account.jsp">Account</a>
                        <div class="dropdown-divider"></div>

                        <a class="dropdown-item" href="index.jsp" data-toggle="modal" data-target="#logoutModal">Logout</a>
                    </div>
                </li>
            </ul>

        </nav>

        <div id="wrapper">

            <!-- Sidebar -->
            <ul class="sidebar navbar-nav">
                <li class="nav-item">
                    <a class="nav-link" href="SpPostViewServlet">
                        <i class="fas fa-fw fa-tachometer-alt"></i>
                        <span>Posts</span>
                    </a>
                </li>

                <li class="nav-item">
                    <a class="nav-link" href="sp_account.jsp">
                        <i class="fas fa-fw fa-tachometer-alt"></i>
                        <span>Account</span>
                    </a>
                </li>

                <li class="nav-item">
                    <a class="nav-link" href="ShowInquiryServlet">
                        <i class="fas fa-fw fa-tachometer-alt"></i>
                        <span>Inquiries</span>
                    </a>
                </li>

                <li class="nav-item">
                    <a class="nav-link" href="ShowFeedbackServlet">
                        <i class="fas fa-fw fa-tachometer-alt"></i>
                        <span>Feedbacks</span>
                    </a>
                </li>

                <li class="nav-item">
                    <a class="nav-link" href="SpReservedServiceView">
                        <i class="fas fa-fw fa-tachometer-alt"></i>
                        <span>Reserved Services</span>
                    </a>
                </li>

            </ul>

            <div id="content-wrapper">

                <div class="container-fluid">

                       <!-- Breadcrumbs-->
                    <ol class="breadcrumb">
                          <li class="breadcrumb-item">
                              <a href="SpPostViewServlet"> Posts </a>
                        </li>
                        <p>/</p>
                        <li class="breadcrumb-item">
                            <a href="sp_account.jsp">  Account  </a>
                        </li>
                        <p>/</p>
                        <li class="breadcrumb-item">
                            <a href="ShowInquiryServlet"> Inquiries   </a>
                        </li>
                          <p>/</p>
                        <li class="breadcrumb-item-active">
                            Feedback
                        </li>
                        
                        
                    </ol>



                </div>
                <div class="container">
                    <div class="jumbotron">
                        <center>  <h3>Customer Feedback Details</h3> </center>
                  <table class="table table-striped table-dark">
                            <thead>
                                <tr>
                                    <th scope="col">Feedback ID</th>
                                    <th scope="col">SP Email</th>
                                    <th scope="col">User Email</th>
                                    <th scope="col">Comment</th>
                                    <th scope="col">Rating</th>
                                </tr>
                            </thead>
                            <tbody>


               
                  

                        <%                      // retrieve your list from the request, with casting 
                            ArrayList<ShowFeedbackbean> list = (ArrayList<ShowFeedbackbean>) request.getAttribute("feedbackdetails");

                            // print the information about every category of the list
                            for (ShowFeedbackbean category : list) {

                               

                        %>      


                      
                                <tr>
                                    <th scope="row"><%out.println(category.getFid());%></th>
                                    <td><%out.println(category.getSpemail());%></td>
                                    <td><%out.println(category.getUemail());%></td>
                                    <td><%out.println(category.getComment());%></td>
                                    <td><%out.println(category.getRating());%></td>
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
            <!-- /.content-wrapper -->

        </div>
        <!-- /#wrapper -->

        <!-- Scroll to Top Button-->
        <a class="scroll-to-top rounded" href="#page-top">
            <i class="fas fa-angle-up"></i>
        </a>

        <!-- Logout Modal-->
        <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
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
                        <form action="SpLogout" method="get">
                            <input type="submit" value="Logout" class="btn btn-primary" href="index.jsp"> 
                        </form>
                    </div>
                </div>
            </div>
        </div>

        <!-- add post -->


        <div class="modal fade" id="addpostmodel" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Ready to Add Post</h5>
                        <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">×</span>
                        </button>
                    </div>
                    <div class="modal-body">


                        <form action="PostUploadServlet" method="POST" enctype="multipart/form-data" name="filePart">
                            <label>

                                Select Category
                            </label>
                            <div class="form-group"> 
                                <div class="form-row">
                                    <div class="col-md-6">
                                        <div class="form-label-group">
                                            <div>
                                                <select id="example-getting-started" name="cat"class="form-control">
                                                    <option value="Hotel">Hotel</option>
                                                    <option value="Bridal">Bridal</option>
                                                    <option value="Florist">Florist</option>
                                                    <option value="Photography">Photography</option>
                                                    <option value="Videography">videography</option>
                                                    <option value="Vehicle Services">Vehicle Service</option>
                                                </select>
                                            </div>       
                                        </div>              
                                    </div>
                                </div>
                            </div>     

                            <div class="form-group">
                                <div class="form-row">
                                    <div class="col-md-6">
                                        <div class="form-label-group">
                                            <input type="text" id="Email" class="form-control" placeholder="Email" required="required" autofocus="autofocus" name="email">
                                            <label for="Email">Email</label>
                                        </div>
                                    </div>

                                </div>
                            </div>












                            <div class="form-group">
                                <div class="form-row">
                                    <div class="col-md-6">
                                        <div class="form-label-group">
                                            <input type="text" id="postname" class="form-control" placeholder="Post Name" required="required" autofocus="autofocus" name="pname">
                                            <label for="postname">Post Name</label>
                                        </div>
                                    </div>

                                </div>
                            </div>

                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text" id="inputGroupFileAddon01">Upload Picture</span>
                                </div>
                                <div class="custom-file">
                                    <input type="file" class="custom-file-input" id="inputGroupFile01" aria-describedby="inputGroupFileAddon01" name="pic " required="required">
                                    <label class="custom-file-label" for="inputGroupFile01">Choose file</label>
                                </div>
                            </div>
                            <br>
                            <div class="form-group">
                                <div class="form-label-group">
                                    <input type="text" id="inputprice" class="form-control" placeholder="price" required="required" name="price">
                                    <label for="inputprice">Price</label>
                                </div>
                            </div>

                            <input type="submit" value="Save" class="btn btn-primary btn-block" > </input>
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

        <!-- Custom scripts for all pages-->
        <script src="js/sb-admin.min.js"></script>

    </body>

</html>
