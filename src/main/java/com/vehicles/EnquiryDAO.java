package com.vehicles;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class EnquiryDAO {

	private Connection con;

	public EnquiryDAO(Connection con) {
		super();
		this.con = con;
	}

	// Insert Enquiry
	public static void addEnquiry(EnquiryDtls ed) throws Exception {
		Connection con = DbConnect.Connect();
		PreparedStatement ps = con
				.prepareStatement("insert into enquiry(Email,EnquiryNumber,EnquiryType,Description) VALUES(?,?,?,?)");
		ps.setString(1, ed.getEmail());
		ps.setInt(2, ed.getEnquiryNumber());
		ps.setString(3, ed.getEnquiryType());
		ps.setString(4, ed.getDescription());
		ps.executeUpdate();

		con.close();
	}

	// View Enquiry History
	public List<EnquiryDtls> getAllEnquiry(String email) {
		List<EnquiryDtls> list = new ArrayList<EnquiryDtls>();
		EnquiryDtls b = null;

		try {
			String sql = "select * from enquiry where Email='" + email + "'";
			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {

				b = new EnquiryDtls();
				b.setId(rs.getInt(1));
				b.setEmail(rs.getString(2));
				b.setEnquiryNumber(rs.getInt(3));
				b.setEnquiryType(rs.getString(4));
				b.setDescription(rs.getString(5));
				b.setEnquiryDate(rs.getString(6));
				list.add(b);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	// Update Response
	public static void updateResponse(EnquiryDtls e) throws Exception {
		Connection con = DbConnect.Connect();
		PreparedStatement ps = con.prepareStatement("update enquiry set AdminResponse=?,AdminStatus=? where id=?");
		ps.setString(1, e.getAdminResponse());
		ps.setString(2, e.getAdminStatus());
		ps.setInt(3, e.getId());
		ps.executeUpdate();

		con.close();
	}
}