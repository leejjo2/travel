package com.sp.trip.travelCourse;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sp.trip.common.dao.CommonDAO;


@Service("travelCourse.travelCourseService")
public class TravelCourseServiceImpl implements TravelCourseService{

	@Autowired
	private CommonDAO dao;
	
	@Override
	public void insertCity(TravelCourse dto, String pathname) {
		try {
			int seq = dao.selectOne("");
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		
	}
 
	@Override
	public List<TravelCourse> listCity(Map<String, Object> map) throws Exception {
		List<TravelCourse> listCity = null;
		
		try {
			listCity = dao.selectList("travelCourse.cityCategory", map);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return listCity;
	}

}
