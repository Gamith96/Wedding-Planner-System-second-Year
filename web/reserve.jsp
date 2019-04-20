

<%@page import="java.util.Base64"%>
<%@page import="wedding.beans.ReserveCusViewBean"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>Reserve</title>

        <!-- Bootstrap core CSS-->
        <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

        <!-- Custom fonts for this template-->
        <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">

        <!-- Page level plugin CSS-->
        <link href="vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">

        <!-- Custom styles for this template-->
        <link href="css/sb-admin.css" rel="stylesheet">

        <link rel="stylesheet" type="text/css" href="carasoul.css">

    </head>

    <body id="page-top">

        <%

            response.setHeader("Cache-Control", "no-cache, no-store,must-revalidate");
            response.setHeader("Pragma", "no-cache");
            response.setHeader("Expires", "0");
            if (session.getAttribute("email") == null) {

                //response.sendRedirect("customer_login.jsp");
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
                    <%                   if (session.getAttribute("email") != null) {


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
                    <li class="nav-item ">
                        <a class="nav-link" href="about_us.jsp">About Us</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="postRetriveServlet">Our Services</a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link" href="gallery.jsp">Gallery<span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="vendors.jsp">Vendors</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="special_offers.jsp">Special Offers</a>
                    </li>


                </ul>
            </div>
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

        <div class="container">    
            <div class="jumbotron">
                <table class="table table-hover table-dark">
                    <thead>
                        <tr>
                            <th scope="col">RId</th>
                            <th scope="col">UID</th>
                            <th scope="col">User Name</th>
                            <th scope="col">User Email</th>
                            <th scope="col">Service Category</th>
                            <th scope="col">Service Name</th>
                            <th scope="col">Price(Lkr)</th>
                            <th scope="col">Service Provider's Email</th>
                            <th scope="col">Service Image</th>
                            <th scope="col">Choose date for Confirm</th>




                        </tr>
                    </thead>
                    <tbody>
                        <%              // retrieve your list from the request, with casting 
                            ArrayList<ReserveCusViewBean> list = (ArrayList<ReserveCusViewBean>) request.getAttribute("reservedetails");

                            // print the information about every category of the list
                            for (ReserveCusViewBean category : list) {

                                //out.println(category.getId()); 
                                //  out.println(category.getEmail());
                                // out.println(category.getPname());
                                //out.println(category.getPrice());
                                //int blobLength = (int) category.getPic().length();
                                //String encode = Base64.getEncoder().encodeToString(category.getPic().getBytes(1, blobLength));

                        %>















                        <tr>
                            <td scope="row"><% out.println(category.getRid()); %></td>
                            <td><% out.println(category.getUid()); %></td>
                            <td><% out.println(category.getUname()); %></td>
                            <td><% out.println(category.getUemail()); %></td>
                            <td><% out.println(category.getCat()); %></td>
                            <td><% out.println(category.getPname()); %></td>
                            <td><% out.println(category.getPrice()); %></td>
                            <td><% out.println(category.getSpemail()); %></td>

                            <td>

                                <img class="card-img-top" src="data:image/jpeg;base64,<% out.println(category.getPic()); %>" alt="Card image cap">
                            </td>
                            <td>




                                <form action="ServiceConfirmServlet" method="POST">
                                    
                                    
                                    <input type="hidden"  name="rid" value="<% out.println(category.getRid()); %>">
                                      <input type="hidden"  name="uid" value="<% out.println(category.getUid()); %>">
                                        <input type="hidden"  name="uname" value="<% out.println(category.getUname()); %>">
                                          <input type="hidden"  name="uemail" value="<% out.println(category.getUemail()); %>">
                                            <input type="hidden"  name="cat" value="<% out.println(category.getCat()); %>">
                                              <input type="hidden"  name="pname" value="<% out.println(category.getPname()); %>">
                                                <input type="hidden"  name="price" value="<% out.println(category.getPrice()); %>">
                                                  <input type="hidden"  name="spemail" value="<% out.println(category.getSpemail()); %>">
                                                    <input type="hidden"  name="pic" value="<% out.println(category.getPic()); %>">
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    <input type="date" name="date">
                                    
                                    
                                    
                                    
                                    
                                    
                                    <input type="submit" class="btn btn-success" value="CONFIRM">
                                </form>



                         



                              


                            </td>

                        </tr>
                        <% }
                        %>
                    </tbody>
                </table>



















            </div>
        </div>

        <!-- /#wrapper -->

        <!-- Scroll to Top Button-->
        <a class="scroll-to-top rounded" href="#page-top">
            <i class="fas fa-angle-up"></i>
        </a>

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
