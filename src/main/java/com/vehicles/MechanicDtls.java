package com.vehicles;

public class MechanicDtls {
	
	private int id;
	private String FullName;
	private String MobileNumber;
	private String Email;
	private String Address;
	
	public MechanicDtls() {
		super();
	}
	
	public MechanicDtls(String fullName, String mobileNumber, String email, String address) {
		super();
		FullName = fullName;
		MobileNumber = mobileNumber;
		Email = email;
		Address = address;
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	public String getFullName() {
		return FullName;
	}
	public void setFullName(String fullName) {
		FullName = fullName;
	}
	
	public String getMobileNumber() {
		return MobileNumber;
	}
	public void setMobileNumber(String mobileNumber) {
		MobileNumber = mobileNumber;
	}
	
	public String getEmail() {
		return Email;
	}
	public void setEmail(String email) {
		Email = email;
	}
	
	public String getAddress() {
		return Address;
	}
	public void setAddress(String address) {
		Address = address;
	}
	
	@Override
	public String toString() {
		return "MechanicDtls [id=" + id + ", FullName=" + FullName + ", MobileNumber=" + MobileNumber + ", Email="
				+ Email + ", Address=" + Address + "]";
	}
}
