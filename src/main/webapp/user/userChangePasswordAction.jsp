<%@page import="com.vehicles.DbConnect"%>
<%@page import="java.sql.*"%>
<%
	String email = session.getAttribute("email").toString();
	String oldPassword = request.getParameter("oldpassword");
	String newPassword = request.getParameter("newpassword");
	String confirmPassword = request.getParameter("confirmpassword");

	if (!confirmPassword.equals(newPassword))
		response.sendRedirect("userChangePassword.jsp?msg=notMatch");
	else {
		int check = 0;
		try {
			Connection con = DbConnect.Connect();
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery(
					"select * from user where Email='" + email + "' and Password='" + oldPassword + "'");
			while (rs.next()) {
				check = 1;
				st.executeUpdate("update user set Password='" + newPassword + "' where Email='" + email + "'");
				response.sendRedirect("userChangePassword.jsp?msg=done");
			}
			if (check == 0)
				response.sendRedirect("userChangePassword.jsp?msg=wrong");
		} catch (Exception e) {
			System.out.println(e);
		}
	}
%>