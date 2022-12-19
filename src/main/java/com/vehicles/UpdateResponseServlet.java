package com.vehicles;

import java.io.IOException;
import java.sql.Connection;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@WebServlet("/adminResponse")
public class UpdateResponseServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    	int id=Integer.parseInt(req.getParameter("id"));
    	String email=req.getParameter("email");
    	//email = email.trim();
        int EnquiryNumber = (int) (Math.random() * 100000000);
    	String EnquiryType = req.getParameter("EnquiryType");
        String Description = req.getParameter("Description");
        String AdminResponse = req.getParameter("AdminResponse");
        String AdminStatus = req.getParameter("AdminStatus"); 
        
        
        try {
            EnquiryDtls ed=new EnquiryDtls(email,EnquiryNumber,EnquiryType,Description,AdminResponse,AdminStatus);
            EnquiryDAO.updateResponse(ed);
            resp.sendRedirect("admin/viewEnquiryDtls.jsp?msg=valid&id="+id);            		
        } catch (Exception e) {
            resp.getWriter().println("Error " + e.getMessage());
        }        
    }
}