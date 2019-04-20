<%-- 
    Document   : gallery
    Created on : Dec 18, 2018, 9:34:26 AM
    Author     : Gamith
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>About Us</title>

        <!-- Bootstrap core CSS-->
        <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

        <!-- Custom fonts for this template-->
        <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">

        <!-- Page level plugin CSS-->
        <link href="vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">

        <!-- Custom styles for this template-->
        <link href="css/sb-admin.css" rel="stylesheet">

        <link rel="stylesheet" type="text/css" href="carasoul.css">


        <style>
            #inq{

                width: 700px;
                height: 450px;
                margin:50px 0px; padding:0px;
                text-align:center;
                align:center;
                

            };

            
            
        </style>

    </head>

    <body id="page-top">
        
         <%

            response.setHeader("Cache-Control", "no-cache, no-store,must-revalidate");
            response.setHeader("Pragma", "no-cache");
            response.setHeader("Expires", "0");
            if (session.getAttribute("email") == null) {

                response.sendRedirect("customer_login.jsp");

            }


                








        %>
        
        
        
        
        
        
        
        
        
        
        
        
        
        

        <nav class="navbar navbar-expand navbar-dark bg-dark static-top">

            <a class="navbar-brand mr-1" href="gallery.jsp"><h3>Wedding Bells</h3></a>
            <a class="navbar-brand" href="gallery.jsp">
                <img src="wedding-couple.png" alt="logo" style="width:40px;">
            </a>


            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNavDropdown">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link" href="home.jsp">Home</a>
                    </li>
                    <li class="nav-item ">
                        <a class="nav-link" href="about_us.jsp">About Us</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="postRetriveServlet">Our Services</a>
                    </li>
                    <li class="nav-item ">
                        <a class="nav-link" href="gallery.jsp">Gallery</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="vendors.jsp">Vendors</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="special_offers.jsp">Special Offers</a>
                    </li>


                </ul>
            </div>


            <form class="d-none d-md-inline-block form-inline ml-auto mr-0 mr-md-3 my-2 my-md-0">
                <h4>Welcome ${email}</h4>
            </form>


      <a class="btn btn-primary" href="customer_login.jsp"  data-toggle="modal" data-target="#cuslogoutModal">Logout</a>



        </nav>



    <center>
        <!-- Material form contact -->
        <div class="card" id="inq">

            <h5 class="card-header info-color white-text text-center py-4">
                <strong>Ask Questions From Your Service Providers</strong>
            </h5>

            <!--Card content-->
            <div class="card-body px-lg-5 pt-0">

                <!-- Form -->
                <form class="text-center" style="color: #757575;" action="MakeInquiryServlet" method="POST">

                    <!-- Name -->
                    <div class="md-form mt-3">
                        <input type="text" id="materialContactFormName" class="form-control" name="cname">
                        <label for="materialContactFormName">Name</label>
                    </div>

                    <!-- E-mail -->
                    <div class="md-form">
                        <input type="email" id="materialContactFormEmail" class="form-control" name="cemail">
                        <label for="materialContactFormEmail">E-mail</label>
                    </div>
                    
                     <div class="md-form">
                        <input type="text" id="phone" class="form-control" name="cnum">
                        <label for="phone">Phone Number</label>
                    </div>
                      
                    <input type="hidden"  name="spemail" value="<%out.print(request.getParameter("spemail"));%>">
                    
                    
                   
                    
                    <!-- Subject 
                    <span>Subject</span>
                    <select class="mdb-select">
                        <option value="" disabled>Choose option</option>
                        <option value="1" selected>Feedback</option>
                        <option value="2">Report a bug</option>
                        <option value="3">Feature request</option>
                        <option value="4">Feature request</option>
                    </select>-->

                    <!--Message-->
                 
                    
                    
                    <div class="md-form">
                        <textarea type="text" id="materialContactFormMessage" class="form-control md-textarea" rows="3" name="cmsg"></textarea>
                        <label for="materialContactFormMessage">Message Or Questions</label>
                    </div>

                    <!-- Copy 
                    <div class="form-check">
                        <input type="checkbox" class="form-check-input" id="materialContactFormCopy">
                        <label class="form-check-label" for="materialContactFormCopy">Send me a copy of this message</label>
                    </div>-->

                    <!-- Send button -->
                    <button class="btn btn-outline-info btn-rounded btn-block z-depth-0 my-4 waves-effect" type="submit">Send</button>

                </form>
                <!-- Form -->

            </div>

        </div>
        <!-- Material form contact -->
    </center>




    <!-- /#wrapper -->

    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>

       
    <!-- Logout Modal-->
        <div class="modal fade" id="cuslogoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
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
                        <form action="logout" method="get">
                            <input type="submit" value="logout" class="btn btn-primary" href="customer_login.jsp"> </input>
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
