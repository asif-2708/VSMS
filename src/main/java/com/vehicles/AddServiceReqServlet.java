package com.vehicles;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@WebServlet("/addServiceReq")
public class AddServiceReqServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    	String email=req.getParameter("email");
    	email = email.trim();
        int ServiceNumber = (int) (Math.random() * 100000000);
    	String Category = req.getParameter("Category");
        String VehicleName = req.getParameter("VehicleName");
        String VehicleModel = req.getParameter("VehicleModel");
        String VehicleBrand = req.getParameter("VehicleBrand");
        String VehicleRegno = req.getParameter("VehicleRegno");
        String ServiceDate = req.getParameter("ServiceDate");
        String ServiceTime = req.getParameter("ServiceTime");
        String DeliveryType = req.getParameter("DeliveryType");
        String PickupAddress = req.getParameter("PickupAddress");
               
        try {
            ServiceReqDtls sd=new ServiceReqDtls(email, ServiceNumber, Category, VehicleName, VehicleModel, VehicleBrand, VehicleRegno, ServiceDate, ServiceTime, DeliveryType, PickupAddress);
            ServiceReqDAO.addService(sd);
            resp.sendRedirect("user/requestForm.jsp?msg=valid");

        } catch (Exception e) {
            resp.getWriter().println("Error " + e.getMessage());
        }
    }
}