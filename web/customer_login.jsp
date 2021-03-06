
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Customer Login</title>

    <!-- Bootstrap core CSS-->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom fonts for this template-->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">

    <!-- Custom styles for this template-->
    <link href="css/sb-admin.css" rel="stylesheet">
    
    

  </head>
  

  

  <body class="bg-primary">
      
      <style>
          
          body {
        background-image: url("wedding.jpg");
       background-color: #cccccc;
}
      </style>
      
      

    <div class="container">
        
      <div class="card card-login mx-auto mt-5">
        <div class="card-header"> Members Log In </div>
        <div class="card-body">
            
              <form action="LoginServlet" method="POST">
            <div class="form-group">
              <div class="form-label-group">
                  <input type="email" id="inputEmail" class="form-control" placeholder="Email address" required="required" autofocus="autofocus" name="email">
                <label for="inputEmail">Email address</label>
              </div>
            </div>
            <div class="form-group">
              <div class="form-label-group">
                  <input type="password" id="inputPassword" class="form-control" placeholder="Password" required="required" name="pass">
                <label for="inputPassword">Password</label>
              </div>
            </div>
            <div class="form-group">
              <div class="checkbox">
                <label>
                  <input type="checkbox" value="remember-me">
                  Remember Password
                </label>
              </div>
            </div>
           
            <input type="submit" value="LOGIN" class="btn btn-primary btn-block"/>
          </form>
            <br>
            <h5>Not a member yet then register</h5>
          <!--<div>
              <div class="card text-white bg-primary o-hidden h-100">
                <div class="card-body">
                  <div class="card-body-icon">
                    <i class="fas fa fa-briefcase"></i>
                  </div>
                  <div class="mr-5">Service Provider</div>
                </div>
                  <a class="card-footer text-white clearfix small z-1" href="send_request.jsp">
                  <span class="float-left">Send Request</span>
                  <span class="float-right">
                    <i class="fas fa-angle-right"></i>
                  </span>
                </a>
              </div>
            </div>
            <br>-->
            <div>
              <div class="card text-white bg-warning o-hidden h-100">
                <div class="card-body">
                  <div class="card-body-icon">
                    <i class="fas fa fa-user-circle"></i>
                  </div>
                  <div class="mr-5">Customer</div>
                </div>
                  <a class="card-footer text-white clearfix small z-1" href="register.jsp">
                  <span class="float-left">Register</span>
                  <span class="float-right">
                    <i class="fas fa-angle-right"></i>
                  </span>
                </a>
              </div>
            </div>
                <div class="text-center">
            <a class="d-block small mt-3" href="home.jsp">Home</a>
            
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
