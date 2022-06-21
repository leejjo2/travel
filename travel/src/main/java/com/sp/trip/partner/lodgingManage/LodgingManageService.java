package com.sp.trip.partner.lodgingManage;

import java.util.List;
import java.util.Map;

public interface LodgingManageService {
	public void insertHotel(LodgingManage dto, String pathname) throws Exception;
	public int dataCount(Map<String, Object> map);
	public List<LodgingManage> listHotel(String partnerId);
	public LodgingManage readHotel(int hotelNum);
	public void updateHotel(LodgingManage dto, String pathname) throws Exception;
	public void deleteHotel(int hotelNum, String userId, String pathname) throws Exception;
	List<LodgingManage> listHotel(Map<String, Object> map);
	
	
	public void insertFile(LodgingManage dto) throws Exception;
	public List<LodgingManage> listFile(int HotelNum);
	public LodgingManage readFile(int fileNum);
	public void deleteFile(Map<String, Object> map) throws Exception;
	public LodgingManage readBoard(int hotelNum);
	
}
