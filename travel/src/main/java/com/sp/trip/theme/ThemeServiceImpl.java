package com.sp.trip.theme;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sp.trip.common.dao.CommonDAO;

@Service("theme.themeService")
public class ThemeServiceImpl implements ThemeService{
	@Autowired
	private CommonDAO dao;
	
	@Override
	public void insertBoard(Theme dto) throws Exception {
		try {
			int seq = dao.selectOne("theme.seq");
			dto.setCourseNum(seq);
			
			dao.insertData("theme.insertBoard", dto);
			
			for(int i=0; i<dto.getPlaceNameList().size(); i++) {
				dto.setCourse_seq(i+1);
				dto.setPlaceName(dto.getPlaceNameList().get(i));
				dto.setAddress(dto.getAddressList().get(i));
				
				dao.insertData("theme.insertCourse", dto);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
		
	}

}