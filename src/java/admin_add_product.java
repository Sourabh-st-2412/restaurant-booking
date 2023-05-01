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
public class admin_add_product extends HttpServlet {
    Connection cn = null;
    Statement st = null;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       
        PrintWriter out = resp.getWriter();
        
        Database db = new Database();
        String result = db.Connectdb();
        out.println(result);
        
        String menu_id = req.getParameter("menu_id");
        String menu_name = req.getParameter("menu_name");
        String menu_type = req.getParameter("menu_type");
        String category = req.getParameter("category");
        String image = req.getParameter("image");
        String price = req.getParameter("price");
        
        Date date1 = new Date();
        SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy");
        String date = formatter.format(date1);
        
        String event = req.getParameter("submit");
        
        out.println(menu_name);
        out.println(menu_type);
        out.println(category);
        out.println(image);
        out.println(price);
        out.println(event);
        
        if(event.equals("Add"))
        {
            if(menu_name.equals("") || menu_type.equals("") || category.equals("") || image.equals("") || price.equals(""))
            {
                resp.setContentType("text/html");
                out.println("<script type='text/javascript'>");
                out.println("alert('Something is Empty')");
                out.println("location='admin_add_product.jsp'");
                out.println("</script>");
            }
            else
            {
                try
                {
                    String sql = "insert into admin_add_menu (menu_name, menu_type, category, image, price,date) values ('"+menu_name+"','"+menu_type+"','"+category+"','"+image+"','"+price+"','"+date+"')";
                    String insert = db.Insert(sql);
                    resp.setContentType("text/html");
                    out.println("<script type='text/javascript'>");
                    out.println("alert('Product Added Successfully')");
                    out.println("location='admin_add_product.jsp'");
                    out.println("</script>");
                }
                catch(Exception ex)
                {
                    resp.setContentType("text/html");
                    out.println("<script type='text/javascript'>");
                    out.println("alert('"+ex.toString()+"')");
                    out.println("location='admin_add_product.jsp'");
                    out.println("</script>");
                }
            }
        }
        
        
        if(event.equals("Update"))
        {
            if(menu_name.equals("") || menu_type.equals("") || category.equals("") || price.equals("") || image.equals(""))
            {
                resp.setContentType("text/html");
                out.println("<script type='text/javascript'>");
                out.println("alert('Something is Empty')");
                out.println("location='admin_add_product.jsp'");
                out.println("</script>");
            }
            else
            {
                try
                {
                    String sql = "update admin_add_menu set menu_name='"+menu_name+"' , menu_type='"+menu_type+"', category='"+category+"', price='"+price+"', image='"+image+"' where menu_id = '"+menu_id+"' ";
                    String update = db.update(sql);
                    resp.setContentType("text/html");
                    out.println("<script type='text/javascript'>");
                    out.println("alert('Product Added Successfully')");
                    out.println("location='admin_add_product.jsp'");
                    out.println("</script>");
                }
                catch(Exception ex)
                {
                    resp.setContentType("text/html");
                    out.println("<script type='text/javascript'>");
                    out.println("alert('"+ex.toString()+"')");
                    out.println("location='admin_add_product.jsp'");
                    out.println("</script>");
                }
            }
        }
        
        
        if(event.equals("Delete"))
        {
              try
                {
                    String sql = "delete from admin_add_menu where menu_id = '"+menu_id+"' ";
                    String delete = db.delete(sql);
                    resp.setContentType("text/html");
                    out.println("<script type='text/javascript'>");
                    out.println("alert('Product Added Successfully')");
                    out.println("location='admin_add_product.jsp'");
                    out.println("</script>");
                }
                catch(Exception ex)
                {
                    resp.setContentType("text/html");
                    out.println("<script type='text/javascript'>");
                    out.println("alert('"+ex.toString()+"')");
                    out.println("location='admin_add_product.jsp'");
                    out.println("</script>");
                }
            
        }
        
    }
    
     
}