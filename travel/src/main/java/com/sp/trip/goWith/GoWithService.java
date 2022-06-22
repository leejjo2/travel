package com.sp.trip.goWith;

import java.util.List;
import java.util.Map;

public interface GoWithService {
	public List<GoWith> listCity() throws Exception;
	public List<GoWith> listSpot(int cityNum) throws Exception;
	public void insertGoWith(GoWith dto, String pathname) throws Exception;
	public int dataCount(Map<String, Object> map);
}
