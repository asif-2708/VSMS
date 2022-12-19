<%@page import="com.vehicles.DbConnect"%>
<%@page import="java.sql.*"%>

<%
	int id = Integer.parseInt(request.getParameter("id"));
	try {
		Connection con = DbConnect.Connect();
		Statement st = con.createStatement();
		st.executeUpdate("delete from servicerequest where id="+id+"");
		response.sendRedirect("all_Servicing.jsp");
	} catch (Exception e) {
		System.out.println(e);
	}
%>