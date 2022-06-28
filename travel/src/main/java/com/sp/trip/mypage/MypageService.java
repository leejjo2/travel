package com.sp.trip.mypage;

import java.util.List;
import java.util.Map;

import com.sp.trip.activity.Reserve;
import com.sp.trip.travelCourse.TravelCourse;

public interface MypageService {
	public List<Integer> searchMyLike(String userId) throws Exception;
	public List<Integer> searchMyScrap(String userId) throws Exception;

	public TravelCourse readMyList(Map<String, Object> map);
	public List<Reserve> readOrderDetail(Map<String, Object> map) throws Exception;
	public int orderCount(String userId) throws Exception;

}
