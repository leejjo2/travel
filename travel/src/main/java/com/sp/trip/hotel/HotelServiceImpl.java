package com.sp.trip.hotel;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sp.trip.common.dao.CommonDAO;

@Service("hotel.hotelService")
public class HotelServiceImpl implements HotelService {
	@Autowired
	private CommonDAO dao;
	
	@Override
	public List<Hotel> listHotel(Map<String, Object> map) {
		List<Hotel> list = null;
		
		try {
			list = dao.selectList("hotel.listHotel", map);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}

	@Override
	public Hotel readHotel(int hotelNum) {
		Hotel dto = null;
		
		try {
			dto = dao.selectOne("hotel.readHotel", hotelNum);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return dto;
	}
	
	@Override
	public Hotel readRoom(int hotelNum) {
		Hotel dto = null;
		
		try {
			dto = dao.selectOne("hotel.readRoom", hotelNum);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return dto;
	}

	@Override
	public int dataCount(Map<String, Object> map) {
		int result = 0;
		
		try {
			result = dao.selectOne("hotel.dataCount", map);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}

	@Override
	public int minPrice(int hotelNum) {
		int minPrice = 0;
		
		try {
			minPrice = dao.selectOne("hotel.minPrice", hotelNum);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return minPrice;
	}



}
