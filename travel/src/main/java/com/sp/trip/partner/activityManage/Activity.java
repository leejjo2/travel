package com.sp.trip.partner.activityManage;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

public class Activity {
	private int activityNum; // 액티비티 번호
	private int cityNum; // 지역 번호
	private String activityType; // 액티비티 종류
	private String activityName; // 액티비티 이름
	private String activityDetail; // 액티비티 상세
	private int partnerNum; // 사업자 번호
	
	private int detailNum; // 액티비티 상세번호
	private List<String> timeRange; // 시간대
	private List<Integer> maxNum; // 최대 인원 수
	private int price; // 가격
	private String totalTime; // 소요시간
	private String zip; // 우편번호
	private String addr1; // 주소
	private String addr2; // 상세주소
	
	private String titleImgname; // 대표 이미지
	private MultipartFile selectFile;

	public int getActivityNum() {
		return activityNum;
	}

	public void setActivityNum(int activityNum) {
		this.activityNum = activityNum;
	}

	public int getCityNum() {
		return cityNum;
	}

	public void setCityNum(int cityNum) {
		this.cityNum = cityNum;
	}

	public String getActivityType() {
		return activityType;
	}

	public void setActivityType(String activityType) {
		this.activityType = activityType;
	}

	public String getActivityName() {
		return activityName;
	}

	public void setActivityName(String activityName) {
		this.activityName = activityName;
	}

	public String getActivityDetail() {
		return activityDetail;
	}

	public void setActivityDetail(String activityDetail) {
		this.activityDetail = activityDetail;
	}

	public int getPartnerNum() {
		return partnerNum;
	}

	public void setPartnerNum(int partnerNum) {
		this.partnerNum = partnerNum;
	}

	public int getDetailNum() {
		return detailNum;
	}

	public void setDetailNum(int detailNum) {
		this.detailNum = detailNum;
	}

	public List<String> getTimeRange() {
		return timeRange;
	}

	public void setTimeRange(List<String> timeRange) {
		this.timeRange = timeRange;
	}

	public List<Integer> getMaxNum() {
		return maxNum;
	}

	public void setMaxNum(List<Integer> maxNum) {
		this.maxNum = maxNum;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getTotalTime() {
		return totalTime;
	}

	public void setTotalTime(String totalTime) {
		this.totalTime = totalTime;
	}

	public String getZip() {
		return zip;
	}

	public void setZip(String zip) {
		this.zip = zip;
	}

	public String getAddr1() {
		return addr1;
	}

	public void setAddr1(String addr1) {
		this.addr1 = addr1;
	}

	public String getAddr2() {
		return addr2;
	}

	public void setAddr2(String addr2) {
		this.addr2 = addr2;
	}

	public String getTitleImgname() {
		return titleImgname;
	}

	public void setTitleImgname(String titleImgname) {
		this.titleImgname = titleImgname;
	}

	public MultipartFile getSelectFile() {
		return selectFile;
	}

	public void setSelectFile(MultipartFile selectFile) {
		this.selectFile = selectFile;
	}
	
	
}
