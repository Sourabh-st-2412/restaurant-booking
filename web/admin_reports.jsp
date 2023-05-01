<%-- 
    Document   : user_mybooking
    Created on : 29 Mar, 2023, 8:00:09 PM
    Author     : soura
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>My-Booking Page</title>
        
        <style><%@include file="css/user_mybooking.css"%></style>
        <link rel="stylesheet" type="text/css" href="css/css/bootstrap.css" />    
        <link href="css/css/style.css" rel="stylesheet" />  
        
    </head>
    <body>
        
   <header class="header_section" style="background-color: black; font-size: 15px;">
      <div class="container">
        <nav class="navbar navbar-expand-lg custom_nav-container ">

          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class=""> </span>
          </button>

          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav  mx-auto ">
              <li class="nav-item">
                <a class="nav-link" href="admin_home.jsp">Home <span class="sr-only">(current)</span></a>
              </li> 
              <li class="nav-item">
                <a class="nav-link" href="admin_add_product.jsp">Products</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="admin_orders.jsp">Orders</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="admin_booking.jsp">Bookings</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="admin_cart.jsp">Carts</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="admin_feedback.jsp">Feedbacks</a>
              </li>
              <li class="nav-item active">
                <a class="nav-link" href="admin_reports.jsp">Reports</a>
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
		<h2>Reports</h2>
		 
	</div>
    </body>
</html>
