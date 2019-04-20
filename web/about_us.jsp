<%-- 
    Document   : about_us
    Created on : Dec 15, 2018, 10:12:52 AM
    Author     : Gamith
--%>


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

        <!--  <link rel="stylesheet" type="text/css" href="carasoul.css"> -->

    </head>

    <body id="page-top">   

        <%

            response.setHeader("Cache-Control", "no-cache, no-store,must-revalidate");
            response.setHeader("Pragma", "no-cache");
            response.setHeader("Expires", "0");
            if (session.getAttribute("email") == null) {

            }


        %>

        <nav class="navbar navbar-expand navbar fixed-top navbar-dark bg-dark static-top">

            <a class="navbar-brand mr-1" href="about_us.jsp"><h3>Wedding Bells</h3></a>
            <a class="navbar-brand" href="about_us.jsp">
                <img src="wedding-couple.png" alt="logo" style="width:40px;">
            </a>


            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNavDropdown">
                <ul class="navbar-nav">

                    <%              if (session.getAttribute("email") != null) {


                    %>

                    <li class="nav-item">
                        <a class="nav-link" href="cusLogged_home.jsp">Home</a>
                    </li>



                    <% } else {


                    %>






                    <li class="nav-item">
                        <a class="nav-link" href="home.jsp">Home</a>
                    </li>

                    <% }
                    %>

                    <li class="nav-item active">
                        <a class="nav-link" href="about_us.jsp">About Us<span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="postRetriveServlet">Our Services</a>
                    </li>
                    <li class="nav-item">
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


            <!--<div class="dropdown">
       <button class="btn btn-secondary dropdown-toggle"  type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
         Login
       </button>
       <div class="dropdown-menu" class="btn-group dropleft" aria-labelledby="dropdownMenuButton">
         <a class="dropdown-item" href="customer_login.jsp">Login For Customers</a>
         <a class="dropdown-item" href="index.jsp">Login For Service Providers</a>
        
       </div>
     </div>-->


            <%
                if (session.getAttribute("email") == null) {


            %>











            <div class="btn-group dropleft">
                <button type="button" class="btn btn-secondary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    Login
                </button>
                <div class="dropdown-menu">
                    <a class="dropdown-item" href="customer_login.jsp">Login For Customers</a>
                    <a class="dropdown-item" href="index.jsp">Login For Service Providers</a>
                </div>
            </div>

            <a href="home_register.jsp" class="btn btn-secondary" role="button" aria-disabled="true">Registration</a>


            <% } else {


            %>
            <form class="d-none d-md-inline-block form-inline ml-auto mr-0 mr-md-3 my-2 my-md-0">
                <h4>Welcome ${email}</h4>
            </form>
            <a class="btn btn-primary" href="customer_login.jsp"  data-toggle="modal" data-target="#cuslogoutModal">Logout</a>

            <% }
            %>

        </nav>
        <br><br><br>


        <div class="p-3 mb-2 bg-gradient-warning text-dark">

            <div id="myCarousel" class="carousel slide container">

                <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                    <ol class="carousel-indicators">
                        <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                        <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                         <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                          <li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
                           <li data-target="#carouselExampleIndicators" data-slide-to="4"></li>
                            <li data-target="#carouselExampleIndicators" data-slide-to="5"></li>
                             <li data-target="#carouselExampleIndicators" data-slide-to="6"></li>

                    </ol>
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <img class="d-block w-100" src="fuIWAn6.jpg" alt="First slide">
                        </div>
                        <div class="carousel-item">
                            <img class="d-block w-100" src="1.jpg" alt="Second slide">
                        </div>
                          <div class="carousel-item">
                            <img class="d-block w-100" src="2.jpg" alt="Third slide">
                        </div>
                          <div class="carousel-item">
                            <img class="d-block w-100" src="3.jpg" alt="Fourth slide">
                        </div>
                          <div class="carousel-item">
                            <img class="d-block w-100" src="4.jpg" alt="Fifth slide">
                        </div>
                          <div class="carousel-item">
                            <img class="d-block w-100" src="5.jpg" alt="Sixeth slide">
                        </div>
                          <div class="carousel-item">
                            <img class="d-block w-100" src="6.jpg" alt="Seventh slide">
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



        </div>  










        <div class="container">
            <div class="jumbotron">
                <h1>ABOUT WEDDING BELL PLANNER</h1> 
                <article>
                    <p class="font-weight-bold">
                        Before two hearts unite in celebration, a lot goes into preparations. Before the love is declared in public, there are many defining moments of choosing and picking. We at Siritha Wedding Planner will create the dream wedding you have always wished for, without a single detail missing.

                        It?s not easy turning your dream wedding into a reality. With today?s hectic lifestyle, many couples and their families do not have time for the detailed planning and work a beautiful wedding of their dream.

                        We at Siritha Wedding Planner, as the pioneers in Sri Lanka wedding planning work together with you at any stage of the planning process to ensure that your wedding is planned to a perfect, totally enjoyable, stress free and memorable one. After all, it is your wedding. We are there to help you ? and to make your day perfect.

                        Our counseling alone would provide you the crème de la crème of the industry specialists within your stipulated options and budget. We will give you the freedom and peace of mind to simply enjoy your magnificent day in complete bliss.







                    </p>
                </article>
            </div>

        </div>

        <!-- Footer -->
        <footer class="page-footer font-small mdb-color pt-4">

            <!-- Footer Links -->
            <div class="container text-center text-md-left">

                <!-- Footer links -->
                <div class="row text-center text-md-left mt-3 pb-3">

                    <!-- Grid column -->
                    <div class="col-md-3 col-lg-3 col-xl-3 mx-auto mt-3">
                        <h6 class="font-weight-bold" >Company Description</h6>
                        <p>
                            With our eye for detail, Wedding Bells Wedding Planner in Sri Lanka will look after every requirement 
                            that counts for a picture-perfect wedding.
                            From consultation to complete wedding planning, we undertake a function of any size, 
                            scheduled to take place in any location. Perhaps, for us, it only takes the bride and groom, 
                            everything else is noted in our plan.     







                        </p>
                    </div>
                    <!-- Grid column -->

                    <hr class="w-100 clearfix d-md-none">

                    <!-- Grid column -->
                    <div class="col-md-2 col-lg-2 col-xl-2 mx-auto mt-3">
                        <h6 class="text-uppercase mb-4 font-weight-bold">Services</h6>
                        <p>
                            <a href="#!">Hotels</a>
                        </p>
                        <p>
                            <a href="#!">Bridal Dressing</a>
                        </p>
                        <p>
                            <a href="#!">Florists</a>
                        </p>
                        <p>
                            <a href="#!">Photography</a>
                        </p>
                        <p>
                            <a href="#!">Videography</a>
                        </p>
                        <p>
                            <a href="#!">Vehicle Service</a>
                        </p>
                    </div>
                    <!-- Grid column -->

                    <hr class="w-100 clearfix d-md-none">

                    <!-- Grid column -->
                    <div class="col-md-3 col-lg-2 col-xl-2 mx-auto mt-3">
                        <h6 class="text-uppercase mb-4 font-weight-bold">Links</h6>
                        <%              if (session.getAttribute("email") != null) {

                        %>
                        <p>
                            <a href="cusLogged_home.jsp">Home</a>
                        </p>
                        <%} else {
                        %>
                        <p>
                            <a href="home.jsp">Home</a>
                        </p>
                        <% }
                        %>
                        <p>
                            <a href="about_us.jsp">About Us</a>
                        </p>
                        <p>
                            <a href="postRetriveServlet">Our Services</a>
                        </p>
                        <p>
                            <a href="gallery.jsp">Gallery</a>
                        </p>
                        <p>
                            <a href="vendors.jsp">Vendors</a>
                        </p>
                        <p>
                            <a href="special_offers.jsp">special Offers</a>
                        </p>
                    </div>

                    <!-- Grid column -->
                    <hr class="w-100 clearfix d-md-none">

                    <!-- Grid column -->
                    <div class="col-md-4 col-lg-3 col-xl-3 mx-auto mt-3">
                        <h6 class="text-uppercase mb-4 font-weight-bold">Contact</h6>
                        <p>
                            <i class="fas fa-home mr-3"></i> Mahenwaththa, Pitipana,

                            Homagama

                            Sri Lanka</p>
                        <p>
                            <i class="fas fa-envelope mr-3"></i> weddingbells@gmail.com</p>
                        <p>
                            <i class="fas fa-phone mr-3"></i> + 0778361088</p>
                        <p>
                            <i class="fas fa-print mr-3"></i> + 01 234 567 89</p>
                    </div>
                    <!-- Grid column -->

                </div>
                <!-- Footer links -->

                <hr>

                <!-- Grid row -->
                <div class="row d-flex align-items-center">

                    <!-- Grid column -->
                    <div class="col-md-7 col-lg-8">

                        <!--Copyright-->
                        <p class="text-center text-md-left">© 2019 Copyright:
                            <a href="http://localhost:8080/system/home.jsp">
                                <strong> Weddingbells.com</strong>
                            </a>
                        </p>

                    </div>
                    <!-- Grid column -->

                    <!-- Grid column -->
                    <div class="col-md-5 col-lg-4 ml-lg-0">

                        <!-- Social buttons -->
                        <div class="text-center text-md-right">
                            <ul class="list-unstyled list-inline">
                                <li class="list-inline-item">
                                    <a class="btn-floating btn-sm rgba-white-slight mx-1" href="https://www.facebook.com/">
                                        <i class="fab fa-facebook-f"></i>
                                    </a>
                                </li>
                                <li class="list-inline-item">
                                    <a class="btn-floating btn-sm rgba-white-slight mx-1" href="https://www.twitter.com">
                                        <i class="fab fa-twitter"></i>
                                    </a>
                                </li>
                                <li class="list-inline-item">
                                    <a class="btn-floating btn-sm rgba-white-slight mx-1" href="https://www.google.com">
                                        <i class="fab fa-google-plus-g"></i>
                                    </a>
                                </li>
                                <li class="list-inline-item">
                                    <a class="btn-floating btn-sm rgba-white-slight mx-1" href="https://www.linkedin.com">
                                        <i class="fab fa-linkedin-in"></i>
                                    </a>
                                </li>
                            </ul>
                        </div>

                    </div>
                    <!-- Grid column -->

                </div>
                <!-- Grid row -->

            </div>
            <!-- Footer Links -->

        </footer>
        <!-- Footer -->   









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
