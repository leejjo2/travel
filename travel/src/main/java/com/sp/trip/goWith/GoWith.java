package com.sp.trip.goWith;

import org.springframework.web.multipart.MultipartFile;

public class GoWith {
	private int goWithNum;
	private String userId;
	private String userName;
	private String pwd;
	private String subject;
	private String content;
	private int hitCount;
	private String reg_date;
	private String recruit_status;
	private int recruit_cnt;
	private String startDate;
	private String endDate;
	private String age;
	private String gender;
	private int discussion;
	private int drink;
	private int cigar;
	private String tripType1;
	private String tripType2;
	private String tripType3;
	private String imageFilename;
	private String cityName;
	private int cityNum;
	private int spotNum;
	private String spotName;
	private MultipartFile uploadFile;
	private int replyCount;
	
	public int getGoWithNum() {
		return goWithNum;
	}
	public void setGoWithNum(int goWithNum) {
		this.goWithNum = goWithNum;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
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
	public int getHitCount() {
		return hitCount;
	}
	public void setHitCount(int hitCount) {
		this.hitCount = hitCount;
	}
	public String getReg_date() {
		return reg_date;
	}
	public void setReg_date(String reg_date) {
		this.reg_date = reg_date;
	}
	public String getRecruit_status() {
		return recruit_status;
	}
	public void setRecruit_status(String recruit_status) {
		this.recruit_status = recruit_status;
	}
	public int getRecruit_cnt() {
		return recruit_cnt;
	}
	public void setRecruit_cnt(int recruit_cnt) {
		this.recruit_cnt = recruit_cnt;
	}
	public String getStartDate() {
		return startDate;
	}
	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}
	public String getEndDate() {
		return endDate;
	}
	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}
	public String getAge() {
		return age;
	}
	public void setAge(String age) {
		this.age = age;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public int getDiscussion() {
		return discussion;
	}
	public void setDiscussion(int discussion) {
		this.discussion = discussion;
	}
	public int getDrink() {
		return drink;
	}
	public void setDrink(int drink) {
		this.drink = drink;
	}
	public int getCigar() {
		return cigar;
	}
	public void setCigar(int cigar) {
		this.cigar = cigar;
	}
	
	public String getTripType1() {
		return tripType1;
	}
	public void setTripType1(String tripType1) {
		this.tripType1 = tripType1;
	}
	public String getTripType2() {
		return tripType2;
	}
	public void setTripType2(String tripType2) {
		this.tripType2 = tripType2;
	}
	public String getTripType3() {
		return tripType3;
	}
	public void setTripType3(String tripType3) {
		this.tripType3 = tripType3;
	}
	public String getImageFilename() {
		return imageFilename;
	}
	public void setImageFilename(String imageFilename) {
		this.imageFilename = imageFilename;
	}
	
	public int getCityNum() {
		return cityNum;
	}
	public void setCityNum(int cityNum) {
		this.cityNum = cityNum;
	}
	public int getSpotNum() {
		return spotNum;
	}
	public void setSpotNum(int spotNum) {
		this.spotNum = spotNum;
	}
	public String getCityName() {
		return cityName;
	}
	public void setCityName(String cityName) {
		this.cityName = cityName;
	}
	public String getSpotName() {
		return spotName;
	}
	public void setSpotName(String spotName) {
		this.spotName = spotName;
	}
	public MultipartFile getUploadFile() {
		return uploadFile;
	}
	public void setUploadFile(MultipartFile uploadFile) {
		this.uploadFile = uploadFile;
	}
	public int getReplyCount() {
		return replyCount;
	}
	public void setReplyCount(int replyCount) {
		this.replyCount = replyCount;
	}
	
	
	
	
}
