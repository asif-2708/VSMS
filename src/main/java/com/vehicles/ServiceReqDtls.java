package com.vehicles;

public class ServiceReqDtls {
	
	private int id;
	private String Email;
	private int ServiceNumber;
	private String Category;
	private String VehicleName;
	private String VehicleModel;
	private String VehicleBrand;
	private String VehicleRegno;
	private String ServiceDate;
	private String ServiceTime;
	private String DeliveryType;
	private String PickupAddress;
	private String ServicerequestDate;
	private String ServiceBy;
	private int ServiceCharge;
	private int PartsCharge;
	private int OtherCharge;
	private String AdminRemark;
	private String AdminStatus;
	private String AdminRemarkdate;
	
	public ServiceReqDtls() {
		super();
	}

	public ServiceReqDtls(String email, int serviceNumber, String category, String vehicleName, String vehicleModel,
			String vehicleBrand, String vehicleRegno, String serviceDate, String serviceTime, String deliveryType,
			String pickupAddress) {
		super();
		Email = email;
		ServiceNumber = serviceNumber;
		Category = category;
		VehicleName = vehicleName;
		VehicleModel = vehicleModel;
		VehicleBrand = vehicleBrand;
		VehicleRegno = vehicleRegno;
		ServiceDate = serviceDate;
		ServiceTime = serviceTime;
		DeliveryType = deliveryType;
		PickupAddress = pickupAddress;
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

	public int getServiceNumber() {
		return ServiceNumber;
	}
	public void setServiceNumber(int serviceNumber) {
		ServiceNumber = serviceNumber;
	}

	public String getCategory() {
		return Category;
	}
	public void setCategory(String category) {
		Category = category;
	}

	public String getVehicleName() {
		return VehicleName;
	}
	public void setVehicleName(String vehicleName) {
		VehicleName = vehicleName;
	}

	public String getVehicleModel() {
		return VehicleModel;
	}
	public void setVehicleModel(String vehicleModel) {
		VehicleModel = vehicleModel;
	}

	public String getVehicleBrand() {
		return VehicleBrand;
	}
	public void setVehicleBrand(String vehicleBrand) {
		VehicleBrand = vehicleBrand;
	}

	public String getVehicleRegno() {
		return VehicleRegno;
	}
	public void setVehicleRegno(String vehicleRegno) {
		VehicleRegno = vehicleRegno;
	}

	public String getServiceDate() {
		return ServiceDate;
	}
	public void setServiceDate(String serviceDate) {
		ServiceDate = serviceDate;
	}

	public String getServiceTime() {
		return ServiceTime;
	}
	public void setServiceTime(String serviceTime) {
		ServiceTime = serviceTime;
	}

	public String getDeliveryType() {
		return DeliveryType;
	}
	public void setDeliveryType(String deliveryType) {
		DeliveryType = deliveryType;
	}

	public String getPickupAddress() {
		return PickupAddress;
	}
	public void setPickupAddress(String pickupAddress) {
		PickupAddress = pickupAddress;
	}

	public String getServicerequestDate() {
		return ServicerequestDate;
	}
	public void setServicerequestDate(String servicerequestDate) {
		ServicerequestDate = servicerequestDate;
	}

	public String getServiceBy() {
		return ServiceBy;
	}
	public void setServiceBy(String serviceBy) {
		ServiceBy = serviceBy;
	}

	public int getServiceCharge() {
		return ServiceCharge;
	}
	public void setServiceCharge(int serviceCharge) {
		ServiceCharge = serviceCharge;
	}

	public int getPartsCharge() {
		return PartsCharge;
	}
	public void setPartsCharge(int partsCharge) {
		PartsCharge = partsCharge;
	}

	public int getOtherCharge() {
		return OtherCharge;
	}
	public void setOtherCharge(int otherCharge) {
		OtherCharge = otherCharge;
	}

	public String getAdminRemark() {
		return AdminRemark;
	}
	public void setAdminRemark(String adminRemark) {
		AdminRemark = adminRemark;
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
		return "ServiceReqDtls [id=" + id + ", Email=" + Email + ", ServiceNumber=" + ServiceNumber + ", Category="
				+ Category + ", VehicleName=" + VehicleName + ", VehicleModel=" + VehicleModel + ", VehicleBrand="
				+ VehicleBrand + ", VehicleRegno=" + VehicleRegno + ", ServiceDate=" + ServiceDate + ", ServiceTime="
				+ ServiceTime + ", DeliveryType=" + DeliveryType + ", PickupAddress=" + PickupAddress
				+ ", ServicerequestDate=" + ServicerequestDate + ", ServiceBy=" + ServiceBy + ", ServiceCharge="
				+ ServiceCharge + ", PartsCharge=" + PartsCharge + ", OtherCharge=" + OtherCharge + ", AdminRemark="
				+ AdminRemark + ", AdminStatus=" + AdminStatus + ", AdminRemarkdate=" + AdminRemarkdate + "]";
	}
	
	
}
