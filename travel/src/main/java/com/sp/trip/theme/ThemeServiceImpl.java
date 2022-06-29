package com.sp.trip.theme;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sp.trip.common.FileManager;
import com.sp.trip.common.dao.CommonDAO;

@Service("theme.themeService")
public class ThemeServiceImpl implements ThemeService {
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

			for (int i = 0; i < dto.getPlaceNameList().size(); i++) {
				int detailseq = dao.selectOne("theme.adminCourseDetailseq");
				dto.setCourseDetailNum(detailseq);
				dto.setCourse_seq(i + 1);
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

	@Override
	public List<Theme> listTheme(Map<String, Object> map) throws Exception {
		List<Theme> listTheme = null;

		try {
			listTheme = dao.selectList("theme.themeCategory", map);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return listTheme;
	}

	@Override
	public int dataCount(Map<String, Object> map) {
		int result = 0;
		try {
			result = dao.selectOne("theme.dataCount", map);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	@Override
	public List<Theme> listAdminCourse(Map<String, Object> map) {
		List<Theme> list = null;

		try {
			list = dao.selectList("theme.listAdminCourse", map);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public List<Theme> listAdminDetailCourse(int courseNum) {
		List<Theme> list = null;

		try {
			list = dao.selectList("theme.listAdminDetailCourse", courseNum);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public String listImg(int courseNum) {
		String saveFileName = null;

		try {
			saveFileName = dao.selectOne("theme.listImg", courseNum);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return saveFileName;
	}

	@Override
	public String listImgs(int courseDetailNum) {
		String saveFileName = null;

		try {
			saveFileName = dao.selectOne("theme.listImgs", courseDetailNum);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return saveFileName;
	}

	@Override
	public Theme readBoard(int courseNum) {
		Theme dto = null;

		try {
			dto = dao.selectOne("theme.readBoard", courseNum);
		} catch (Exception e) {
		}

		return dto;
	}

	@Override
	public void updateHitCount(int num) throws Exception {
		// 조회수 증가
		try {
			dao.updateData("theme.updateHitCount", num);

		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
	}

	@Override
	public void insertBoardLike(Map<String, Object> map) throws Exception {
		try {
			dao.insertData("theme.insertBoardLike", map);
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
	}

	// 좋아요 취소
	@Override
	public void deleteBoardLike(Map<String, Object> map) throws Exception {
		try {
			dao.deleteData("theme.deleteBoardLike", map);
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
			result = dao.selectOne("theme.boardLikeCount", courseNum);
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
			Theme dto = dao.selectOne("theme.userBoardLiked", map);
			if (dto != null) { // 검색 된 것이 없으면
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
			dao.insertData("theme.insertBoardScrap", map);
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
	}

	@Override
	public void deleteBoardScrap(Map<String, Object> map) throws Exception {
		try {
			dao.deleteData("theme.deleteBoardScrap", map);
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}

	}

	@Override
	public int boardScrapCount(int courseNum) {
		int result = 0;
		try {
			result = dao.selectOne("theme.boardLikeCount", courseNum);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	@Override
	public boolean userBoardScraped(Map<String, Object> map) {
		boolean result = false;
		try {
			Theme dto = dao.selectOne("theme.userBoardScraped", map);
			if (dto != null) { // 검색 된 것이 없으면
				result = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

}
