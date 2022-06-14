package com.sp.trip.travelCourse;

import java.util.List;
import java.util.Map;

public interface TravelCourseService {
	public void insertCity(TravelCourse dto, String pathname);
	
	public List<TravelCourse> listCity(Map<String, Object> map) throws Exception;
	

}
