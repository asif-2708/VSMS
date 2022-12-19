package com.vehicles;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ServiceReqDAO {

	private Connection con;

	public ServiceReqDAO(Connection con) {
		super();
		this.con = con;
	}

	// Insert Service Request
	public static void addService(ServiceReqDtls sd) throws Exception {
		Connection con = DbConnect.Connect();
		PreparedStatement ps = con.prepareStatement(
				"insert into servicerequest(Email,ServiceNumber,Category,VehicleName,VehicleModel,VehicleBrand,VehicleRegno,ServiceDate,ServiceTime,DeliveryType,PickupAddress) VALUES(?,?,?,?,?,?,?,?,?,?,?)");
		ps.setString(1, sd.getEmail());
		ps.setInt(2, sd.getServiceNumber());
		ps.setString(3, sd.getCategory());
		ps.setString(4, sd.getVehicleName());
		ps.setString(5, sd.getVehicleModel());
		ps.setString(6, sd.getVehicleBrand());
		ps.setString(7, sd.getVehicleRegno());
		ps.setString(8, sd.getServiceDate());
		ps.setString(9, sd.getServiceTime());
		ps.setString(10, sd.getDeliveryType());
		ps.setString(11, sd.getPickupAddress());
		ps.executeUpdate();

		con.close();
	}

	// View Request History
	public List<ServiceReqDtls> getAllServiceReq(String email) {
		List<ServiceReqDtls> list = new ArrayList<ServiceReqDtls>();
		ServiceReqDtls b = null;

		try {
			String sql = "select * from servicerequest where Email='" + email + "'";
			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {

				b = new ServiceReqDtls();
				b.setId(rs.getInt(1));
				b.setEmail(rs.getString(2));
				b.setServiceNumber(rs.getInt(3));
				b.setCategory(rs.getString(4));
				b.setVehicleName(rs.getString(5));
				b.setVehicleModel(rs.getString(6));
				b.setVehicleBrand(rs.getString(7));
				b.setVehicleRegno(rs.getString(8));
				b.setServiceDate(rs.getString(9));
				b.setServiceTime(rs.getString(10));
				b.setDeliveryType(rs.getString(11));
				b.setPickupAddress(rs.getString(12));
				b.setServicerequestDate(rs.getString(13));
				list.add(b);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}	
}
