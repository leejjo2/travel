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
			String saveFilename = fileManager.doFileUpload(dto.getSelectFile(), pathname);
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
	public int dataCount(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return 0;
	}

}
