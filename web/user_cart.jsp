<%-- 
    Document   : user_cart
    Created on : 4 Mar, 2023, 10:28:21 PM
    Author     : soura
--%>

<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Cart</title>
           <link rel="stylesheet" type="text/css" href="css/bootstrap.css" >
           <style><%@include file="css/user_cart.css"%></style>
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
        
         

        <%
                  long count = 0; long cart_total = 0;
                  Connection cn = null;
                  Statement st = null;
                  Class.forName("com.mysql.jdbc.Driver");
                  cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_restaurant_booking","root","root");
                  st = cn.createStatement(); 
                  String sql = "select * from cart where  user_id = '"+session.getAttribute("userid") +"' "; 
                  ResultSet rs = st.executeQuery(sql);
                  while(rs.next())
                  {
                      count++;
                      cart_total = cart_total + Long.parseLong( rs.getString("total").toString() );
        %>  
        <form name="user_cart" action="user_cart" method="post">
        <div class="productrow">
            <input type="hidden" value="<%=rs.getString("cart_id")%>" name="cart_id">
            <input type="hidden" value="<%=cart_total%>" name="cart_total">
            <input type="hidden" value="<%=count%>" name="total_products">
            <input type="hidden" value="<%=rs.getString("menu_id")%>" name="menu_id">
            <input type="hidden" value="<%=rs.getString("menu_name")%>" name="menu_name">
            <input type="hidden" value="<%=rs.getString("menu_type")%>" name="menu_type">
            <input type="hidden" value="<%=rs.getString("category")%>" name="category">
            <input type="hidden" value="<%=rs.getString("image")%>" name="image">
            <input type="hidden" value="<%=rs.getString("price")%>" name="price" >
            <input type="hidden" value="<%=rs.getString("quantity")%>" name="quantity">
            <input type="hidden" value="<%=rs.getString("total")%>" name="total">
            
            
            <div class="col-sm-2 productimage" style="background-image: url('images/<%=rs.getString("image")%>');" name="productimage">
            </div>
            <div class="col-sm-2">
                <label class="productname"><%=rs.getString("menu_name")%></label><br>
                <label style="padding-left: 40px;"><%=rs.getString("menu_type")%></label><br>
                <label style="padding-left: 40px;"><%=rs.getString("category")%></label> 
            </div>
             <div class="col-sm-2">
                <label class="price"> ₹<%=rs.getString("price")%></label>
             </div>
             <div class="col-sm-2">
                 <input type="submit" name="submit" value="-">
                 <input class="productquantity" type="number"  name="quantity"  min="1" value="<%=rs.getString("quantity")%>"  >
                 <input type="submit" name="submit" value="+">
             </div>
             <div class="col-sm-2">
                 <label class="totalprice"> ₹<%=rs.getString("total")%></label>   <input type="submit" name="submit" value="remove" > 
             </div>
                
        </div><br>
        </form> 
        
        <% } %>
        
        
         <div class="ok_button">
             <a href="user_product_selection.jsp"> <input type="submit" value="O.K" class="button" name="submit" href="user_product_selection.jsp"> </a>
         </div>
         
        <div class="totalbox">
            <div class="row">
                <div class="col-sm-6">
                <label class="Cart_Total">Cart Total</label>
                </div>
                <div class="col-sm-6">
                    <label>₹ <%=cart_total%></label>
                </div>
            </div>
        </div>
        
        <div class="totalrow">
            <label class="total">Total Variety : <%=count%> <br><br> Total Price : <%=cart_total%> </label><br><br><br>
            
         
            <form action="user_cart1" method="post">
                
                
            <input class="radiobutton1" type="radio" value="Dine-In" name="">
            <input class="radiobutton2" type="radio" value="Pickup" name="">
            <input class="radiobutton3" type="radio" value="Delivery" name="">
            <br><br>
                    
                
                
            <input class="paybutton" type="submit" value="Place Order" name="submit">
            </form>
            <br><br><br>
        </div>
            
            
    
    </body>
</html>

