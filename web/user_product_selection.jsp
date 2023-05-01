<%-- 
    Document   : user_product_selection
    Created on : 3 Feb, 2023, 3:53:25 PM
    Author     : soura
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Product Selection</title>
        <link rel="stylesheet" type="text/css" href="css/bootstrap.css" >
        <style><%@include file="css/user_product_selection.css"%></style>
        <link href="css/css/style.css" rel="stylesheet" /> 
        <link rel="stylesheet" type="text/css" href="css/css/bootstrap.css" /> 
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
              <li class="nav-item ">
                <a class="nav-link" href="user_home.jsp">Home <span class="sr-only">(current)</span></a>
              </li> 
              <li class="nav-item active">
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
        
        
        
        <form name="user_product_selection1" action="user_product_selection1" method="post">
        
        <div class="row">
            <div class="col-sm-1"></div>
            
            
            <div class="col-sm-2">
                <div class="productdiv">
                    <div class="imageclass1">
                        <button type="submit" value ="Starter" name ="submit" class="button" ></button>
                    </div>
                    <br>
                    <center><label class="productlabel">Starter</label></center>
                </div>
            </div>
            <div class="col-sm-2">
                <div class="productdiv">
                    <div class="imageclass2">
                        <button type="submit" value ="Main Course" name ="submit" class="button" ></button>
                    </div> 
                    <br>
                    <center><label class="productlabel">Main Course</label></center>
                </div>
            </div>
            <div class="col-sm-2">
                <div class="productdiv">
                    <div class="imageclass3">
                        <button type="submit" value ="Roti" name ="submit" class="button" ></button>
                    </div>
                    <br>
                    <center><label class="productlabel">Roti</label></center>
                </div>
            </div>
            <div class="col-sm-2">
                <div class="productdiv">
                    <div class="imageclass4">
                        <button type="submit" value ="Rice" name ="submit" class="button" ></button>
                    </div>
                    <br>
                    <center><label class="productlabel">Rice</label></center>
                </div>
            </div>
            <div class="col-sm-2">
                <div class="productdiv">
                    <div class="imageclass5">
                        <button type="submit" value ="Thali" name ="submit" class="button" ></button>
                    </div>
                    <br>
                    <center><label class="productlabel">Thali</label></center>
                </div>
            </div>
            <div class="col-sm-1"></div>
        </div>
        
        <br>
        <br>
       
         <div class="row">
            <div class="col-sm-2"></div>
                <div class="col-sm-2">
                <div class="productdiv">
                    <div class="imageclass6">
                        <button type="submit" value ="Beverages" name ="submit" class="button" ></button>
                    </div>
                    <br>
                    <center><label class="productlabel">Beverage</label></center>
                </div>
            </div>
                <div class="col-sm-2">
                <div class="productdiv">
                    <div class="imageclass7">
                        <button type="submit" value ="Salad" name ="submit" class="button" ></button>
                    </div>
                    <br>
                    <center><label class="productlabel">Salad</label></center>
                    </div>
            </div>
                <div class="col-sm-2">
                <div class="productdiv">
                    <div class="imageclass8">
                        <button type="submit" value ="Soup" name ="submit" class="button" ></button>
                    </div>
                    <br>
                    <center><label class="productlabel">Sweet</label></center>
                </div>
            </div>
                <div class="col-sm-2">
                <div class="productdiv">
                    <div class="imageclass9">
                        <button type="submit" value ="Fast-Food" name ="submit" class="button" ></button>
                    </div>
                    <br>
                    <center><label class="productlabel">Fast Food</label></center>
                </div>
            </div>
            <div class="col-sm-2"></div>
         </div>
         </form>
        
        <div class="">
            <div class="row">
                <%
                Connection cn = null;
                Statement st = null;
                 Class.forName("com.mysql.jdbc.Driver");
                  cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_restaurant_booking","root","root");
                  st = cn.createStatement();
                  //Check sql injection
                  String sql = "select * from admin_add_menu where menu_type = '"+session.getAttribute("menu_type")+"' && category='"+session.getAttribute("category") +"' ";
                  System.out.println(sql);
                  ResultSet rs = st.executeQuery(sql);
                  while(rs.next())
                                           {
                      

                %>
                
                <form name="user_product_selection" action="user_product_selection" method="post" >
                <div class="col-sm-3">
                    <div class="sellproductdiv">
                        <img class="sellimageclass" src="images/<%= rs.getString("image").toString() %>">
                        <br><br>
                        <label><%= rs.getString("menu_name").toString()%></label><br><br>
                        <label>MRP : <%= rs.getString("price").toString()%></label><br><br>&nbsp;
                        <img class="logoclass" src="images/VegLogo.png"><br>
                        
                        <input type="hidden" name="menu_id" value="<%= rs.getString("menu_id").toString()%>">
                        <input type="hidden" name="menu_name" value="<%= rs.getString("menu_name").toString()%>">
                        <input type="hidden" name="menu_type" value="<%= rs.getString("menu_type").toString()%>">
                        <input type="hidden" name="price" value="<%= rs.getString("price").toString()%>">
                        <input type="hidden" name="image" value="<%= rs.getString("image").toString()%>">  
                        <input type="hidden" name="category" value="<%= rs.getString("category").toString()%>">
                        <input class="addtocartbutton" name="submit" type="submit" value="ADD TO ORDER">
                    </div>
                </div>
                </form>
               <%
                             }

                %>
                </div>
            </div>

       
       
        
   
       
 
    </body>
</html>
