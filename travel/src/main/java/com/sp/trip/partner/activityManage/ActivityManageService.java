package com.sp.trip.partner.activityManage;

import java.util.List;
import java.util.Map;

public interface ActivityManageService {
	public void insertActivity(Activity dto, String userId, String pathname) throws Exception;
	public int dataCount(String userId);
	public List<Activity> listActivity(Map<String, Object> map, String userId);
	public Activity readActivity(int num);
	public void updateActivity(Activity dto, String userId, String pathname) throws Exception;
	public void deleteActivity(Map<String, Object> map, String userId, String pathname) throws Exception;
}
