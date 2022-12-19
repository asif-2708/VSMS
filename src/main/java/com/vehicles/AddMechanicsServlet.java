package com.vehicles;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/addMechanic")
public class AddMechanicsServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String FullName = req.getParameter("FullName");
        String MobileNumber = req.getParameter("MobileNumber");
        String Email = req.getParameter("Email");
        String Address = req.getParameter("Address");
        
        try {
            MechanicDtls md = new MechanicDtls(FullName, MobileNumber, Email, Address);
            MechanicDAO.addMechanics(md);
            resp.sendRedirect("admin/add_Mechanics.jsp?msg=valid");

        } catch (Exception e) {
            resp.getWriter().println("Error " + e.getMessage());
        }
	}
}