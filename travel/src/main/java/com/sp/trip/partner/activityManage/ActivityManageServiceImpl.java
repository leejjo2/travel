package com.sp.trip.partner.activityManage;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sp.trip.common.FileManager;
import com.sp.trip.common.dao.CommonDAO;

@Service("partner.activityManage.activityManageService")
public class ActivityManageServiceImpl implements ActivityManageService{
	
	@Autowired
	private CommonDAO dao;

	@Autowired
	private FileManager fileManager;
	
	@Override
	public void insertActivity(Activity dto, String userId, String pathname) throws Exception {
		try {
			System.out.println(pathname);
			String saveFilename = fileManager.doFileUpload(dto.getSelectFile(), pathname);
			if (saveFilename != null) {
				System.out.println("title"+ saveFilename);
				dto.setTitleImgname(saveFilename);

				int seq = dao.selectOne("activityManage.seq");
				int partnerNum = dao.selectOne("activityManage.readPartnerNum", userId);

				dto.setActivityNum(seq); // 액티비티 번호 dto에 넣기
				dto.setPartnerNum(partnerNum); // 파트너 번호 dto에 넣기
				
				dao.insertData("activityManage.insertActivity", dto);
				
				dao.insertData("activityManage.insertActivityDetail", dto);
			}
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
	}

	
	@Override
	public int dataCount(String userId) {
		int result = 0;
		
		try {
			int partnerNum = dao.selectOne("activityManage.readPartnerNum", userId);
			result = dao.selectOne("activityManage.dataCount", partnerNum);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}

	
	@Override
	public List<Activity> listActivity(Map<String, Object> map, String userId) {
		List<Activity> list = null;
		
		try {
			int partnerNum = dao.selectOne("activityManage.readPartnerNum", userId);
			map.put("partnerNum", partnerNum);
			list = dao.selectList("activityManage.listActivity", map);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public Activity readActivity(int num) {
		Activity dto = null;
		
		try {
			dto = dao.selectOne("activityManage.readActivity", num);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return dto;
	}

	@Override
	public void updateActivity(Activity dto, String userId, String pathname) throws Exception {
		try {
			// 업로드한 파일이 존재한 경우
			String saveFilename = fileManager.doFileUpload(dto.getSelectFile(), pathname);

			if (saveFilename != null) {
				// 이전 파일 지우기
				if (dto.getTitleImgname().length() != 0) {
					fileManager.doFileDelete(dto.getTitleImgname(), pathname);
				}
				dto.setTitleImgname(saveFilename);
			}
			
			int partnerNum = dao.selectOne("activityManage.readPartnerNum", userId);
			dto.setPartnerNum(partnerNum);
			
			dao.updateData("activityManage.updateActivity", dto);
			dao.updateData("activityManage.updateActivityDetail", dto);
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
	}

	@Override
	public void deleteActivity(Map<String, Object> map, String userId, String pathname) throws Exception {
		try {
			if (pathname != null) { // 파일이 있다면
				fileManager.doFileDelete(pathname);
			}
			
			int partnerNum = dao.selectOne("activityManage.readPartnerNum", userId);
			map.put("partnerNum", partnerNum);
			
			dao.deleteData("activityManage.deleteActivityDetail", map);
			dao.deleteData("activityManage.deleteActivity", map);
			
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
	}
}
