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

/**
 *
 * @author soura
 */
public class registration extends HttpServlet {

    Connection cn = null;
    Statement st = null;
    
    
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
      
        PrintWriter out = resp.getWriter();
        
        String name = req.getParameter("name");
        String email = req.getParameter("email");
        String contact = req.getParameter("contact");
        String password = req.getParameter("password");
        String cpassword = req.getParameter("cpassword");
        String event = req.getParameter("submit");
        
        Date date1 = new Date();
        SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy");
        String date = formatter.format(date1);
        
        out.println(name);
        out.println(email);
        out.println(contact);
        out.println(password);
        out.println(cpassword);
        out.println(event);
        
        Database db = new Database();
        String result = db.Connectdb();
        out.println(result);
        
        if(event.equals("Submit"))
        {
           if(name.equals("") || email.equals("") || contact.equals("") || password.equals("") || cpassword.equals(""))
           {
               out.println("Something is Empty");
                       resp.setContentType("text/html");
                       out.println("<script type='text/javascript'> ");
                       out.println("alert('Something is Empty')");
                       out.println("location='registration.jsp' ");
                       out.println("</script>");
           }
           else
           {
               if(password.equals(cpassword))
               {
                   try
                   {
                       String insert = db.Insert(" insert into registration ( name, email, contact, password, cpassword) values ('"+name+"' , '"+email+"', '"+contact+"' , '"+password+"', '"+cpassword+"'  ) ");
                       out.println(insert);
                       
                       resp.setContentType("text/html");
                       out.println("<script type='text/javascript'> ");
                       out.println("alert('Signed Up Successfully')");
                       out.println("location='login.jsp' ");
                       out.println("</script>");
                   }
                   catch(Exception ex)
                   {
                       out.println(ex.toString());
                   }
               }
               else
               {
                   out.println("passwords are not same");
                   
                       resp.setContentType("text/html");
                       out.println("<script type='text/javascript'> ");
                       out.println("alert('passwords are not same')");
                       out.println("location='registration.jsp' ");
                       out.println("</script>");
               }
           }
        
        }
        
        
        
        
    }

    
  
}
