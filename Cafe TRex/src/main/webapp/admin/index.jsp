<!DOCTYPE html>

<html lang="en"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Cafe T-Rex CSCI 4830 Website">
    <meta name="author" content="">
    <link rel="shortcut icon" href="../images/favicon.ico" type="image/x-icon">
    <link rel="icon" href="../images/favicon.ico" type="image/x-icon">

    <title>Cafe T-Rex - Admin</title>

    <!-- Bootstrap core CSS -->
    <link href="../lib/dependencies/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="../lib/dependencies/css/style.css" rel="stylesheet">

	<!-- Begin JSP Services -->
	<%@ page import="com.cafetrex.services.jsp.*" %>
	<%@ page import="com.cafetrex.valueObjects.*" %>
	<%@ page import="java.util.*" %>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<% HTMLService hs = new HTMLService(session, request, response, out);
	AdminService as = new AdminService(session, request, response, out);
	as.executeAdminService();
    %>
   	<!-- End JSP Services -->
   	
    </head>

  <body>

	<!--Begin Top Menu -->
    <nav class="navbar navbar-inverse navbar-fixed-top">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
				<a href="/"><img style="padding:4px 0px 0px 0px; float:none" class="navbar-brand" src="../images/small-icon.png"  alt="Small Logo" onmouseover="this.src='../images/small-icon-white.png';" onmouseout="this.src='../images/small-icon.png';"  /></a>
                <a class="navbar-brand" style="float:none" href="/">Cafe T-Rex Admin</a>
            </div>
            <div id="navbar" class="collapse navbar-collapse">
                <ul class="nav navbar-nav">                    
                    <%if (as.isLoggedIn()) {
                    	as.redirect("orders.jsp");
                    } else { %>
                    <li><a href="../">Home</a></li>
                    <li class=active"><a href="index.jsp">Admin Login</a></li>
                    
                    <%}%>
                    


                </ul>
            </div>
        </div>
    </nav>
	<!--End Top Menu -->

    <div class="container">
      <div class="starter-template">
      
        <h1>Login</h1>
		<br />
      </div>

<div class="container-fluid">
	<div class="row">
		<div class="col-md-12">
			<div class="row">
				<div class="col-md">
					<form role="form" action='index.jsp' method='post'>
					<input type="hidden" name="adminLogin" value="adminLogin">
						<div class="form-group">
							 
							<label for="txtUser">
								Username:
							</label>
							<input class="form-control" name="user" id="txtUser" />
						</div>
						<div class="form-group"> 
							<label for="txtPassword">
								Password:
							</label>
							<input type="password" name="pass" class="form-control" id="txtPassword" />
						</div>
						<button type="submit" class="btn btn-default">
							Submit
						</button>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>


    </div><!-- /.container -->
	
    <script src="../lib/dependencies/jquery.min.js"></script>
    <script src="../lib/dependencies/bootstrap.min.js"></script>

</body></html>