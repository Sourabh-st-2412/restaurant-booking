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
public class user_menu_type_selection extends HttpServlet {
    
    Connection cn = null;
    Statement st = null;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       
        PrintWriter out = resp.getWriter();
        HttpSession session = req.getSession();
        
        String event = req.getParameter("submit");
        
        out.println(event);
        
        Database db = new Database();
        String result = db.Connectdb();
        out.println(result);
        
        if(event.equals("Veg"))
        {
            session.setAttribute("menu_type", "Veg");
            session.setAttribute("category", "category");
            resp.sendRedirect("user_product_selection.jsp");
        }
        
        if(event.equals("Non-Veg"))
        {
            session.setAttribute("menu_type", "Non-Veg");
            session.setAttribute("category", "category");
            resp.sendRedirect("user_product_selection.jsp");
        }
        
    }

  
}
