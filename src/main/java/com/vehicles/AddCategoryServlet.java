package com.vehicles;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/addCategory")
public class AddCategoryServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String VehicleCat = req.getParameter("VehicleCat");
                
        try {
            CategoryDtls cd = new CategoryDtls(VehicleCat);
            CategoryDAO.addCategory(cd);
            resp.sendRedirect("admin/add_Category.jsp?msg=valid");

        } catch (Exception e) {
            resp.getWriter().println("Error " + e.getMessage());
        }
	}
}