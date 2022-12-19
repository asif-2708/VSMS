package com.vehicles;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/addUser")
public class AddUserServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String FullName = req.getParameter("FullName");
		String MobileNo = req.getParameter("MobileNo");
		String Email = req.getParameter("Email");
		String Password = req.getParameter("Password");
                
        try {
            UserDtls ud = new UserDtls(FullName,MobileNo,Email,Password);
            UserDAO.addUser(ud);
            resp.sendRedirect("index.jsp?msgg=valid");

        } catch (Exception e) {
            resp.getWriter().println("Error " + e.getMessage());
        }
	}
}