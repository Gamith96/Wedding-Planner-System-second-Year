

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>send request</title>

    <!-- Bootstrap core CSS-->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom fonts for this template-->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">

    <!-- Custom styles for this template-->
    <link href="css/sb-admin.css" rel="stylesheet">

  </head>

  <body class="bg-dark">
      
           <style>
          
          body {
        background-image: url("wedding.jpg");
       background-color: #cccccc;
}
      </style>

    <div class="container">
      <div class="card card-register mx-auto mt-5">
        <div class="card-header">Send Request for Registration</div>
        <div class="card-body">
          <form action="spRegisterServlet" method="POST">
            <div class="form-group">
              <div class="form-row">
                <div class="col-md-6">
                  <div class="form-label-group">
                    <input type="text" id="firstName" name="fname" class="form-control" placeholder="First name" required="required" autofocus="autofocus">
                    <label for="firstName">First name</label>
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="form-label-group">
                    <input type="text" id="lastName" name="lname" class="form-control" placeholder="Last name" required="required">
                    <label for="lastName">Last name</label>
                  </div>
                </div>
              </div>
            </div>
            <div class="form-group">
              <div class="form-label-group">
                <input type="email" id="inputEmail" name="email" class="form-control" placeholder="Email address" required="required">
                <label for="inputEmail">Email address</label>
                
              </div>
                <br>
               <!--  <div class="form-label-group">
                <input type="text" id="inputEmail" class="form-control" placeholder="Email address" required="required">
                <textarea class="form-control" name="detail"></textarea>
                <label for="inputEmail">Details</label>
                
              </div>-->
               
               <div class="form-group shadow-textarea">
     <label for="exampleFormControlTextarea6">About You</label>
     <textarea class="form-control z-depth-1" id="exampleFormControlTextarea6" rows="3" placeholder="Write something here..." name="detail"></textarea>
     </div>
               
               
               
               
               
               
               
                <div>
                <%=(request.getAttribute("ErrorMessage")== null) ? ""
                        : request.getAttribute("ErrorMessage")
                
                %>
                </div>
            </div>
              
          
              <input type="submit" value="Send Request" class="btn btn-primary btn-block">  
          </form>
              <div class="text-center">
            <a class="d-block small mt-3" href="home_register.jsp">Go Back</a>
            
          </div>
          
        </div>
      </div>
    </div>

    <!-- Bootstrap core JavaScript-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

  </body>

</html>

