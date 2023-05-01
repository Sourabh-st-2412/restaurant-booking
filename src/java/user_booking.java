/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author soura
 */
public class user_booking extends HttpServlet {
    
    Connection cn = null;
    Statement st = null;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       
        PrintWriter out = resp.getWriter();
        HttpSession session = req.getSession();
        
         
        String date = req.getParameter("date");
        String guest_no = req.getParameter("guest_no");
        String shift = req.getParameter("shift");
        String room = req.getParameter("room");
        String price = req.getParameter("price");
        String time = req.getParameter("time1");
        String bookingtype = req.getParameter("bookingtype");
        
        Date booking_date1 = new Date();
        SimpleDateFormat formatter  = new SimpleDateFormat();
        String booking_date = formatter.format(booking_date1);
        
        
        String event = req.getParameter("submit");
        
        out.println(date);
        out.println(guest_no);
        out.println(shift);
        out.println(room);
        out.println(price);
        out.println(time);
        out.println(bookingtype);
        
        out.println(event);
        
        Database db = new Database();
        String result = db.Connectdb();
        out.println(result);
        
        if(event.equals("Book Now"))
        {
            if(date.equals("") || guest_no.equals("") || shift.equals("") || room.equals("") || price.equals("")||time.equals("")||bookingtype.equals(""))
            {
                resp.setContentType("text/html");
                out.println("<script type='text/javascript' >");
                out.println("alert('Something is empty')");
                out.println("location = 'user_booking.jsp' ");
                out.println("</script>");
            }
            else
            {
                try
                {
                    String sql = "insert into user_booking (booking_date,user_id,name,date,guest_no,shift,room,time,bookingtype) values ('"+booking_date+"','"+session.getAttribute("userid")+"', '"+session.getAttribute("name") +"', '"+date+"', '"+guest_no+"', '"+shift+"','"+room+"','"+time+"','"+bookingtype+"')";
                    String insert =  db.Insert(sql);
                    out.println(insert);
                    
                    session.setAttribute("bookingtype",bookingtype);
                    
                    resp.setContentType("text/html");
                    out.println("<script type='text/javascript' >");
                    out.println("alert('Table booking Confirmed You can book your menu')");
                    out.println("location = 'user_menu_type_selection.jsp' ");
                    out.println("</script>");
                }
                catch(Exception ex)
                {
                    resp.setContentType("text/html");
                    out.println("<script type='text/javascript' >");
                    out.println("alert('"+ex.toString()+"')");
                    out.println("location = 'user_booking.jsp' ");
                    out.println("</script>");
                }
            }
         }
    }

    
}
