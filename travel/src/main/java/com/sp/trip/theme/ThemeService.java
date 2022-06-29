package com.sp.trip.theme;

import java.util.List;
import java.util.Map;

public interface ThemeService {
	public void insertBoard(Theme dto, String pathname) throws Exception;

	public List<Theme> listCity(Map<String, Object> map) throws Exception;

	public List<Theme> listTheme(Map<String, Object> map) throws Exception;

	public int dataCount(Map<String, Object> map);

	public List<Theme> listAdminCourse(Map<String, Object> map);

	public List<Theme> listAdminDetailCourse(int courseNum);

	public String listImg(int courseNum);

	public Theme readBoard(int courseNum);

	public String listImgs(int courseDetailNum);

	public void updateHitCount(int num) throws Exception;

	public void insertBoardLike(Map<String, Object> map) throws Exception;

	public void deleteBoardLike(Map<String, Object> map) throws Exception;

	public int boardLikeCount(int courseNum);

	public boolean userBoardLiked(Map<String, Object> map);

	public void insertBoardScrap(Map<String, Object> map) throws Exception;

	public void deleteBoardScrap(Map<String, Object> map) throws Exception;

	public int boardScrapCount(int courseNum);

	public boolean userBoardScraped(Map<String, Object> map);

}
