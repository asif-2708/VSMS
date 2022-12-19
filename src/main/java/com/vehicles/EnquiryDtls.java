package com.vehicles;

public class EnquiryDtls {
	
	private int id;
	private String Email;
	private int EnquiryNumber;
	private String EnquiryType;
	private String Description;
	private String EnquiryDate;
	private String AdminResponse;
	private String AdminStatus;
	private String AdminRemarkdate;
	
	public EnquiryDtls() {
		super();
	}

	public EnquiryDtls(String email, int enquiryNumber, String enquiryType, String description, String adminResponse,
			String adminStatus) {
		super();
		Email = email;
		EnquiryNumber = enquiryNumber;
		EnquiryType = enquiryType;
		Description = description;
		AdminResponse = adminResponse;
		AdminStatus = adminStatus;
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}

	public String getEmail() {
		return Email;
	}
	public void setEmail(String email) {
		Email = email;
	}

	public int getEnquiryNumber() {
		return EnquiryNumber;
	}
	public void setEnquiryNumber(int enquiryNumber) {
		EnquiryNumber = enquiryNumber;
	}

	public String getEnquiryType() {
		return EnquiryType;
	}
	public void setEnquiryType(String enquiryType) {
		EnquiryType = enquiryType;
	}

	public String getDescription() {
		return Description;
	}
	public void setDescription(String description) {
		Description = description;
	}

	public String getEnquiryDate() {
		return EnquiryDate;
	}
	public void setEnquiryDate(String enquiryDate) {
		EnquiryDate = enquiryDate;
	}

	public String getAdminResponse() {
		return AdminResponse;
	}
	public void setAdminResponse(String adminResponse) {
		AdminResponse = adminResponse;
	}

	public String getAdminStatus() {
		return AdminStatus;
	}
	public void setAdminStatus(String adminStatus) {
		AdminStatus = adminStatus;
	}

	public String getAdminRemarkdate() {
		return AdminRemarkdate;
	}
	public void setAdminRemarkdate(String adminRemarkdate) {
		AdminRemarkdate = adminRemarkdate;
	}
	
	@Override
	public String toString() {
		return "EnquiryDtls [id=" + id + ", Email=" + Email + ", EnquiryNumber=" + EnquiryNumber + ", EnquiryType="
				+ EnquiryType + ", Description=" + Description + ", EnquiryDate=" + EnquiryDate + ", AdminResponse="
				+ AdminResponse + ", AdminStatus=" + AdminStatus + ", AdminRemarkdate=" + AdminRemarkdate + "]";
	}
}
