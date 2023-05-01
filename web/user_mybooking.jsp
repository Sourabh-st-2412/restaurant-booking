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
                <a class="nav-link" href="user_home.jsp">Home </a>
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
              <li class="nav-item active">
                <a class="nav-link" href="user_mybooking.jsp">MyBookings <span class="sr-only">(current)</span></a>
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
		<h2>My-Bookings List</h2>
		<table>
			<thead>
				<tr> 
                                        <th>Booking Date</th>
                                        <th>Guests</th>
                                        <th>Shift</th>
                                        <th>AC/Non-AC</th>
					<th>Time</th>
                                        <th>Booking For</th> 
                                        <th>Booked on</th>
                                        <th>Booking Status</th>
                                        <th> </th>
                                        
				</tr>
			</thead>
			<tbody>
                            
              <%
                  long count = 0; long cart_total = 0;
                  Connection cn = null;
                  Statement st = null;
                  Class.forName("com.mysql.jdbc.Driver");
                  cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_restaurant_booking","root","root");
                  st = cn.createStatement(); 
                  String sql = "select * from user_booking where  user_id = '"+session.getAttribute("userid") +"' "; 
                  ResultSet rs = st.executeQuery(sql);
                  while(rs.next())
                  {
                      
              %>  
                        <form name="user_mybooking" action="user_mybooking" method="post">   
				<tr> 
                                        <input type="hidden" name="booking_id" value="<%=rs.getString("booking_id")%>" >
					<td><%=rs.getString("date")%></td>
					<td><%=rs.getString("guest_no")%></td>
                                        <td><%=rs.getString("shift")%></td>
                                        <td><%=rs.getString("room")%></td>
                                        <td><%=rs.getString("time")%></td>
                                        <td><%=rs.getString("bookingtype")%></td> 
                                        <td><%=rs.getString("booking_date")%></td>
                                        <td><%=rs.getString("bstatus")%></td>
                                        <td><input type="submit" name="submit" value="Cancel" ></td>
                                        
				</tr>
                        </form>
               <%
                   }
               %>
				 
			</tbody>
		</table>
	</div>
    </body>
</html>
