<%-- 
    Document   : feedback
    Created on : 14 Apr, 2023, 1:38:17 PM
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
        <title>My Orders Page</title>
        
        <style><%@include file ="css/user_myorder.css" %></style>
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
                <a class="nav-link" href="admin_home.jsp">Home <span class="sr-only">(current)</span></a>
              </li> 
              <li class="nav-item">
                <a class="nav-link" href="user_menu_type_selection.jsp">Order-List</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="user_booking.jsp">Table-List</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="admin_cart.jsp">Cart-List</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="user_myorder.jsp">Payments</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="admin_booking.jsp">My-Bookings</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="feedback.jsp">Feedback</a>
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
		<h2>Feedback</h2>
		<table>
			<thead>
				<tr> 
                                        <th>Name</th>
                                        <th>Email</th>
                                        <th>Feedback</th>
				</tr>
			</thead>
			<tbody>
                            
                        <%
                            Connection cn = null;
                            Statement st = null;
                            Class.forName("com.mysql.jdbc.Driver");
                            cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_restaurant_booking","root","root");
                            st = cn.createStatement(); 
                            String sql = "select * from feedback "; 
                            ResultSet rs = st.executeQuery(sql);
                            while(rs.next())
                            {
                               
                        %>  

                                          <tr>
                                                  <td><%=rs.getString("name")%></td>
                                                  <td><%=rs.getString("email")%></td>
                                                  <td><%=rs.getString("feedback")%></td>
                                          </tr>
                         <%
                             }
                         %>
				 
			</tbody>
		</table>
	</div>
        
        </body>
</html>
