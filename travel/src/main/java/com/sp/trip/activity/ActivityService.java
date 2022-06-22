package com.sp.trip.activity;
 
import java.util.List;
import java.util.Map;

public interface ActivityService {
	public int dataCount(Map<String, Object> map);
	public List<Activity> listActivity(Map<String, Object> map);
	public Activity readActivity(int activityNum);
	
	// 예약을 위한 함수
	public Reserve readMemberInfo(String userId);
	public Reserve readReserveInfo(int activityNum);
	
	// 결제를 위한 함수
	public int insertReserve(Reserve dto) throws Exception;
	public Reserve readPayment(int reserveNum);
}
