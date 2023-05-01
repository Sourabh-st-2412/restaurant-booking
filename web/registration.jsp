<%-- 
        Document   : registration
    Created on : 12 Feb, 2023, 11:28:57 AM
    Author     : soura
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>New Login</title>
          
            <link rel="stylesheet" href="css/bootstrap.css" type="text/css">
        <style><%@include file ="css/registration.css" %></style>
          <script ><%@include file = "css/validation.js"%>  </script>
          <link href="css/css/style.css" rel="stylesheet" /> 
        <link rel="stylesheet" type="text/css" href="css/css/bootstrap.css" /> 
        
    </head>
    <body>
       
        
      <header class="header_section">
      <div class="container">
        <nav class="navbar navbar-expand-lg custom_nav-container ">
          <a class="navbar-brand" href="index.jsp">
            <span>
              Hotel Nandanvan
            </span>
          </a>

          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class=""> </span>
          </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent" style="font-size: 15px;">
            <ul class="navbar-nav  mx-auto ">
<!--              <li class="nav-item active">
                <a class="nav-link" href="index.jsp">Home <span class="sr-only">(current)</span></a>
              </li> 
              <li class="nav-item">
                <a class="nav-link" href="book.html">Book Table</a>
              </li>-->
            </ul>
            <div class="user_option">
             
              <a href="login.jsp" class="order_online">
                Login
              </a>
            </div>
          </div>
        </nav>
      </div>
    </header> 
        
        
        
    <form name="registration" action="registration" method="post">
         <div class="logoimage"></div>    
                
                    <div class="container1">
 
 
    <div class="form-group">
      <label for="username">Name :</label>
      <input type="text" name="name" class="form-control" id="username" placeholder="Enter Your Full Name"  onkeypress ="return isString(event);" >
    </div>
    <div class="form-group">
      <label for="email">Email :</label>
      <input type="email" name="email" class="form-control" id="email" placeholder="Enter a Valid Email";" >
    </div>
      
      <div class="form-group">
      <label for="contact">Contact :</label>
      <input type="tel" name="contact" class="form-control" id="phone"  placeholder="+91 xxxx-xx-xxxx" onkeypress ="return isContactno(event);" maxlength="10" minlength="10">
    </div>
      
    <div class="form-group">
      <label for="pwd">Password :</label>
      <input type="password" name="password" class="form-control" id="pwd" placeholder="Enter Password" maxlength="10" minlength="4">
    </div>
       <div class="form-group">
           
      <label for="pwd">Confirm Password :</label>
      <input type="password" name="cpassword" class="form-control" id="pwd" placeholder="Re-Enter Password" maxlength="10" minlength="4">
      
    </div>
      
    <button type="submit" name="submit" value="Submit" class="btn btn-primary">Submit</button>
 
</div>
            </div>
    </form>
    </body>
</html>
