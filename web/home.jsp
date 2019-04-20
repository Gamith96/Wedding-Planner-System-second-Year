
<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>Home</title>

        <!-- Bootstrap core CSS-->
        <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

        <!-- Custom fonts for this template-->
        <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">

        <!-- Page level plugin CSS-->
        <link href="vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">

        <!-- Custom styles for this template-->
        <link href="css/sb-admin.css" rel="stylesheet">

        <link rel="stylesheet" type="text/css" href="video.css">

    </head>

    <body id="page-top">

        <nav class="navbar navbar-expand navbar fixed-top navbar-dark bg-dark static-top">

            <a class="navbar-brand mr-1" href="home.jsp"><h3>Wedding Bells</h3></a>
            <a class="navbar-brand" href="home.jsp">
                <img src="wedding-couple.png" alt="logo" style="width:40px;">
            </a>


            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNavDropdown">
                <ul class="navbar-nav">
                    <li class="nav-item active">
                        <a class="nav-link" href="home.jsp">Home <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="about_us.jsp">About Us</a>
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


            <button type="button" class="btn btn-secondary" data-toggle="modal" data-target="#myModal">Login</button>


            <a href="home_register.jsp"  class="btn btn-secondary"  role="button" aria-disabled="true">Registration</a>








        </nav>

        <div id="wrapper">









            <div class="background-wrap">
                <video id="video-bg-elem" preload="auto" autoplay="true" loop="loop" muted="muted"> 
                    <source src="Most Romantic Wedding Video EVER!.mp4" type="video/mp4">
                    Video not supported
                </video>          
            </div>

            <div class="content">         
                <h1>Plan Your Wedding Here</h1>
                <p>All the things you need to get a wedding in one place</p>

                <p>Before two hearts unite in celebration, a lot goes into preparations. Before the love is declared in public, there are many defining moments of choosing and picking. We at Wedding Bells Wedding Planner, as one of the reputed wedding planners in Sri Lanka will create the dream wedding you have always wished for, without a single detail missing.</p>






            </div>


            <div class="container" >

                <!-- Modal -->
                <div class="modal fade" id="myModal" role="dialog">
                    <div class="modal-dialog modal-lg">
                        <div class="modal-content">

                            <div class="modal-body">
                                <a href="customer_login.jsp" class="btn btn-primary btn-lg btn-block" role="button" aria-disabled="true">Login For Customers</a><br><br>
                                <a href="index.jsp" class="btn btn-primary btn-lg btn-block" role="button" aria-disabled="true">Login For Service Providers</a><br><br>
                                <a href="admin_login.jsp" class="btn btn-primary btn-lg btn-block" role="button" aria-disabled="true">Login For Admins</a>

                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>






        </div>








        <!-- Scroll to Top Button-->
        <a class="scroll-to-top rounded" href="#page-top">
            <i class="fas fa-angle-up"></i>
        </a>




        <!-- Bootstrap core JavaScript-->
        <script src="vendor/jquery/jquery.min.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

        <!-- Core plugin JavaScript-->
        <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

        <!-- Custom scripts for all pages-->
        <script src="js/sb-admin.min.js"></script>

    </body>

</html>
