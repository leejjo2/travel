package com.sp.trip.mypage;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sp.trip.common.dao.CommonDAO;
import com.sp.trip.travelCourse.TravelCourse;

@Service("mypage.MypageService")
public class MypageServiceImpl implements MypageService {
	
	@Autowired
	private CommonDAO dao;
	

	@Override
	public List<Integer> searchMyLike(String userId) throws Exception {
		List<Integer> list = null;
		try {
			list = dao.selectList("mypage.searchMyLike", userId);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}

	@Override
	public TravelCourse readMyList(Map<String, Object> map) {
		TravelCourse courseDto = null;
		try {
			courseDto = dao.selectOne("mypage.listMy", map);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return courseDto;
	}

	@Override
	public List<Integer> searchMyScrap(String userId) throws Exception {
		List<Integer> list = null;
		try {
			list = dao.selectList("mypage.searchMyScrap", userId);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}

}
