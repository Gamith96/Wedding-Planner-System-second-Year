

<%@page import="wedding.beans.SpReservedServiceViewBean"%>
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

        <title>Service Reserved</title>

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

            <a class="navbar-brand mr-1" href="SpReservedServiceView">Wedding Bells</a>
                 <a class="navbar-brand" href="SpReservedServiceView">
    <img src="wedding-couple.png" alt="logo" style="width:40px;">
  </a>

            <button class="btn btn-link btn-sm text-white order-1 order-sm-0" id="sidebarToggle" href="#">
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
             
              

            <div class="container">
              
                 <div class="jumbotron">
                     <center>  <h3>Confirmed Services For Consideration</h3> </center>
                      <table class="table table-striped table-dark">
                    <thead>
                        <tr>
                            <th scope="col">Confirm ID</th>
                            <th scope="col">Report Id</th>
                            <th scope="col">User ID</th>
                            <th scope="col">UserName</th>
                            <th scope="col">User Email</th>
                             <th scope="col">Category</th>
                              <th scope="col">Post Name</th>
                               <th scope="col">Price</th>
                                <th scope="col">Image</th>
                                 <th scope="col">Date(Year-Month-Date)</th>
                               
                        </tr>
                    </thead>
                       <tbody>
            
                 <%                      // retrieve your list from the request, with casting 
                    ArrayList<SpReservedServiceViewBean> list = (ArrayList<SpReservedServiceViewBean>) request.getAttribute("reservedetails");

                    // print the information about every category of the list
                    for (SpReservedServiceViewBean category : list) {

                       // System.out.println("================4" + category.getName());
                        
                %>      
            
                     
                   
              
                       
                 
                        <tr>
                            <th scope="row"><%out.println(category.getConfirmid());%></th>
                            <td><%out.println(category.getRid());%></td>
                            <td><%out.println(category.getUid());%></td>
                            <td><%out.println(category.getUname());%></td>
                            <td><%out.println(category.getUemail());%></td>
                             <td><%out.println(category.getCat());%></td>
                              <td><%out.println(category.getPname());%></td>
                               <td><%out.println(category.getPrice());%></td>
                                
                                <td>

                                <img class="card-img-top" src="data:image/jpeg;base64,<% out.println(category.getPic()); %>" alt="Card image cap">
                            </td>
                               
                               
                               
                               
                                 <td><%out.println(category.getDate());%></td>
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
                            <span>Copyright © Wedding Bells 2019 </span>
                        </div>
                    </div>
                </footer>

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

      


        <!-- Bootstrap core JavaScript-->
        <script src="vendor/jquery/jquery.min.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

        <!-- Core plugin JavaScript-->
        <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

        <!-- Custom scripts for all pages-->
        <script src="js/sb-admin.min.js"></script>

    </body>

</html>
