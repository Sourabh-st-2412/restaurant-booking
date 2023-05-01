<%-- 
    Document   : login
    Created on : 12 Feb, 2023, 11:15:37 AM
    Author     : soura
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <link rel="stylesheet" href="css/bootstrap.css" type="text/css">
        <link href="css/css/style.css" rel="stylesheet" /> 
        <link rel="stylesheet" type="text/css" href="css/css/bootstrap.css" /> 
        <style><%@include file ="css/login.css" %></style>
   
        <title> Hotel Nandanvan </title>
        <script ><%@include file = "css/validation.js"%>  </script>
        <style>
            body{
             
        background-image: url('images/Table4.jpg');
        background-repeat: no-repeat;
        background-size: 100%;
        
     
        
            }
        </style>
        
        <script><%@include file="css/validation.js"%></script>
        <script>
            function myfun()
            {
                var textboxtype1 = document.getElementById("pass").type;
                
                if(textboxtype1 === 'password')
                {
                    document.getElementById("pass").type='text';
                }
                else
                {
                    document.getElementById("pass").type='password';
                }
            }
        </script>
       
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

            </ul>
            <div class="user_option">
             
              <a href="registration.jsp" class="order_online">
                Sign Up
              </a>
            </div>
          </div>
        </nav>
      </div>
    </header>
        
        
        <form name="login" action="login" method="post">
            <img class ="logoimage" name="image" src="images/Logo1_1.png">
  
        <div class="login_div">

            
            <div class="LoginBorder">
            
                      
            <div class="login_text">
                <input class="textbox" name="username" type="text" placeholder="Email / Contact no." >
            <br><br>
            
            <input class="textbox" id="pass" type="password" name="password" placeholder="Password"> <br>
            <center><input type="checkbox" id="mylabel" onclick="myfun();"> <span style="color:white;">Show Password </span> </center>
            <br><br><br>
            
            </div>
               </div>
            <input class="submitbutton" type="submit" name="submit" value="Log-in">
            <br> 
            
              <input  class="myspan"  type="submit" name="submit" value="New User" ></h5>
        
       
            </div>
        </form>
    </body>
</html>
