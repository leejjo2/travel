package com.sp.trip.activity;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sp.trip.common.dao.CommonDAO;

@Service("activity.activityService")
public class ActivityServiceImpl implements ActivityService {

	@Autowired
	private CommonDAO dao;
	
	@Override
	public int dataCount(Map<String, Object> map) {
		int result = 0;

		try {
			result = dao.selectOne("activity.dataCount", map);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return result;
	}

	@Override
	public List<Activity> listActivity(Map<String, Object> map) {
		List<Activity> list = null;
		
		try {
			list = dao.selectList("activity.listActivity", map);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public Activity readActivity(int num) {
		// TODO Auto-generated method stub
		return null;
	}

}
