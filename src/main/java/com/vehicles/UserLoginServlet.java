package com.vehicles;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/userlogin")
public class UserLoginServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String email = req.getParameter("Email");
		String pass = req.getParameter("Password");
		
		UserDAO dao = new UserDAO(DbConnect.Connect());
		UserDtls u = dao.loginUser(email, pass);
		
		HttpSession session = req.getSession();
		if(u!=null) {
			session.setAttribute("email", email);
			session.setAttribute("userId", u.getId());
			session.setAttribute("validMsgg", "Logged In Successfully");
			resp.sendRedirect("index.jsp");			
		}
		else {
			session.setAttribute("invalidMsgg", "Invalid Credential, Try Again..");
			resp.sendRedirect("index.jsp");			
		}
	}

}
