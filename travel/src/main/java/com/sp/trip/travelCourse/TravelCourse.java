package com.sp.trip.travelCourse;

public class TravelCourse {
	private String userId;
	
	// 관리자 추천 코스
	private int courseNum;
	private String subject;
	private String content;
	private String reg_date;
	private int hitCount;
	private int cityNum;
	private int themeNum;
	private String period;
	private String hastag;
	
	// 코스 상세
	private int courseDetailNum;
	private int course_seq;
	private String placeName;
	private String address;
	private String longitude;
	private String latitude;
	private String detailContent;
	private int detailCityNum;
	private String detailCityName;
	
	
	// 코스 이미지
	private int imageFileNum;
	private String saveFilename;
	
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public int getCourseNum() {
		return courseNum;
	}
	public void setCourseNum(int courseNum) {
		this.courseNum = courseNum;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getReg_date() {
		return reg_date;
	}
	public void setReg_date(String reg_date) {
		this.reg_date = reg_date;
	}
	public int getHitCount() {
		return hitCount;
	}
	public void setHitCount(int hitCount) {
		this.hitCount = hitCount;
	}
	public int getCityNum() {
		return cityNum;
	}
	public void setCityNum(int cityNum) {
		this.cityNum = cityNum;
	}
	public int getThemeNum() {
		return themeNum;
	}
	public void setThemeNum(int themeNum) {
		this.themeNum = themeNum;
	}
	public String getPeriod() {
		return period;
	}
	public void setPeriod(String period) {
		this.period = period;
	}
	public String getHastag() {
		return hastag;
	}
	public void setHastag(String hastag) {
		this.hastag = hastag;
	}
	public int getCourseDetailNum() {
		return courseDetailNum;
	}
	public void setCourseDetailNum(int courseDetailNum) {
		this.courseDetailNum = courseDetailNum;
	}
	public int getCourse_seq() {
		return course_seq;
	}
	public void setCourse_seq(int course_seq) {
		this.course_seq = course_seq;
	}
	public String getPlaceName() {
		return placeName;
	}
	public void setPlaceName(String placeName) {
		this.placeName = placeName;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getLongitude() {
		return longitude;
	}
	public void setLongitude(String longitude) {
		this.longitude = longitude;
	}
	public String getLatitude() {
		return latitude;
	}
	public void setLatitude(String latitude) {
		this.latitude = latitude;
	}
	public String getDetailContent() {
		return detailContent;
	}
	public void setDetailContent(String detailContent) {
		this.detailContent = detailContent;
	}
	public int getDetailCityNum() {
		return detailCityNum;
	}
	public void setDetailCityNum(int detailCityNum) {
		this.detailCityNum = detailCityNum;
	}
	public String getDetailCityName() {
		return detailCityName;
	}
	public void setDetailCityName(String detailCityName) {
		this.detailCityName = detailCityName;
	}
	public int getImageFileNum() {
		return imageFileNum;
	}
	public void setImageFileNum(int imageFileNum) {
		this.imageFileNum = imageFileNum;
	}
	public String getSaveFilename() {
		return saveFilename;
	}
	public void setSaveFilename(String saveFilename) {
		this.saveFilename = saveFilename;
	}
	
	
	
	
}
