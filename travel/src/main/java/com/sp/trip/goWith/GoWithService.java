package com.sp.trip.goWith;

import java.util.List;
import java.util.Map;

public interface GoWithService {
	public List<GoWith> listCity() throws Exception;
	public List<GoWith> listSpot(int cityNum) throws Exception;
	public void insertGoWith(GoWith dto, String pathname) throws Exception;
	public List<GoWith> listGoWith(Map<String, Object> map);
	public int dataCount(Map<String, Object> map);
	public GoWith readGoWith(int num);
	public void updateHitCount(int goWithNum) throws Exception;
	public void updateGoWith(GoWith dto, String pathname) throws Exception;
	public void deleteGoWith(int goWithNum, String pathname, String userId, int membership) throws Exception;
}
