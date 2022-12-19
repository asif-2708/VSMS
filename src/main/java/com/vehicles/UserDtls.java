package com.vehicles;

public class UserDtls {
	
	private int id;
	private String FullName;
	private String MobileNo;
	private String Email;
	private String Password;
	private String RegDate;
	
	public UserDtls() {
		super();
	}

	public UserDtls(String fullName, String mobileNo, String email, String password) {
		super();
		FullName = fullName;
		MobileNo = mobileNo;
		Email = email;
		Password = password;
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

	public String getMobileNo() {
		return MobileNo;
	}
	public void setMobileNo(String mobileNo) {
		MobileNo = mobileNo;
	}

	public String getEmail() {
		return Email;
	}
	public void setEmail(String email) {
		Email = email;
	}

	public String getPassword() {
		return Password;
	}
	public void setPassword(String password) {
		Password = password;
	}

	public String getRegDate() {
		return RegDate;
	}
	public void setRegDate(String regDate) {
		RegDate = regDate;
	}
	
	@Override
	public String toString() {
		return "UserDtls [id=" + id + ", FullName=" + FullName + ", MobileNo=" + MobileNo + ", Email=" + Email
				+ ", Password=" + Password + ", RegDate=" + RegDate + "]";
	}
}
