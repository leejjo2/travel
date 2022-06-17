package com.sp.trip.partner.activityManage;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sp.trip.common.dao.CommonDAO;

@Service("partner.activityManage.activityManageService")
public class ActivityManageServiceImpl implements ActivityManageService{
	
	@Autowired
	private CommonDAO dao;

	@Override
	public void insertActivity(Activity dto, String userId) throws Exception {
		try {
			int seq = dao.selectOne("activityManage.seq");
			int partnerNum = dao.selectOne("activityManage.readPartnerNum", userId);

			dto.setActivityNum(seq); // 액티비티 번호 dto에 넣기
			dto.setPartnerNum(partnerNum); // 파트너 번호 dto에 넣기
			
			dao.insertData("activityManage.insertActivity", dto);
			
			dao.insertData("activityManage.insertActivityDetail", dto);
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
		
	}

	@Override
	public List<Activity> listActivity(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Activity readActivity(int num) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void updateActivity(Activity dto) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteActivity(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		
	}

}
