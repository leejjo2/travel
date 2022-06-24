package com.sp.trip.theme;

import java.util.List;
import java.util.Map;

public interface ThemeService {
	public void insertBoard(Theme dto, String pathname) throws Exception;
	
	public List<Theme> listCity(Map<String, Object>map) throws Exception;
	public List<Theme> listTheme(Map<String, Object> map) throws Exception;
	
	public int dataCount(Map<String, Object> map);
	public List<Theme> listAdminCourse(Map<String, Object> map);

	public List<Theme> listAdminDetailCourse(int courseNum);

	public String listImg(int courseNum);
	
	public Theme readBoard(int courseNum);

	public String listImgs(int courseDetailNum);

	void updateHitCount(int num) throws Exception;
	
}
