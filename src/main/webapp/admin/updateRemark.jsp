<%@page import="com.vehicles.DbConnect"%>
<%@page import="java.sql.*"%>
<%
  int id = Integer.parseInt(request.getParameter("id"));
  String AdminRemark = request.getParameter("AdminRemark");
  String ServiceBy = request.getParameter("ServiceBy");
  int ServiceCharge = Integer.parseInt(request.getParameter("ServiceCharge"));
  int PartsCharge = Integer.parseInt(request.getParameter("PartsCharge"));
  int OtherCharge = Integer.parseInt(request.getParameter("OtherCharge"));
  String AdminStatus = request.getParameter("AdminStatus");
  
  try
  {
	  Connection con = DbConnect.Connect();
	  PreparedStatement ps = con.prepareStatement("update servicerequest set AdminRemark=?,ServiceBy=?,ServiceCharge=?,PartsCharge=?,OtherCharge=?,AdminStatus=? where id=?");
	  ps.setString(1, AdminRemark);
	  ps.setString(2, ServiceBy);
	  ps.setInt(3, ServiceCharge);
	  ps.setInt(4, PartsCharge);
	  ps.setInt(5, OtherCharge);
	  ps.setString(6, AdminStatus);
	  ps.setInt(7, id);
	  ps.executeUpdate();
	  response.sendRedirect("viewServiceDtls.jsp?msg=valid&id="+id);
  }
  catch(Exception e){
	  response.sendRedirect("viewServiceDtls.jsp?msg=invalid&id="+id);
  }
%>