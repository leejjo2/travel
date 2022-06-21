package com.sp.trip.hotel;

import java.util.List;
import java.util.Map;

public interface HotelService {
	public List<Hotel> listHotel(Map<String, Object> map);
	
	public Hotel readHotel(int hotelNum);

	public int dataCount(Map<String, Object> map);
}
