package com.sp.trip.mypage;

import java.util.List;
import java.util.Map;

import com.sp.trip.travelCourse.TravelCourse;

public interface MypageService {
	public List<Integer> searchMyLike(String userId) throws Exception;
	public List<Integer> searchMyScrap(String userId) throws Exception;

	public TravelCourse readMyList(Map<String, Object> map);

}
