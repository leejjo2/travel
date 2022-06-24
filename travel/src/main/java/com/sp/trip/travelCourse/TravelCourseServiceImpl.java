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
	
	// 리스트 정보 
	@Override
	public List<TravelCourse> listBoard(Map<String, Object> map) {
		List<TravelCourse> list = null;
		
		try {
			list = dao.selectList("travelCourse.listBoard", map);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	public List<Integer> readcourseDetailNum() { 
		List<Integer> courseDetailNumList = null;
		try {
			courseDetailNumList = dao.selectOne("travelCourse.courseDetailNum");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return courseDetailNumList ;
	}
	
	@Override
	public int dataCount(Map<String, Object> map) {
		int result = 0;
		try {
			result = dao.selectOne("travelCourse.dataCount", map);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	// 리스트 보여줄 도시 이름
	@Override
	public List<TravelCourse> listCity(int courseNum) {
		List<TravelCourse> list = null;
		try {
			list = dao.selectList("travelCourse.listCourse", courseNum);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}
	
	// 리스트에 보여줄 이미지
	@Override
	public String listImg(int courseDetailNum) {
		String result = "";
		try {
			result = dao.selectOne("travelCourse.listImg", courseDetailNum);

		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}


	// 도시 카테고리
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

	
	// 테마 카테고리
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

	@Override
	public void insertBoardLike(Map<String, Object> map) throws Exception {
		try {
			dao.insertData("travelCourse.insertBoardLike", map);
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
	}
	
	// 좋아요 취소
	@Override
	public void deleteBoardLike(Map<String, Object> map) throws Exception {
		try {
			dao.deleteData("travelCourse.deleteBoardLike", map);
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
		
	}
	
	// 좋아요 개수
	@Override
	public int boardLikeCount(int courseNum) {
		int result = 0;
		try {
			result = dao.selectOne("travelCourse.boardLikeCount", courseNum);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	// 유저 좋아요 불러오기
	@Override
	public boolean userBoardLiked(Map<String, Object> map) {
		boolean result = false;
		try {
			TravelCourse dto = dao.selectOne("travelCourse.userBoardLiked", map);
			if(dto != null) { // 검색 된 것이 없으면
				result = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	@Override
	public void insertBoardScrap(Map<String, Object> map) throws Exception {
		try {
			dao.insertData("travelCourse.insertBoardScrap", map);
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}		
	}

	
	@Override
	public void deleteBoardScrap(Map<String, Object> map) throws Exception {
		try {
			dao.deleteData("travelCourse.deleteBoardScrap", map);
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
		
	}

	@Override
	public int boardScrapCount(int courseNum) {
		int result = 0;
		try {
			result = dao.selectOne("travelCourse.boardLikeCount", courseNum);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	@Override
	public boolean userBoardScraped(Map<String, Object> map) {
		boolean result = false;
		try {
			TravelCourse dto = dao.selectOne("travelCourse.userBoardScraped", map);
			if(dto != null) { // 검색 된 것이 없으면
				result = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	@Override
	public TravelCourse readBoard(int courseNum) {
		TravelCourse dto = null;
		try {
			dto = dao.selectOne("travelCourse.readBoard", courseNum);
		} catch (Exception e) {
		}
		return dto;
	}

	@Override
	public void updateHitCount(int courseNum) throws Exception {
		try {
			dao.updateData("travelCourse.updateHitCount", courseNum);
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
		
	}





	



}
