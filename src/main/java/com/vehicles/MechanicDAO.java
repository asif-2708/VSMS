package com.vehicles;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class MechanicDAO {

	private Connection con;

	public MechanicDAO(Connection con) {
		super();
		this.con = con;
	}

	// Insert Mechanics
	public static void addMechanics(MechanicDtls md) throws Exception {
		Connection con = DbConnect.Connect();
		PreparedStatement ps = con
				.prepareStatement("insert into mechanics(FullName,MobileNumber,Email,Address) VALUES(?,?,?,?)");
		ps.setString(1, md.getFullName());
		ps.setString(2, md.getMobileNumber());
		ps.setString(3, md.getEmail());
		ps.setString(4, md.getAddress());
		ps.executeUpdate();
		con.close();
	}

	// Manage Mechanics
	public static List<MechanicDtls> getMechanics(boolean sort, boolean desc) throws Exception {
		List<MechanicDtls> list = new ArrayList<MechanicDtls>();
		Connection con = DbConnect.Connect();
		ResultSet rs = null;
		if (sort) {
			rs = con.createStatement().executeQuery("SELECT * FROM mechanics order by FullName");
			if (desc) {
				rs = con.createStatement().executeQuery("SELECT * FROM mechanics order by FullName desc");
			}
		} else {
			rs = con.createStatement().executeQuery("SELECT * FROM mechanics order by id");
		}
		while (rs.next()) {
			MechanicDtls p = new MechanicDtls();
			p.setId(rs.getInt("id"));
			p.setFullName(rs.getString("FullName"));
			p.setMobileNumber(rs.getString("MobileNumber"));
			p.setEmail(rs.getString("Email"));
			p.setAddress(rs.getString("Address"));
			list.add(p);
		}
		con.close();
		return list;
	}

	// Edit Mechanics
	public MechanicDtls getMechanicById(int id) {
		MechanicDtls p = null;

		try {
			String sql = "select * from mechanics where id=?";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, id);

			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				p = new MechanicDtls();
				p.setId(rs.getInt(1));
				p.setFullName(rs.getString(2));
				p.setMobileNumber(rs.getString(3));
				p.setEmail(rs.getString(4));
				p.setAddress(rs.getString(5));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return p;
	}

	// update Mechanics
	public static void updateMechinc(MechanicDtls p) throws Exception {
		Connection con = DbConnect.Connect();
		PreparedStatement ps = con
				.prepareStatement("UPDATE mechanics set FullName=?,MobileNumber=?,Email=?,Address=? where id=?");
		ps.setString(1, p.getFullName());
		ps.setString(2, p.getMobileNumber());
		ps.setString(3, p.getEmail());
		ps.setString(4, p.getAddress());
		ps.setInt(5, p.getId());

		ps.executeUpdate();
		con.close();
	}
}
