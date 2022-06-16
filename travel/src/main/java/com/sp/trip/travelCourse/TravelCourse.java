package com.sp.trip.travelCourse;

import java.util.List;


public class TravelCourse {
	private String userId; 
	
	// 추천 코스
	private int courseNum;
	private String subject;
	private String content;
	private String reg_date;
	private int hitCount;
	private int cityNum;
	private String cityName;
	private int themeNum;
	private String period;
	private String hastag;
	
	// 코스 상세 List
	private List<Integer> courseSeqs; // 코스순서
	private List<String> placeNames;
	private List<String>  addresss;
	private List<String>  longitudes; // 위도
	private List<String>  latitudes; // 경도
	private List<String>  detailContents;
	private List<String> uploadFile;
	
	// 코스 상세 
	private int courseDetailNum;
	private int courseSeq; // 순서
	private String placeName;
	private String  address;
	private String  longitude; // 위도
	private String  latitude; // 경도
	private String  detailContent;
	
	
	// 코스 이미지
	private int imageFileNum; // 이미지 파일 번호
	private String saveFilename; // 서버에 저장된 파일 이름
	
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
	public String getCityName() {
		return cityName;
	}
	public void setCityName(String cityName) {
		this.cityName = cityName;
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
	public List<Integer> getCourseSeqs() {
		return courseSeqs;
	}
	public void setCourseSeqs(List<Integer> courseSeqs) {
		this.courseSeqs = courseSeqs;
	}
	public List<String> getPlaceNames() {
		return placeNames;
	}
	public void setPlaceNames(List<String> placeNames) {
		this.placeNames = placeNames;
	}
	public List<String> getAddresss() {
		return addresss;
	}
	public void setAddresss(List<String> addresss) {
		this.addresss = addresss;
	}
	public List<String> getLongitudes() {
		return longitudes;
	}
	public void setLongitudes(List<String> longitudes) {
		this.longitudes = longitudes;
	}
	public List<String> getLatitudes() {
		return latitudes;
	}
	public void setLatitudes(List<String> latitudes) {
		this.latitudes = latitudes;
	}
	public List<String> getDetailContents() {
		return detailContents;
	}
	public void setDetailContents(List<String> detailContents) {
		this.detailContents = detailContents;
	}
	public List<String> getUploadFile() {
		return uploadFile;
	}
	public void setUploadFile(List<String> uploadFile) {
		this.uploadFile = uploadFile;
	}
	public int getCourseDetailNum() {
		return courseDetailNum;
	}
	public void setCourseDetailNum(int courseDetailNum) {
		this.courseDetailNum = courseDetailNum;
	}
	public int getCourseSeq() {
		return courseSeq;
	}
	public void setCourseSeq(int courseSeq) {
		this.courseSeq = courseSeq;
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
