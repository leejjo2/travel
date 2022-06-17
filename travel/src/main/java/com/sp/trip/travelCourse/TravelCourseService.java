package com.sp.trip.travelCourse;

import java.util.List;
import java.util.Map;

public interface TravelCourseService {
	public void insertCity(TravelCourse dto, String pathname) throws Exception;
	
	public List<TravelCourse> listCity(Map<String, Object> map) throws Exception; 
	public List<TravelCourse> listTheme(Map<String, Object> map) throws Exception; 


}
