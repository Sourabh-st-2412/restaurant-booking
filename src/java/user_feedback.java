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

/**
 *
 * @author soura
 */
public class user_feedback extends HttpServlet {

    
    Connection cn = null;
    Statement st = null;
    
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PrintWriter out = resp.getWriter();
        
        
        String name = req.getParameter("name");
        String email = req.getParameter("email");
        String feedback = req.getParameter("feedback");
        String event = req.getParameter("submit");
        
        out.println(name);
        out.println(email);
        out.println(feedback);
        
        Database db = new Database();
        String result = db.Connectdb();
        out.println(result);
        
        if(event.equals("Submit"))
        {
           if(name.equals("") || email.equals("") || feedback.equals("") )
           {
               out.println("Something is Empty");
                       resp.setContentType("text/html");
                       out.println("<script type='text/javascript'> ");
                       out.println("alert('Something is Empty')");
                       out.println("location='user_feedback.jsp' ");
                       out.println("</script>");
           }
           else
           {
              
                   try
                   {
                       String sql = " insert into feedback ( name, email, feedback) values ('"+name+"' , '"+email+"', '"+feedback+"' ) ";
                       String insert = db.Insert(sql);
                       out.println(insert);
                       resp.setContentType("text/html");
                       out.println("<script type='text/javascript'> ");
                       out.println("alert('Thank You...!')");
                       out.println("location='user_feedback.jsp' ");
                       out.println("</script>");
                   }
                   catch(Exception ex)
                   {
                       out.println(ex.toString());
                   }
               
           }
        }
    }

    
}
