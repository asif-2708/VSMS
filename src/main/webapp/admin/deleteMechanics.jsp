<%@page import="com.vehicles.DbConnect"%>
<%@page import="java.sql.*"%>

<%
	int id = Integer.parseInt(request.getParameter("id"));
	try {
		Connection con = DbConnect.Connect();
		Statement st = con.createStatement();
		st.executeUpdate("delete from mechanics where id="+id+"");
		response.sendRedirect("manage_Mechanics.jsp");
	} catch (Exception e) {
		System.out.println(e);
	}
%>