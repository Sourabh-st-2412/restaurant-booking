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
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author soura
 */
public class user_cart extends HttpServlet {
    
    Connection cn = null;
    Statement st = null;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       
        PrintWriter out = resp.getWriter();
        HttpSession session = req.getSession();
        
        String cart_id = req.getParameter("cart_id"); 
        String menu_id = req.getParameter("menu_id");
        String menu_name = req.getParameter("menu_name");
        String menu_type = req.getParameter("menu_type");
        String category = req.getParameter("category");
        String image = req.getParameter("image");
        String price = req.getParameter("price");
        String quantity = req.getParameter("quantity");
        String total = req.getParameter("total");
        String cart_total = req.getParameter("cart_total");
        String total_products = req.getParameter("total_products");
        String booking_type = "";
        String event = req.getParameter("submit");
        
        Database db = new Database();
        String result = db.Connectdb();
        out.println(result);
        out.println(event);
        
        if(event.equals("+"))
        {
                 
            try
            {
                quantity = String.valueOf(Long.parseLong(quantity)+1); 
                total = String.valueOf(Long.parseLong(quantity)*Long.parseLong(price)); 
                
                String sql = "update cart set quantity='"+quantity+"' , total='"+total+"' where cart_id ='"+cart_id+"' ";
                String update = db.update(sql);
                out.println(update);
                resp.sendRedirect("user_cart.jsp");
                
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
        
        if(event.equals("-"))
        {
                 
            try
            {
                quantity = String.valueOf(Long.parseLong(quantity)-1); 
                total = String.valueOf(Long.parseLong(quantity)*Long.parseLong(price)); 
                
                String sql = "update cart set quantity='"+quantity+"' , total='"+total+"' where cart_id ='"+cart_id+"' ";
                String update = db.update(sql);
                out.println(update);
                resp.sendRedirect("user_cart.jsp");
                
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
        
        
         
        
        if(event.equals("remove"))
        {
            try
            {
                String sql = "delete from cart where cart_id ='"+cart_id+"' ";
                String delete = db.delete(sql);
                out.println(delete);
                resp.sendRedirect("user_cart.jsp"); 
                
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
        
        
        if(event.equals("Place Order"))
        {
            try
            {
                
                Class.forName("com.mysql.jdbc.Driver");
                cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_restaurant_booking","root","root");
                st = cn.createStatement(); 
                String sql = "select * from cart where user_id = '"+session.getAttribute("user_id") +"'";
                System.out.println(sql);
                ResultSet rs = st.executeQuery(sql);
                
                while(rs.next())
                {
                    String sql1 = "insert into user_menu_book (user_id, name, date, menu_id, menu_name, menu_type, category, image, price, quantity, total, status) values ('"+rs.getString("user_id") +"', '"+rs.getString("name") +"', '"+rs.getString("date") +"', '"+rs.getString("menu_id") +"', '"+rs.getString("menu_name") +"', '"+rs.getString("menu_type") +"', '"+rs.getString("category") +"', '"+rs.getString("image") +"', '"+rs.getString("price") +"','"+rs.getString("quantity") +"','"+rs.getString("total") +"','Pending')";
                    String insert = db.Insert(sql1);
                    out.println(insert);
                }
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