<%-- 
    Document   : user_menu_type_selection
    Created on : 6 Feb, 2023, 9:54:24 AM
    Author     : soura
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Menu Type Selection</title>
         <link rel="stylesheet" type="text/css" href="css/bootstrap.css" >
        <style><%@include file="css/user_menu_type_selection.css"%></style>
        <link rel="stylesheet" type="text/css" href="css/css/bootstrap.css" />    
        <link href="css/css/style.css" rel="stylesheet" />  
    </head>
    <body>
        
      <header class="header_section" style="background-color: black; font-size: 15px;">
      <div class="container">
        <nav class="navbar navbar-expand-lg custom_nav-container ">
          <a class="navbar-brand" href="index.html">
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
                <a class="nav-link" href="user_home.jsp">Home </a>
              </li> 
              <li class="nav-item active">
                <a class="nav-link" href="user_menu_type_selection.jsp">OrderFood <span class="sr-only">(current)</span></a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="user_booking.jsp">BookTable</a>
              </li>
              <li class="nav-item">
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
        
        
        <form name="user_menu_type_selection" action="user_menu_type_selection" method="post">
        
            <br><br><h1>Select Your Choice:</h1>
        
        <div class="row">
            <div class="col-sm-2"></div>
            
            <div class="col-sm-4">
                <div class="menutypediv" name="menutype" > 
                   
                    <div class="imageclass1">
                    <button type="submit" value ="Veg" name ="submit" class="button" ></button>
                    </div>
                    
                   
                </div>
            </div>
            
            <div class="col-sm-4">
                <div class="menutypediv">
                    <div class="imageclass2">
                       
                         
                        <button type="submit" value ="Non-Veg" name ="submit" class="button" ></button>
                    </div> 
                    <br><br>
                  
                </div>
            </div>
            
            <div class="col-sm-2"></div>
        </div>
            
        </form>  
    </body>
</html>
