package com.vehicles;

public class EnquiryTypeDtls {
	
	private int id;
	private String EnquiryType;
	
	public EnquiryTypeDtls() {
		super();
	}
	
	public EnquiryTypeDtls(String enquiryType) {
		super();
		EnquiryType = enquiryType;
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	public String getEnquiryType() {
		return EnquiryType;
	}
	public void setEnquiryType(String enquiryType) {
		EnquiryType = enquiryType;
	}
	
	@Override
	public String toString() {
		return "EnquiryTypeDtls [id=" + id + ", EnquiryType=" + EnquiryType + "]";
	}
}