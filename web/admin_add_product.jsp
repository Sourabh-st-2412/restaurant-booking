<%-- 
    Document   : admin_add_product
    Created on : 15 Mar, 2023, 7:14:14 PM
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
        <link rel="stylesheet" href="css/bootstrap.css" type="text/css">
        <style><%@include file ="css/admin_add_product.css" %></style>
        <link rel="stylesheet" type="text/css" href="css/css/bootstrap.css" />    
        <link href="css/css/style.css" rel="stylesheet" />  
   
        <title> Product Add </title>
        <script ><%@include file = "css/validation.js"%>  </script>
        
        
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
              <li class="nav-item active">
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
        
        <form name="admin_add_product" action="admin_add_product" method="post">
        
            
                
            <h1 class="h1">Add Product Details.</h1>
            <div class="add_product_div">
                <br>
                
                
                <br>
                <div class="row">
                    <div class="col-sm-1"></div>
                    <div class="col-sm-5">Menu Id</div>
                    <div class="col-sm-1"></div>
                    <div class="col-sm-5"><input type="text" name="menu_id" placeholder="Menu id"></div> 
                </div>
                <br>
                <div class="row">
                    <div class="col-sm-1"></div>
                    <div class="col-sm-5">Menu Name</div>
                    <div class="col-sm-1"></div>
                    <div class="col-sm-5"><input type="text" name="menu_name" placeholder="Menu Name"></div> 
                </div>
                
                <br>
                <div class="row">
                    <div class="col-sm-1"></div>
                    <div class="col-sm-5">Menu Type</div>
                    <div class="col-sm-1"></div>
                    <div class="col-sm-5">
                        <select name="menu_type">
                            <option value="Veg">Veg</option>
                            <option value="Non-veg">Non-veg</option>
                        </select>
                    </div> 
                </div>
                
                <br>
                <div class="row">
                    <div class="col-sm-1"></div>
                    <div class="col-sm-5">Menu Category</div>
                    <div class="col-sm-1"></div>
                    <div class="col-sm-5">
                        <select name="category">
                            <option value="Starter">Starter</option>
                            <option value="Main Course">Main Course</option>
                            <option value="Roti">Roti</option>
                            <option value="Rice">Rice</option>
                            <option value="Thali">Thali</option>
                            <option value="Beverages">Beverages</option>
                            <option value="Salad">Salad</option>
                            <option value="Soup">Sweet</option>
                            <option value="Fast Food">Fast Food</option>
                        </select>
                    </div> 
                </div>
                
                <br>
                <div class="row">
                    <div class="col-sm-1"></div>
                    <div class="col-sm-5">Menu Price</div>
                    <div class="col-sm-1"></div>
                    <div class="col-sm-5"><input type="text" name="price" placeholder="Menu Price"></div> 
                </div>
                
                <br>
                <div class="row">
                    <div class="col-sm-1"></div>
                    <div class="col-sm-5">Menu Image</div>
                    <div class="col-sm-1"></div>
                    <div class="col-sm-5"><input type="file" name="image" ></div> 
                </div>
                <br><br>
                <div class="row">
                    <div class="col-sm-1"></div>
                    <div class="col-sm-3">
                        <input class="btn1" type="submit" name="submit" value="Add">
                    </div>
                    <div class="col-sm-3">
                        <input class="btn2" type="submit" name="submit" value="Update">
                    </div>
                    <div class="col-sm-3">
                        <input class="btn3" type="submit" name="submit" value="Delete">
                    </div>                    
                    <div class="col-sm-1"></div>
                </div>
                
            </div>
            </form>
        
    
                                
                                
                                
                <div class="container1">
		<h2>Menu Items List</h2>
		<table>
			<thead>
				<tr> 
                                        <th></th>
                                        <th>Image</th>
                                        <th>Menu ID</th>
                                        <th>Menu Name</th>
                                        <th>Type</th>
                                        <th>Category</th>
					<th>Price</th>
                                        <th>Date</th> 
                                        <th></th>
                                        
				</tr>
			</thead>
			<tbody>
                            
                        <%
                            
                            Connection cn = null;
                            Statement st = null;
                            Class.forName("com.mysql.jdbc.Driver");
                            cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_restaurant_booking","root","root");
                            st = cn.createStatement(); 
                            String sql = "select * from admin_add_menu "; 
                            ResultSet rs = st.executeQuery(sql);
                            while(rs.next())
                            {
                          %>
                        <form name="menu_details" method="post">
                                          <tr>
                                                  <input type="hidden" name="menu_id" value="<%=rs.getString("menu_id")%>">
                                                  <td><img src="images/<%=rs.getString("image")%>" style="height: 50x; width: 50px;"> </td>   
                                                  <td><%=rs.getString("menu_id")%></td>   
                                                   <td><%=rs.getString("menu_name")%></td>
                                                   <td><%=rs.getString("menu_type")%></td> 
                                                   <td><%=rs.getString("category")%></td>
                                                   <td><%=rs.getString("image")%></td>
                                                   <td><%=rs.getString("price")%></td>
                                                   <td><%=rs.getString("date")%></td>
                                                  

                                          </tr>
                                          
                        </form>
                               
                       <% } %>

				 
			</tbody>
		</table>
	</div>
    </body>
</html>
