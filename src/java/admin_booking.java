/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author soura
 */
public class admin_booking extends HttpServlet {

    Connection cn = null;
    Statement st = null;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
         
        PrintWriter out = resp.getWriter();
        HttpSession session = req.getSession();
        
        String changestatus = req.getParameter("changestatus");
        String booking_id = req.getParameter("booking_id");
        String event = req.getParameter("submit");
        
        Database db = new Database();
        String result = db.Connectdb();
        out.println(result);
        
        if(event.equals("Change"))
        {
            try
            {
                String sql = "update user_booking set bstatus = '"+changestatus+"' where booking_id = '"+booking_id+"' ";
                String update = db.update(sql);
                resp.setContentType("text/html");
                out.println("<script type='text/javascript' >");
                out.println("alert('"+update.toString()+"')");
                out.println("location = 'admin_booking.jsp' ");
                out.println("</script>");
                
            }
            catch(Exception ex)
            {
                resp.setContentType("text/html");
                out.println("<script type='text/javascript' >");
                out.println("alert('"+ex.toString()+"')");
                out.println("location = 'admin_booking.jsp' ");
                out.println("</script>");
            }
        }
    }
     
}