package com.vehicles;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class UserDAO {

	private Connection con;

	public UserDAO(Connection con) {
		super();
		this.con = con;
	}

	//Admin login Here
	public UserDtls loginAdmin(String e, String p) {
		UserDtls ud = null;
		try {
			String sql = "select * from admin where username=? and password=?";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, e);
			ps.setString(2, p);

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				ud = new UserDtls();
				ud.setEmail(rs.getString(1));
				ud.setPassword(rs.getString(2));
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return ud;
	}

	// Insert User
	public static void addUser(UserDtls ud) throws Exception {
		Connection con = DbConnect.Connect();
		PreparedStatement ps = con
				.prepareStatement("insert into user(FullName,MobileNo,Email,Password) VALUES(?,?,?,?)");
		ps.setString(1, ud.getFullName());
		ps.setString(2, ud.getMobileNo());
		ps.setString(3, ud.getEmail());
		ps.setString(4, ud.getPassword());
		ps.executeUpdate();
		con.close();
	}

	// login Query
	public UserDtls loginUser(String email, String password) {
		UserDtls us = null;

		try {
			String sql = "select * from user where Email=? and Password=?";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, email);
			ps.setString(2, password);

			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				us = new UserDtls();
				us.setId(rs.getInt(1));
				us.setFullName(rs.getString(2));
				us.setMobileNo(rs.getString(3));
				us.setEmail(rs.getString(4));
				us.setPassword(rs.getString(5));
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return us;
	}
	
	// Register User
		public static List<UserDtls> getUser(boolean sort, boolean desc) throws Exception {
			List<UserDtls> list = new ArrayList<UserDtls>();
			Connection con = DbConnect.Connect();
			ResultSet rs = null;
			if (sort) {
				rs = con.createStatement().executeQuery("SELECT * FROM user order by FullName");
				if (desc) {
					rs = con.createStatement().executeQuery("SELECT * FROM user order by FullName desc");
				}
			} else {
				rs = con.createStatement().executeQuery("SELECT * FROM user order by id");
			}
			while (rs.next()) {
				UserDtls p = new UserDtls();
				p.setId(rs.getInt("id"));
				p.setFullName(rs.getString("FullName"));
				p.setMobileNo(rs.getString("MobileNo"));
				p.setEmail(rs.getString("Email"));
				p.setRegDate(rs.getString("RegDate"));
				list.add(p);
			}
			con.close();
			return list;
		}
}
