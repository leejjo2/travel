package com.sp.trip.partner.activityManage;

import java.util.List;
import java.util.Map;

public interface ActivityManageService {
	public void insertActivity(Activity dto, String userId) throws Exception;
	public List<Activity> listActivity(Map<String, Object> map);
	public Activity readActivity(int num);
	public void updateActivity(Activity dto) throws Exception;
	public void deleteActivity(Map<String, Object> map) throws Exception;
}
