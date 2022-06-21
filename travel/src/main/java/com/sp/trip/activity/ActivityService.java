package com.sp.trip.activity;
 
import java.util.List;
import java.util.Map;

public interface ActivityService {
	public int dataCount(Map<String, Object> map);
	public List<Activity> listActivity(Map<String, Object> map);
	public Activity readActivity(int activityNum);
}
