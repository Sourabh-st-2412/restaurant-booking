/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
// Move to package
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
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
public class login extends HttpServlet {

    Connection cn = null;
    Statement st = null;
    
    
    
    
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
      PrintWriter out = resp.getWriter();
      
      HttpSession session = req.getSession();
      
      String username = req.getParameter("username");
      String password = req.getParameter("password");
      String event    = req.getParameter("submit");
      
      
      out.println(username);
      out.println(password);
      out.println(event);
      
      if(event.equals("Log-in"))
      {
          if(username.equals("")||password.equals(""))
          {
                       out.println("Something is empty");
                       resp.setContentType("text/html");
                       out.println("<script type='text/javascript'> ");
                       out.println("alert('Something is Empty')");
                       out.println("location='login.jsp' ");
                       out.println("</script>");
          }
          else
          {
              try
              {
                  
                  if(username.equals("Admin") && password.equals("Admin"))
                  {
                      resp.sendRedirect("admin_home.jsp");
                  }
                  else
                  {
                  
                        //Move all business logic to LoginService Class
                        Class.forName("com.mysql.jdbc.Driver");
                        cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_restaurant_booking","root","root");
                        st = cn.createStatement();
                        //Check sql injection
                        String sql = "select * from registration where ( email ='"+username+"' || contact='"+username+"' ) && password = '"+password+"';  ";
                        System.out.println(sql);
                        ResultSet rs = st.executeQuery(sql);


                        if(rs.next())
                        {
                            session.setAttribute("userid",rs.getString("user_id").toString());
                            session.setAttribute("name",rs.getString("name").toString());
                            session.setAttribute("email",rs.getString("email").toString());
                            session.setAttribute("contact",rs.getString("contact").toString());
                            resp.sendRedirect("user_home.jsp");
                        }
                        else
                        {
                             out.println("Incorrect Username Or Password");
                             resp.setContentType("text/html");
                             out.println("<script type='text/javascript'> ");
                             out.println("alert('Incorrect Username Or Password')");
                             out.println("location='login.jsp' ");
                             out.println("</script>");
                        }
                  }
                  
              }
              catch(Exception ex)
              {
                  //add logs. check logback
                    out.println(ex.toString());
                    resp.setContentType("text/html");
                    out.println("<script type='text/javascript'> ");
                    out.println("alert('"+ex.toString()+"')");
                    out.println("location='login.jsp' ");
                    out.println("</script>");
              }
          }
      }
      
      
      if(event.equals("New User"))
      {
          resp.sendRedirect("registration.jsp");
      }
      
      
    }

    
}
