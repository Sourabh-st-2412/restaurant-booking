<%-- 
    Document   : user_payment
    Created on : 18 Mar, 2023, 5:14:56 PM
    Author     : soura
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
         <link rel="stylesheet" href="css/bootstrap.css" type="text/css">
        <style><%@include file ="css/user_payment.css" %></style>
        <link href="css/css/style.css" rel="stylesheet" /> 
        <link rel="stylesheet" type="text/css" href="css/css/bootstrap.css" /> 
        <title>Payments Page</title>
        
    </head>
    <body>
        <header class="header_section" style="background-color: black; font-size: 15px;">
      <div class="container">
        <nav class="navbar navbar-expand-lg custom_nav-container ">
          <a class="navbar-brand" href="index.html">
            <span>
              Hotel Nandnvan
            </span>
          </a>

          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class=""> </span>
          </button>

          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav  mx-auto ">
              <li class="nav-item active">
                <a class="nav-link" href="user_home.jsp">Home <span class="sr-only">(current)</span></a>
              </li> 
              <li class="nav-item">
                <a class="nav-link" href="user_menu_type_selection.jsp">OrderFood</a>
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
        
        
        
        <div class="header">
		<h1>Payment Page</h1>
	</div>
	<div class="container">
		<form method="post" action="payment_process.jsp">
			<label for="cardNumber">Card Number:</label>
			<input type="text" id="cardNumber" name="cardNumber" required>
			<label for="cardName">Cardholder Name:</label>
			<input type="text" id="cardName" name="cardName" required>
			<div class="card-info">
				<label for="expiryDate">Expiry Date:</label>
				<input type="text" id="expiryDate" name="expiryDate" placeholder="MM/YY" required>
				<label for="cvv">CVV:</label>
				<input type="text" id="cvv" name="cvv" required>
			</div>
			<input type="submit" value="Pay Now">
		</form>
	</div>
    </body>
</html>
