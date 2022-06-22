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
	public Activity readActivity(int activityNum) {
		Activity dto = null;
		
		try {
			dto = dao.selectOne("activity.readActivity", activityNum);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return dto;
	}

	@Override
	public Reserve readMemberInfo(String userId) {
		Reserve dto = null;
		
		try {
			dto = dao.selectOne("activity.readMemberInfo", userId);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return dto;
	}

	@Override
	public Reserve readReserveInfo(int activityNum) {
		Reserve dto = null;
		try {
			dto = dao.selectOne("activity.readReserveInfo", activityNum);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return dto;
	}

	@Override
	public int insertReserve(Reserve dto) throws Exception {
		int reserveNum = 0;
		try {
			reserveNum = dao.selectOne("activity.reserveNum_seq");
			dto.setReserveNum(reserveNum);
			
			dao.insertData("activity.insertActivityReserve", dto); // 액티비티 예약 테이블
			dao.insertData("activity.insertActivityReserveDetail", dto); // 액티비티 예약 상세 테이블
			dao.insertData("activity.insertActivityPay", dto); // 액티비티 결제 테이블
			
			if(dto.getMileageUse() != 0) { // 마일리지 사용을 했다면
				dao.insertData("activity.insertMileageUse", dto);
			}
			
			dto.setTotalMileage(dto.getTotalMileage() + dto.getMileageSave());
			dao.insertData("activity.insertMileageSave", dto);
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
		return reserveNum;
	}

	@Override
	public Reserve readPayment(int reserveNum) {
		Reserve dto = null;
		try {
			dto = dao.selectOne("activity.readPayment", reserveNum);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return dto;
	}

}
