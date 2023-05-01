<%-- 
    Document   : user_profile
    Created on : 29 Apr, 2023, 3:04:51 PM
    Author     : soura
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Hotel Nandanvan </title>  
        <link rel="stylesheet" type="text/css" href="css/bootstrap.css" >
           <style><%@include file="css/user_profile.css"%></style>
           <link href="css/css/style.css" rel="stylesheet" /> 
           <link rel="stylesheet" type="text/css" href="css/css/bootstrap.css" />   
    </head>
    <body>
        
        <header class="header_section" style="background-color: black; font-size: 15px;">
      <div class="container">
        <nav class="navbar navbar-expand-lg custom_nav-container ">
          <a class="navbar-brand" href="user_home.jsp">
            <span>
              Hotel Nandanvan
            </span>
          </a>

          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class=""> </span>
          </button>

          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav  mx-auto ">
              <li class="nav-item">
                <a class="nav-link" href="user_home.jsp">Home <span class="sr-only">(current)</span></a>
              </li> 
              <li class="nav-item">
                <a class="nav-link" href="user_menu_type_selection.jsp">OrderFood</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="user_booking.jsp">BookTable</a>
              </li>
              <li class="nav-item active">
                <a class="nav-link" href="user_cart.jsp">Cart</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="user_myorder.jsp">MyOrders</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="user_mybooking.jsp">MyBookings</a>
              </li>
               
              
            </ul>
            <div class="user_option">
             
              <a href="login.jsp" class="order_online">
                LOGOUT
              </a>
            </div>
          </div>
        </nav>
      </div>
    </header>
        
        
        <div class="container1">
		<div class="profile">
                        <h2>Name : &nbsp; <input type="text" value="" class="box"></h2>
                        <br>
			<h2>Address :  &nbsp;<input type="text" value="" class="box"></h2>
                        <br>
                        <h2>Email :  &nbsp;<input type="text" value="" class="box"></h2>
                        <br>
                        <h2>Contact : &nbsp;<input type="text" value="" class="box"></h2>
                        <br>
                        <br>
                        <input type="button" value="Save" class="button">
			
			
		</div>
	</div>
    </body>
</html>
