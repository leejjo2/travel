package com.sp.trip.theme;

import java.util.List;
import java.util.Map;

public interface ThemeService {
	public void insertBoard(Theme dto) throws Exception;
	
	public List<Theme> listCity(Map<String, Object>map) throws Exception;
}
