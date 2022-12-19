<%@page import="com.vehicles.DbConnect"%>
<%@page import="java.sql.*"%>
<%
  int id = Integer.parseInt(request.getParameter("id"));
  String AdminStatus = request.getParameter("AdminStatus");
  
  try
  {
	  Connection con = DbConnect.Connect();
	  PreparedStatement ps = con.prepareStatement("update servicerequest set AdminStatus=? where id=?");
	  ps.setString(1, AdminStatus);
	  ps.setInt(2, id);
	  ps.executeUpdate();
	  response.sendRedirect("viewServiceDtls.jsp?msg=valid&id="+id);
  }
  catch(Exception e){
	  response.sendRedirect("viewServiceDtls.jsp?msg=invalid&id="+id);
  }
%>