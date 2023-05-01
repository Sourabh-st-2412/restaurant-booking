<%-- 
    Document   : user_booking
    Created on : 19 Feb, 2023, 11:56:08 AM
    Author     : soura
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Booking Table</title>
           
           <style><%@include file="css/user_booking.css"%></style>
           <link href="css/css/style.css" rel="stylesheet" /> 
           <link rel="stylesheet" type="text/css" href="css/css/bootstrap.css" /> 
           <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
           <script type="text/javascript">
               function timefunction(id)
               {
                   var time = document.getElementById(id).value;
                   
                   if(document.getElementById(id).style.backgroundColor == "green")
                   {
                        document.getElementById(id).style.backgroundColor = "initial";
                        document.getElementById("time").value= "";
                   }
                   else if(document.getElementById(id).style.backgroundColor != "green")
                   {
                       document.getElementById(id).style.backgroundColor = "green"; 
                       document.getElementById("time").value= time;
                   }
               }
           </script>
           
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
              <li class="nav-item active">
                <a class="nav-link" href="user_booking.jsp">BookTable<span class="sr-only">(current)</span></a>
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
        
        
        <form name="user_booking" action="user_booking" method="post">
        
        <div class="row">
            <div class="col-sm-5">
                <div class="imageclass"> 
                </div>
            </div>
            <div class="col-sm-6">
                <br><br>
                <div class="row">
                    <div class="col-sm-4"><input name="date" id="bdate" type="date" class="date"></div>
                    <div class="col-sm-4">
                        <select name="guest_no" class="guest_no" id="guest_no" onchange="calculate();">
                            <option value="1">1 Guest</option>
                            <option value="2">2 Guests</option>
                            <option value="3">3 Guests</option>
                            <option value="4">4 Guests</option>
                            <option value="5">5 Guests</option>
                            <option value="6">6 Guests</option>
                            <option value="10">10 Guests</option>
                            <option value="15">15 Guests</option>
                            <option value="25">25 Guests</option>
                            <option value="50">50 Guests</option>
                            <option value="51">More than 50 Guests</option>
                        </select>
                    </div>
                    <div class="col-sm-4">
                        <select name="shift" class="shift" id="shift" onchange="calculate();">
                            <option value="BreakFast">BreakFast</option>
                            <option value="Lunch">Lunch</option>
                            <option value="Dinner">Dinner</option> 
                        </select>
                    </div>
                </div> 
                <div class="row">
                    <div class="col-sm-6">
                        <select name="room" class="roomtype" id="roomtype" onchange="calculate();">
                            <option value="AC">A.C</option>
                            <option value="NON-AC">Non-A.C</option>
                            
                        </select>
                    </div>
                 
                    <div class="col-sm-6">
                        <select name="bookingtype" class="roomtype" id="bookingtype" onchange="calculate();"  >
                            <option value="Table">Table</option>
                            <option value="Family">Family-Hall</option>
                            <option value="Meeting">Meeting-Hall</option>
                            <option value="Hall">Mini-Hall</option>
                        </select>
                    </div>
                </div>
                &nbsp;&nbsp;&nbsp;&nbsp; 
                <label>Booking Price : <input class="roomtype" id="price1" type="text" name="price1" value="" disabled="true" style="border: none;"></label>
                <input type="hidden" name="price" id="price" >
                
                
                
                     
                <br><br>
                <div class="row">
                    <div class="col-sm-2"><input name="submit" type="button" value="08.00 AM" id="08 00 AM" onclick="timefunction(this.id)"></div>
                    <div class="col-sm-2"><input name="submit" type="button" value="08.30 AM" id="08 30 AM" onclick="timefunction(this.id)"></div>
                    <div class="col-sm-2"><input name="submit" type="button" value="09.00 AM" id="09 00 AM" onclick="timefunction(this.id)"></div>
                    <div class="col-sm-2"><input name="submit" type="button" value="09.30 AM" id="09 30 AM" onclick="timefunction(this.id)"></div>
                    <div class="col-sm-2"><input name="submit" type="button" value="10.00 AM" id="10 00 AM" onclick="timefunction(this.id)"></div>
                    <div class="col-sm-2"><input name="submit" type="button" value="10.30 AM" id="10 30 AM" onclick="timefunction(this.id)"></div>
                </div>
                
                <br>
                <div class="row">
                    <div class="col-sm-2"><input name="submit" type="button" value="12.00 PM" id="12 00 PM" onclick="timefunction(this.id)"></div>
                    <div class="col-sm-2"><input name="submit" type="button" value="12.30 PM" id="12 30 PM" onclick="timefunction(this.id)"></div>
                    <div class="col-sm-2"><input name="submit" type="button" value="01.00 PM" id="01 00 PM" onclick="timefunction(this.id)"></div>
                    <div class="col-sm-2"><input name="submit" type="button" value="01.30 PM" id="01 30 PM" onclick="timefunction(this.id)"></div>
                    <div class="col-sm-2"><input name="submit" type="button" value="02.00 PM" id="02 00 PM" onclick="timefunction(this.id)"></div>
                    <div class="col-sm-2"><input name="submit" type="button" value="02.30 PM" id="02 30 PM" onclick="timefunction(this.id)"></div>
                </div>
                
                <br>
                <div class="row">
                    <div class="col-sm-2"><input name="submit" type="button" value="07.00 PM" id="07 00 PM" onclick="timefunction(this.id)"></div>
                    <div class="col-sm-2"><input name="submit" type="button" value="07.30 PM" id="07 30 PM" onclick="timefunction(this.id)"></div>
                    <div class="col-sm-2"><input name="submit" type="button" value="08.00 PM" id="08 00 PM" onclick="timefunction(this.id)"></div>
                    <div class="col-sm-2"><input name="submit" type="button" value="08.30 PM" id="08 30 PM" onclick="timefunction(this.id)"></div>
                    <div class="col-sm-2"><input name="submit" type="button" value="09.00 PM" id="09 00 PM" onclick="timefunction(this.id)"></div>
                    <div class="col-sm-2"><input name="submit" type="button" value="09.30 PM" id="09 30 PM" onclick="timefunction(this.id)"></div>
                </div>
                <input type="hidden" name="time1" id="time">
                <br>
                <input type="submit" name="submit" value="Book Now" style="background-color: orange; color: white;">
                
            </div>
        </div>
        
        
        
            
        </div>
        
        
        
        <script type="text/javascript">
            function calculate()
            {
                var geust_price; var shiftprice; var roomtypep; var bookingtypep;
                
                if(document.getElementById("guest_no").value <=5 ) {geust_price=100} else if(document.getElementById("guest_no").value > 5 && document.getElementById("guest_no").value <= 15 ) {geust_price=200} else if(document.getElementById("guest_no").value > 15 && document.getElementById("guest_no").value <=300 ) {geust_price=300} else if(document.getElementById("guest_no").value > 30 && document.getElementById("guest_no").value <=50 ) {geust_price=400} else if(document.getElementById("guest_no").value > 50 ) {geust_price=500}
                if(document.getElementById("shift").value === "BreakFast" ) {shiftprice=100;} else if(document.getElementById("shift").value === "Lunch"){shiftprice=200;} else if(document.getElementById("shift").value == "Dinner"){shiftprice=300;}
                if(document.getElementById("roomtype").value === "AC") {roomtypep = 1000;} else if(document.getElementById("roomtype").value === "NONAC") {roomtypep = 500;}
                if(document.getElementById("bookingtype").value === "Table") {bookingtypep = 100;} else if(document.getElementById("bookingtype").value === "Family") {bookingtypep = 200;} else if(document.getElementById("bookingtype").value === "Meeting") {bookingtypep = 300;} else if(document.getElementById("bookingtype").value === "Hall") {bookingtypep = 400;}
                
                var total = geust_price + shiftprice + roomtypep + bookingtypep;
                
                document.getElementById("price").value = total;
                document.getElementById("price1").value = total;
               
                
            };
            
           
                   
        </script>
        <script type="text/javascript">
        $(function(){
            var dtToday = new Date(); 
            var month = dtToday.getMonth() + 1;
            var day = dtToday.getDate();
            var year = dtToday.getFullYear();
            if(month < 10)
                month = '0' + month.toString();
            if(day < 10)
             day = '0' + day.toString();
            var maxDate = year + '-' + month + '-' + day;
            $('#bdate').attr('min', maxDate);
        });
        </script>
        
        </form>
    </body>
</html>
