package com.sp.trip.theme;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

public class Theme {
	// 게시글
	private int courseNum;
	private String userId;
	private String userName;
	private String subject;
	private String content;
	private String reg_date;
	private int hitCount;
	
	private int cityNum;
	private String cityName;
	private int themeNum;
	private String themeName;
	private String period;
	private String hashtag;
	
	// 상세 코스
	private int courseDetailNum;
	private int course_seq;
	private String placeName;
	private String address;
	private String longitude;
	private String latitude;
	private String courseContent;
	private String imageFileNum;
	private String saveFileName;
	
	// 상세 코스 리스트
	private List<String> placeNameList;
	private List<String> addressList;
	private List<String> longitudeList;
	private List<String> latitudeList;
	private List<String> courseContentList;
	private List<MultipartFile> uploadFile;
	
	// 
	private List<Theme> adminCourseList;
	
	
	
	
	public List<Theme> getAdminCourseList() {
		return adminCourseList;
	}
	public void setAdminCourseList(List<Theme> adminCourseList) {
		this.adminCourseList = adminCourseList;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public int getCourseNum() {
		return courseNum;
	}
	public void setCourseNum(int courseNum) {
		this.courseNum = courseNum;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
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
	public String getCourseContent() {
		return courseContent;
	}
	public void setCourseContent(String courseContent) {
		this.courseContent = courseContent;
	}
	public List<String> getPlaceNameList() {
		return placeNameList;
	}
	public void setPlaceNameList(List<String> placeNameList) {
		this.placeNameList = placeNameList;
	}
	public List<String> getAddressList() {
		return addressList;
	}
	public void setAddressList(List<String> addressList) {
		this.addressList = addressList;
	}
	public List<String> getLongitudeList() {
		return longitudeList;
	}
	public void setLongitudeList(List<String> longitudeList) {
		this.longitudeList = longitudeList;
	}
	public List<String> getLatitudeList() {
		return latitudeList;
	}
	public void setLatitudeList(List<String> latitudeList) {
		this.latitudeList = latitudeList;
	}
	public List<String> getCourseContentList() {
		return courseContentList;
	}
	public void setCourseContentList(List<String> courseContentList) {
		this.courseContentList = courseContentList;
	}
	public String getCityName() {
		return cityName;
	}
	public void setCityName(String cityName) {
		this.cityName = cityName;
	}
	public List<MultipartFile> getUploadFile() {
		return uploadFile;
	}
	public void setUploadFile(List<MultipartFile> uploadFile) {
		this.uploadFile = uploadFile;
	}
	public String getImageFileNum() {
		return imageFileNum;
	}
	public void setImageFileNum(String imageFileNum) {
		this.imageFileNum = imageFileNum;
	}
	public String getSaveFileName() {
		return saveFileName;
	}
	public void setSaveFileName(String saveFileName) {
		this.saveFileName = saveFileName;
	}
	public String getThemeName() {
		return themeName;
	}
	public void setThemeName(String themeName) {
		this.themeName = themeName;
	}
	public String getHashtag() {
		return hashtag;
	}
	public void setHashtag(String hashtag) {
		this.hashtag = hashtag;
	}
	
	
	
	
	
}
