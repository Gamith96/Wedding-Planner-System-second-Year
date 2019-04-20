
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
      
       <%

            response.setHeader("Cache-Control", "no-cache, no-store,must-revalidate");
            response.setHeader("Pragma", "no-cache");
            response.setHeader("Expires", "0");
            if (session.getAttribute("email") == null) {

                response.sendRedirect("customer_login.jsp");

            }


        %>

   <nav class="navbar navbar-expand navbar-dark bg-dark static-top">

       <a class="navbar-brand mr-1" href="home.jsp"><h3>Wedding Bells</h3></a>
        <a class="navbar-brand" href="home.jsp">
    <img src="wedding-couple.png" alt="logo" style="width:40px;">
  </a>
        
           
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNavDropdown">
    <ul class="navbar-nav">
      <%
           if(session.getAttribute("email")!= null){
          
        
                   
          
          
          
          
          %>
          
                 <li class="nav-item">
        <a class="nav-link" href="cusLogged_home.jsp">Home</a>
      </li>
          
          
          
             <% }else{


                %>

          
          
          
          
          
          <li class="nav-item">
        <a class="nav-link" href="home.jsp">Home</a>
      </li>
      
         <% }
                %>
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
      
     <!-- <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Dropdown link
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
          <a class="dropdown-item" href="#">Action</a>
          <a class="dropdown-item" href="#">Another action</a>
          <a class="dropdown-item" href="#">Something else here</a>
        </div>
      </li>-->
    </ul>
  </div>

           <form class="d-none d-md-inline-block form-inline ml-auto mr-0 mr-md-3 my-2 my-md-0">
                <h4>Welcome ${email}</h4>
            </form>

            <!-- Navbar -->
            <ul class="navbar-nav ml-auto ml-md-0">


                <li class="nav-item dropdown no-arrow">
                    
                    
                      

                    <a class="btn btn-primary" href="customer_login.jsp"  data-toggle="modal" data-target="#cuslogoutModal">Logout</a>
                    
                </li>
            </ul>
   
            
         
            
            
            
            
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
                
  
</div>

             
       
         


    </div>
      
     
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
