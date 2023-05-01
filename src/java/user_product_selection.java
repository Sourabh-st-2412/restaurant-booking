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
import javax.print.attribute.standard.Sides;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author soura
 */
public class user_product_selection extends HttpServlet {
    
    Connection cn = null;
    Statement st = null;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       
        PrintWriter out = resp.getWriter();
        HttpSession session = req.getSession();
        
        
        String event = req.getParameter("submit");
        
        String menu_id = req.getParameter("menu_id");
        String menu_name = req.getParameter("menu_name");
        String price = req.getParameter("price");
        String category = req.getParameter("category");
        String image = req.getParameter("image");
        String menu_type = req.getParameter("menu_type");
        
        Date date = new Date();
        SimpleDateFormat df = new SimpleDateFormat("dd/MM/yyyy");
        String order_date = df.format(date);
        
       
        out.println(event);
        
        Database db = new Database();
        String result = db.Connectdb();
        out.println(result);
        
        if(event.equals("ADD TO ORDER"))
        {
            try
            {
                String sql = db.Insert("insert into cart ( user_id, name, date, menu_id, menu_name, menu_type, category, image, price, quantity, total) values ('"+session.getAttribute("userid")+"', '"+session.getAttribute("name") +"', '"+order_date+"', '"+menu_id+"','"+menu_name+"','"+menu_type+"','"+category+"','"+image+"','"+price+"', '1', '"+price+"')");
                String insert = db.Insert(sql);
                out.println(insert);
                       resp.setContentType("text/html");
                       out.println("<script type='text/javascript'> ");
                       out.println("alert('Product Added to Cart')");
                       out.println("location='user_cart.jsp' ");
                       out.println("</script>");
            }
            catch(Exception ex)
            {
                resp.setContentType("text/html");
                out.println("<script type='text/javascript'> ");
                out.println("alert('"+ex.toString()+"')");
                out.println("location='user_product_selection.jsp' ");
                out.println("</script>");
            }
        }
    }

    
}
