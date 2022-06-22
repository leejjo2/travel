package com.sp.trip.travelCourse;

import java.util.List;
import java.util.Map;

public interface TravelCourseService {
	public void insertCity(TravelCourse dto, String pathname) throws Exception;
	public List<TravelCourse> listBoard(Map<String, Object> map);
	public List<TravelCourse> listCity(int courseNum);
	public int dataCount(Map<String, Object> map);
	public String listImg(int courseDetailNum);
	
	
	public List<TravelCourse> listCity(Map<String, Object> map) throws Exception; 
	public List<TravelCourse> listTheme(Map<String, Object> map) throws Exception; 

	public void insertBoardLike(Map<String, Object> map) throws Exception;
	public void deleteBoardLike(Map<String, Object> map) throws Exception;
	public int boardLikeCount(int courseNum);
	public boolean userBoardLiked(Map<String, Object> map);
	
	public void insertBoardScrap(Map<String, Object> map) throws Exception;
	public void deleteBoardScrap(Map<String, Object> map) throws Exception;
	public int boardScrapCount(int courseNum);
	public boolean userBoardScraped(Map<String, Object> map);
	
	


}
