package com.sp.trip.theme;

import java.util.List;
import java.util.Map;

public interface ThemeService {
	public void insertBoard(Theme dto, String pathname) throws Exception;
	
	public List<Theme> listCity(Map<String, Object>map) throws Exception;
	public List<Theme> listTheme(Map<String, Object> map) throws Exception;
	
	public int dataCount(Map<String, Object> map);
	public List<Theme> listAdminCourse(Map<String, Object> map);
	
}
