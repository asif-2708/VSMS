<%@page import="com.vehicles.DbConnect"%>
<%@page import="java.sql.*"%>
<%
  int id = Integer.parseInt(request.getParameter("id"));
  String AdminResponse = request.getParameter("AdminResponse");
  String AdminStatus = request.getParameter("AdminStatus");
  
  try
  {
	  Connection con = DbConnect.Connect();
	  PreparedStatement ps = con.prepareStatement("update enquiry set AdminResponse=?,AdminStatus=? where id=?");
	  ps.setString(1, AdminResponse);
	  ps.setString(2, AdminStatus);
	  ps.setInt(3, id);
	  ps.executeUpdate();
	  response.sendRedirect("viewEnquiryDtls.jsp?msg=valid&id="+id);
  }
  catch(Exception e){
	  response.sendRedirect("viewEnquiryDtls.jsp?msg=invalid&id="+id);
  }
%>