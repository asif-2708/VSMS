package com.vehicles;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/updateCategory")
public class UpdateCategoryServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    	String id = req.getParameter("id");
    	String VehicleCat = req.getParameter("VehicleCat");
      
        try {            
            CategoryDtls p=new CategoryDtls();
            p.setId(Integer.parseInt(id));
            p.setVehicleCat(VehicleCat);
                        
            CategoryDAO.updateCategory(p);

            resp.sendRedirect("admin/editCategory.jsp?msg=valid&id="+id);

        } catch (Exception e) {
            resp.getWriter().println("Error " + e.getMessage());
        }
    }
}
