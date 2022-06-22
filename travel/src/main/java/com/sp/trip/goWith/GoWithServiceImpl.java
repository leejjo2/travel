package com.sp.trip.goWith;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service("goWith.goWithService")
public class GoWithServiceImpl implements GoWithService {
	@Autowired
	private com.sp.trip.common.dao.CommonDAO dao;
	
	@Autowired
	private com.sp.trip.common.FileManager fileManager;

	@Override
	public void insertGoWith(GoWith dto, String pathname) throws Exception {
		try {
			String saveFilename = fileManager.doFileUpload(dto.getUploadFile(), pathname);
			if (saveFilename != null) {
				dto.setImageFilename(saveFilename);
			
				dao.insertData("goWith.insertGoWith", dto);
			}
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
		
	}

	@Override
	public List<GoWith> listCity() throws Exception {
		List<GoWith> list = null;
		
		try {
			list = dao.selectList("goWith.listCity");
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}

	@Override
	public List<GoWith> listSpot(int cityNum) throws Exception {
		List<GoWith> list = null;
		
		try {
			list = dao.selectList("goWith.listSpot", cityNum);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return list;
	}

	@Override
	public List<GoWith> listGoWith(Map<String, Object> map) {
		List<GoWith> list = null;
		
		try {
			list = dao.selectList("goWith.listGoWith", map);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}
	
	@Override
	public int dataCount(Map<String, Object> map) {
		int result = 0;

		try {
			result = dao.selectOne("goWith.dataCount", map);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return result;
	}

	@Override
	public GoWith readGoWith(int num) {
		GoWith dto = null;
		
		try {
			dto = dao.selectOne("goWith.readGoWith", num);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return dto;
	}

	@Override
	public void updateHitCount(int goWithNum) throws Exception {
		try {
			dao.updateData("goWith.updateHitCount", goWithNum);
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
		
	}

	@Override
	public void updateGoWith(GoWith dto, String pathname) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteGoWith(int num, String pathname, String userId, int membership) throws Exception {
		// TODO Auto-generated method stub
		
	}


}
