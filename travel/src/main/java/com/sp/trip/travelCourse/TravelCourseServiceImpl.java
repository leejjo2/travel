package com.sp.trip.travelCourse;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sp.trip.common.FileManager;
import com.sp.trip.common.dao.CommonDAO;


@Service("travelCourse.travelCourseService")
public class TravelCourseServiceImpl implements TravelCourseService{

	@Autowired
	private CommonDAO dao;
	
	@Autowired
	private FileManager fileManager;
	
	@Override
	public void insertCity(TravelCourse dto, String pathname) throws Exception {
		try {
			System.out.println("사이즈 - " + dto.getPlaceNames().size());

			int seq = dao.selectOne("travelCourse.travelCourseSeq");
			dto.setCourseNum(seq);
			
			dao.insertData("travelCourse.insertBoard", dto);


			for(int i=0; i<dto.getPlaceNames().size(); i++) {
				int detailseq = dao.selectOne("travelCourse.travelCourseDetailSeq");

				dto.setCourseDetailNum(detailseq);
				dto.setCourseSeq(i+1);
				dto.setPlaceName(dto.getPlaceNames().get(i));
				dto.setAddress(dto.getAddresss().get(i));
				dto.setLongitude(dto.getLongitudes().get(i));
				dto.setLatitude(dto.getLatitudes().get(i));
				dto.setDetailContent(dto.getDetailContents().get(i));
				
				dao.insertData("travelCourse.insertCourse", dto);
				
				String saveFileName = fileManager.doFileUpload(dto.getUploadFile().get(i), pathname);
				dto.setSaveFileName(saveFileName);
				dao.insertData("travelCourse.travelcourseImage", dto);
			}

		} catch (Exception e) {
			e.printStackTrace();
			throw e;		
		}
		
	}
 
	@Override
	public List<TravelCourse> listCity(Map<String, Object> map) throws Exception {
		List<TravelCourse> listCity = null;
		
		try {
			listCity = dao.selectList("travelCourse.cityCategory", map);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return listCity;
	}

	@Override
	public List<TravelCourse> listTheme(Map<String, Object> map) throws Exception {
		List<TravelCourse> listTheme = null;
		
		try {
			listTheme = dao.selectList("travelCourse.themeCategory", map);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return listTheme;
	}
	
	

}
