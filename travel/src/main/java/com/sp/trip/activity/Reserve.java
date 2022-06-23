package com.sp.trip.activity;

public class Reserve {
	private int activityNum; // 액티비티 번호
	private String activityName; // 액티비티 이름
	private int detailNum; // 액티비티 상세번호
	private String titleImgname; // 액티비티 타이틀 이미지
	
	private int reserveDetailNum; // 액티비티 예약 상세번호
	private int reserveNum; // 액티비티 예약 번호
	
	private int price; // 가격
	private int totalMen; // 총 인원
	private int totalPrice; // 총 가격(마일리지 사용액 + 결제 금액)
	
	
	private int totalMileage; // 총 마일리지 액
	private int mileageUse; // 마일리지 사용금액
	private int mileageSave; // 마일리지 적립 금액
	
	private String reserveDoneDate; // 예약 완료 일
	private String name; // 예약인
	private String tel; // 예약자 번호
	private String email; // 예약자 이메일
	
	private String userId; // 예약자 아이디
	private String usingDate; // 사용 날짜
	private String usingStatus; // 사용 여부
	
	private int payWay; // 결제 방법
	private int payAmount; // 결제 금액
	private String payDate; // 결제완료일
	
	public int getActivityNum() {
		return activityNum;
	}
	public void setActivityNum(int activityNum) {
		this.activityNum = activityNum;
	}
	public int getDetailNum() {
		return detailNum;
	}
	public void setDetailNum(int detailNum) {
		this.detailNum = detailNum;
	}
	public int getReserveDetailNum() {
		return reserveDetailNum;
	}
	public void setReserveDetailNum(int reserveDetailNum) {
		this.reserveDetailNum = reserveDetailNum;
	}
	public int getReserveNum() {
		return reserveNum;
	}
	public void setReserveNum(int reserveNum) {
		this.reserveNum = reserveNum;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getTotalMen() {
		return totalMen;
	}
	public void setTotalMen(int totalMen) {
		this.totalMen = totalMen;
	}
	public int getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(int totalPrice) {
		this.totalPrice = totalPrice;
	}
	public int getTotalMileage() {
		return totalMileage;
	}
	public void setTotalMileage(int totalMileage) {
		this.totalMileage = totalMileage;
	}
	public int getMileageUse() {
		return mileageUse;
	}
	public void setMileageUse(int mileageUse) {
		this.mileageUse = mileageUse;
	}
	public int getMileageSave() {
		return mileageSave;
	}
	public void setMileageSave(int mileageSave) {
		this.mileageSave = mileageSave;
	}
	public String getReserveDoneDate() {
		return reserveDoneDate;
	}
	public void setReserveDoneDate(String reserveDoneDate) {
		this.reserveDoneDate = reserveDoneDate;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getUsingDate() {
		return usingDate;
	}
	public void setUsingDate(String usingDate) {
		this.usingDate = usingDate;
	}
	public String getUsingStatus() {
		return usingStatus;
	}
	public void setUsingStatus(String usingStatus) {
		this.usingStatus = usingStatus;
	}
	public int getPayWay() {
		return payWay;
	}
	public void setPayWay(int payWay) {
		this.payWay = payWay;
	}
	public int getPayAmount() {
		return payAmount;
	}
	public void setPayAmount(int payAmount) {
		this.payAmount = payAmount;
	}
	public String getPayDate() {
		return payDate;
	}
	public void setPayDate(String payDate) {
		this.payDate = payDate;
	}
	public String getTitleImgname() {
		return titleImgname;
	}
	public void setTitleImgname(String titleImgname) {
		this.titleImgname = titleImgname;
	}
	public String getActivityName() {
		return activityName;
	}
	public void setActivityName(String activityName) {
		this.activityName = activityName;
	}
	
}
