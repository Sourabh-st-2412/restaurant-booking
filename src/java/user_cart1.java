/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.ws.rs.DELETE;

/**
 *
 * @author soura
 */
public class user_cart1 extends HttpServlet {
    Connection cn = null;
    Statement st = null;
    
     
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       
        PrintWriter out = resp.getWriter();
        HttpSession session = req.getSession();
         
        String sql1="";
        String insert ="";
        String event = req.getParameter("submit");
        
        Date date = new Date();
        SimpleDateFormat df = new SimpleDateFormat("dd/MM/yyyy");
        String order_date = df.format(date);
        
        Database db = new Database();
        String result = db.Connectdb();
        out.println(result);
        out.println(event);
         
        
        if(event.equals("Place Order"))
        {
            try
            { 
                  Class.forName("com.mysql.jdbc.Driver");
                  cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_restaurant_booking","root","root");
                  st = cn.createStatement(); 
                  String sql = "select * from cart where  user_id = '"+session.getAttribute("userid") +"' "; 
                  ResultSet rs = st.executeQuery(sql);
                   
                
                    while(rs.next())
                    {

                        sql1 = "insert into user_menu_book (user_id, name, date, menu_id, menu_name, menu_type, category, image, price, quantity, total, status) values ('"+rs.getString("user_id") +"', '"+rs.getString("name") +"', '"+order_date+"', '"+rs.getString("menu_id") +"', '"+rs.getString("menu_name") +"', '"+rs.getString("menu_type") +"', '"+rs.getString("category") +"', '"+rs.getString("image") +"', '"+rs.getString("price") +"','"+rs.getString("quantity") +"','"+rs.getString("total") +"','Pending')";
                        insert = db.Insert(sql1);
                        out.println(insert);
                    }
                    
                    sql1 = "delete from cart where  user_id = '"+session.getAttribute("userid") +"' ";
                    insert = db.delete(sql1);
                    out.println(insert);
                    
                    resp.setContentType("text/html");
                    out.println("<script type='text/javascript' >");
                    out.println("alert('Order Placed')");
                    out.println("location = 'user_cart.jsp' ");
                    out.println("</script>");
                    
            }
            catch(Exception ex)
            {
                resp.setContentType("text/html");
                out.println("<script type='text/javascript' >");
                out.println("alert('"+ex.toString()+"')");
                out.println("location = 'user_cart.jsp' ");
                out.println("</script>");
            }
        }
        
    }
 
}