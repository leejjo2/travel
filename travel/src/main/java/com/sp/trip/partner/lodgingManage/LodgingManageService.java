package com.sp.trip.partner.lodgingManage;

import java.util.List;
import java.util.Map;

public interface LodgingManageService {
	// 숙소
	public void insertHotel(LodgingManage dto, String pathname) throws Exception;
	public int dataCount(Map<String, Object> map);
	public List<LodgingManage> listHotel(String partnerId);
	public LodgingManage readHotel(int hotelNum);
	public void updateHotel(LodgingManage dto, String userId, String pathname) throws Exception;
	public void deleteHotel(int hotelNum, String userId, String pathname) throws Exception;
	
	// 파일
	public void insertFile(LodgingManage dto) throws Exception;
	public List<LodgingManage> listFile(int HotelNum);
	public LodgingManage readFile(int fileNum);
	public void deleteFile(Map<String, Object> map) throws Exception;
	
	
	// 방
	public void insertRoom(LodgingManage dto, String pathname) throws Exception;
	public int dataRoom(Map<String, Object> map);
	public List<LodgingManage> listRoom(String partnerId);
	public LodgingManage readRoom(int roomNum);
	public void updateRoom(LodgingManage dto, String userId, String pathname) throws Exception;
	public void deleteRoom(int roomNum, String userId, String pathname) throws Exception;
	public String hotelName(int hotelNum);
	
	// 파일
	public void insertRoomFile(LodgingManage dto) throws Exception;
	public List<LodgingManage> listRoomFile(int roomNum);
	public LodgingManage readRoomFile(int fileNum);
	public void deleteRoomFile(Map<String, Object> map) throws Exception;
	
	
}
