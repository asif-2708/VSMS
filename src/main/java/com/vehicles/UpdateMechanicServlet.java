package com.vehicles;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/updateMechanic")
public class UpdateMechanicServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    	String id = req.getParameter("id");
    	String FullName = req.getParameter("FullName");
        String MobileNumber = req.getParameter("MobileNumber");
        String Email = req.getParameter("Email");
        String Address =req.getParameter("Address");
      
        try {            
            MechanicDtls p=new MechanicDtls();
            p.setId(Integer.parseInt(id));
            p.setFullName(FullName);
            p.setMobileNumber(MobileNumber);
            p.setEmail(Email);
            p.setAddress(Address);
                        
            MechanicDAO.updateMechinc(p);

            resp.sendRedirect("admin/editMechanics.jsp?msg=valid&id="+id);

        } catch (Exception e) {
            resp.getWriter().println("Error " + e.getMessage());
        }
    }
}
