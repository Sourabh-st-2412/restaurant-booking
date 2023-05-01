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
              <li class="nav-item active">
                <a class="nav-link" href="admin_booking.jsp">Bookings</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="admin_cart.jsp">Carts</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="admin_feedback.jsp">Feedbacks</a>
              </li>
              <li class="nav-item">
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
		<h2>Bookings List</h2>
		<table>
			<thead>
				<tr> 
                                        <th>Booking ID</th>
                                        <th>Date</th>
                                        <th>User ID</th>
                                        <th>User Name</th>
                                        <th>Guest No</th>
					<th>Shift</th>
                                        <th>AC/NON-AC</th> 
                                        <th>Time</th>
                                        <th>Booking Type</th>
                                        <th>Booked On</th>
                                        <th>Current Status</th>
                                        <th>Change Status</th>
                                        <th></th><th></th>
                                        
				</tr>
			</thead>
			<tbody>
                            
              <%
                   
                  Connection cn = null;
                  Statement st = null;
                  Class.forName("com.mysql.jdbc.Driver");
                  cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_restaurant_booking","root","root");
                  st = cn.createStatement(); 
                  String sql = "select * from user_booking "; 
                  ResultSet rs = st.executeQuery(sql);
                  while(rs.next())
                  {
                       
              %>  
                        <form name="admin_booking" action="admin_booking" method="post">
                        <input type="hidden" name="booking_id" value="<%=rs.getString("booking_id")%>">          
				<tr>
                                        <td><%=rs.getString("booking_id")%></td>   
					<td><%=rs.getString("date")%></td>
					<td><%=rs.getString("user_id")%></td> 
                                        <td><%=rs.getString("name")%></td>
                                        <td><%=rs.getString("guest_no")%></td>
                                        <td><%=rs.getString("shift")%></td>
                                        <td><%=rs.getString("room")%></td>
                                        <td><%=rs.getString("time")%></td>
                                        <td><%=rs.getString("bookingtype")%></td> 
                                        <td><%=rs.getString("booking_date")%></td>
                                        <td><%=rs.getString("bstatus")%></td>
                                        <td>
                                            <select name="changestatus">
                                                <option value="Pending">Pending</option>
                                                <option value="Confirmed">Confirmed</option>
                                                <option value="Completed">Completed</option>
                                            </select>
                                        </td>
                                        <td><input type="submit" name="submit" value="Change"></td>
                                        
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
