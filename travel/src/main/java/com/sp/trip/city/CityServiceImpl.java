package com.sp.trip.city;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sp.trip.common.dao.CommonDAO;

@Service("city.cityService")
public class CityServiceImpl implements CityService {

	@Autowired
	private CommonDAO dao;

	@Override
	public City readCity(int areacode) {
		
		City dto = null;
		
		try {
			dto = dao.selectOne("city.readCity", areacode);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return dto;
	}

}
