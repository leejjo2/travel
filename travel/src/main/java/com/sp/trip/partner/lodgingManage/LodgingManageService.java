package com.sp.trip.partner.lodgingManage;

import java.util.List;
import java.util.Map;

public interface LodgingManageService {
	public void insertHotel(LodgingManage dto, String pathname) throws Exception;
	public List<LodgingManage> listHotel(String partnerId);
	public void readHotel(int hotelNum);
	public void updateHotel(LodgingManage dto) throws Exception;
	public void deleteHotel(int hotelNum, String userId, int membership) throws Exception;
	List<LodgingManage> listHotel(Map<String, Object> map);
	
}
