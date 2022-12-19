package com.vehicles;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class CategoryDAO {

	private Connection con;

	public CategoryDAO(Connection con) {
		super();
		this.con = con;
	}

	// Insert Mechanics
	public static void addCategory(CategoryDtls cd) throws Exception {
		Connection con = DbConnect.Connect();
		PreparedStatement ps = con
				.prepareStatement("insert into category(VehicleCat) VALUES(?)");
		ps.setString(1, cd.getVehicleCat());
		ps.executeUpdate();
		con.close();
	}

	// Manage Mechanics
	public static List<CategoryDtls> getCategory(boolean sort, boolean desc) throws Exception {
		List<CategoryDtls> list = new ArrayList<CategoryDtls>();
		Connection con = DbConnect.Connect();
		ResultSet rs = null;
		if (sort) {
			rs = con.createStatement().executeQuery("SELECT * FROM category order by VehicleCat");
			if (desc) {
				rs = con.createStatement().executeQuery("SELECT * FROM category order by VehicleCat desc");
			}
		} else {
			rs = con.createStatement().executeQuery("SELECT * FROM category order by id");
		}
		while (rs.next()) {
			CategoryDtls p = new CategoryDtls();
			p.setId(rs.getInt("id"));
			p.setVehicleCat(rs.getString("VehicleCat"));
			list.add(p);
		}
		con.close();
		return list;
	}

	// Edit Mechanics
	public CategoryDtls getCategoryById(int id) {
		CategoryDtls p = null;

		try {
			String sql = "select * from category where id=?";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, id);

			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				p = new CategoryDtls();
				p.setId(rs.getInt(1));
				p.setVehicleCat(rs.getString(2));				
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return p;
	}

	// update Mechanics
	public static void updateCategory(CategoryDtls p) throws Exception {
		Connection con = DbConnect.Connect();

		PreparedStatement ps = con
				.prepareStatement("UPDATE category set VehicleCat=? where id=?");
		ps.setString(1, p.getVehicleCat());
		ps.setInt(2, p.getId());

		ps.executeUpdate();
		con.close();
	}

}
