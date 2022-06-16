package com.sp.trip.theme;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sp.trip.common.FileManager;
import com.sp.trip.common.dao.CommonDAO;

@Service("theme.themeService")
public class ThemeServiceImpl implements ThemeService{
	@Autowired
	private CommonDAO dao;
	
	@Autowired
	private FileManager fileManager;
	
	@Override
	public void insertBoard(Theme dto, String pathname) throws Exception {
		try {
			int seq = dao.selectOne("theme.adminCourseSeq");
			dto.setCourseNum(seq);
			
			dao.insertData("theme.insertBoard", dto);
			
			for(int i=0; i<dto.getPlaceNameList().size(); i++) {
				int detailseq = dao.selectOne("theme.adminCourseDetailseq");
				dto.setCourseDetailNum(detailseq);
				dto.setCourse_seq(i+1);
				dto.setPlaceName(dto.getPlaceNameList().get(i));
				dto.setAddress(dto.getAddressList().get(i));
				dto.setLongitude(dto.getLongitudeList().get(i));
				dto.setLatitude(dto.getLatitudeList().get(i));
				dto.setCourseContent(dto.getCourseContentList().get(i));
				
				dao.insertData("theme.insertCourse", dto);
				
				String saveFileName = fileManager.doFileUpload(dto.getUploadFile().get(i), pathname);
				dto.setSaveFileName(saveFileName);
				dao.insertData("theme.insertCourseImg", dto);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
		
	}

	@Override
	public List<Theme> listCity(Map<String, Object> map) throws Exception {
		List<Theme> listCity = null;
		try {
			listCity = dao.selectList("theme.cityCategory", map);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return listCity;
	}
	
	

}
