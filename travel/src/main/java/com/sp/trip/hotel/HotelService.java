package com.sp.trip.hotel;

import java.util.List;
import java.util.Map;

public interface HotelService {
	public List<Hotel> listHotel(Map<String, Object> map);
	public List<Hotel> listRoom(Map<String, Object> map);
	
	public Hotel readHotel(int hotelNum);
	public Hotel readRoom(int hotelNum);
	public int minPrice(int hotelNum);
	
	public int dataCount(Map<String, Object> map);
	
	public HotelReserve readMember(String userId);
	public HotelReserve readHotelReserve(int roomNum);
	
	public int insertHotelReserve(HotelReserve dto) throws Exception;
	public HotelReserve readPayment(int reserveNum);
	
}
