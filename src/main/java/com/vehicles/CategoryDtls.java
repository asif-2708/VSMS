package com.vehicles;

public class CategoryDtls {
	
	private int id;
	private String VehicleCat;
	
	public CategoryDtls() {
		super();
	}
	
	public CategoryDtls(String vehicleCat) {
		super();
		VehicleCat = vehicleCat;
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getVehicleCat() {
		return VehicleCat;
	}
	public void setVehicleCat(String vehicleCat) {
		VehicleCat = vehicleCat;
	}
	
	@Override
	public String toString() {
		return "CategoryDtls [id=" + id + ", VehicleCat=" + VehicleCat + "]";
	}
}
