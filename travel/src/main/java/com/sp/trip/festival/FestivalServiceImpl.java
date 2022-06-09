package com.sp.trip.festival;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sp.trip.common.dao.CommonDAO;



@Service("festival.festivalService")
public class FestivalServiceImpl implements FestivalService {
	
	@Autowired
	private CommonDAO dao;
	
	@Override
	public Festival readCity(String areaCode) {
		Festival dto = null;
		try {
			dto = dao.selectOne("festival.readCity", areaCode);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return dto;
	}

}
