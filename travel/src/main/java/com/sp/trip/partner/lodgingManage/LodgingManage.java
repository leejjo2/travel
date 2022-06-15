package com.sp.trip.partner.lodgingManage;

public class LodgingManage {
	// 사업자 테이블
	private int partnerNum;
	private String partnerId;
	private String partnerTradeName;
	private String partnerTel;
	
	// 숙박업소 테이블
	private int hotelNum;
	private String hotelName;
	private String hotelIntro;
	private String hotelNumber;
	private int hotelZip;
	private String hotelAddr1;
	private String hotelAddr2;
	
	// 방 상세정보 테이블
	private int roomNum;
	private String roomName;
	private int roomPrice;
	private int roomNo;
	private int roomMen;
	private String roomOption;
	
	// 숙소이미지 테이블
	private int hotelImageFileNum;
	private String hotelSaveFilename;
	
	// 방 이미지 테이블
	private int roomImageFileNum;
	private String roomSaveFilename;
	
	public int getPartnerNum() {
		return partnerNum;
	}
	public void setPartnerNum(int partnerNum) {
		this.partnerNum = partnerNum;
	}
	public String getPartnerId() {
		return partnerId;
	}
	public void setPartnerId(String partnerId) {
		this.partnerId = partnerId;
	}
	public String getPartnerTradeName() {
		return partnerTradeName;
	}
	public void setPartnerTradeName(String partnerTradeName) {
		this.partnerTradeName = partnerTradeName;
	}
	public String getPartnerTel() {
		return partnerTel;
	}
	public void setPartnerTel(String partnerTel) {
		this.partnerTel = partnerTel;
	}
	public int getHotelNum() {
		return hotelNum;
	}
	public void setHotelNum(int hotelNum) {
		this.hotelNum = hotelNum;
	}
	public String getHotelName() {
		return hotelName;
	}
	public void setHotelName(String hotelName) {
		this.hotelName = hotelName;
	}
	public String getHotelIntro() {
		return hotelIntro;
	}
	public void setHotelIntro(String hotelIntro) {
		this.hotelIntro = hotelIntro;
	}
	public String getHotelNumber() {
		return hotelNumber;
	}
	public void setHotelNumber(String hotelNumber) {
		this.hotelNumber = hotelNumber;
	}
	public int getHotelZip() {
		return hotelZip;
	}
	public void setHotelZip(int hotelZip) {
		this.hotelZip = hotelZip;
	}
	public String getHotelAddr1() {
		return hotelAddr1;
	}
	public void setHotelAddr1(String hotelAddr1) {
		this.hotelAddr1 = hotelAddr1;
	}
	public String getHotelAddr2() {
		return hotelAddr2;
	}
	public void setHotelAddr2(String hotelAddr2) {
		this.hotelAddr2 = hotelAddr2;
	}
	public int getRoomNum() {
		return roomNum;
	}
	public void setRoomNum(int roomNum) {
		this.roomNum = roomNum;
	}
	public String getRoomName() {
		return roomName;
	}
	public void setRoomName(String roomName) {
		this.roomName = roomName;
	}
	public int getRoomPrice() {
		return roomPrice;
	}
	public void setRoomPrice(int roomPrice) {
		this.roomPrice = roomPrice;
	}
	public int getRoomNo() {
		return roomNo;
	}
	public void setRoomNo(int roomNo) {
		this.roomNo = roomNo;
	}
	public int getRoomMen() {
		return roomMen;
	}
	public void setRoomMen(int roomMen) {
		this.roomMen = roomMen;
	}
	public String getRoomOption() {
		return roomOption;
	}
	public void setRoomOption(String roomOption) {
		this.roomOption = roomOption;
	}
	public int getHotelImageFileNum() {
		return hotelImageFileNum;
	}
	public void setHotelImageFileNum(int hotelImageFileNum) {
		this.hotelImageFileNum = hotelImageFileNum;
	}
	public String getHotelSaveFilename() {
		return hotelSaveFilename;
	}
	public void setHotelSaveFilename(String hotelSaveFilename) {
		this.hotelSaveFilename = hotelSaveFilename;
	}
	public int getRoomImageFileNum() {
		return roomImageFileNum;
	}
	public void setRoomImageFileNum(int roomImageFileNum) {
		this.roomImageFileNum = roomImageFileNum;
	}
	public String getRoomSaveFilename() {
		return roomSaveFilename;
	}
	public void setRoomSaveFilename(String roomSaveFilename) {
		this.roomSaveFilename = roomSaveFilename;
	}
	
}
