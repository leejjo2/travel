package com.sp.trip.freebbs;

import java.util.List;
import java.util.Map;

public interface BoardService {
	public void insertBoard(Board dto, String pathname) throws Exception;
	
	public int dataCount(Map<String, Object> map);
	public List<Board> listBoard(Map<String, Object> map);
	
	public List<Board> listCate(Map<String, Object> map) throws Exception;
	
	
	
	public Board readBoard(int freeNum);
	public Board preReadBoard(Map<String, Object> map);
	public Board nextReadBoard(Map<String, Object> map);
	
	public void updateBoard(Board dto, String pathname) throws Exception;
	
	public void deleteBoard(int num, String pathname) throws Exception;
	
	public void insertFile(Board dto) throws Exception;
	public List<Board> listFile(int freeNum);
	public Board readFile(int freeFileNum);
	public void deleteFile(Map<String, Object> map) throws Exception;
	
	
	public void insertBoardLike(Map<String, Object> map) throws Exception;
	public void deleteBoardLike(Map<String, Object> map) throws Exception;
	public int boardLikeCount(int freeNum);
	public boolean userBoardLiked(Map<String, Object> map);
	
	public void insertReply(Reply dto) throws Exception;
	public List<Reply> listReply(Map<String, Object> map);
	public int replyCount(Map<String, Object> map);
	public void deleteReply(Map<String, Object> map) throws Exception;
	
	public List<Reply> listReplyAnswer(int answer);
	public int replyAnswerCount(int answer);
	
	public void insertReplyLike(Map<String, Object> map) throws Exception;
	public Map<String, Object> replyLikeCount(Map<String, Object> map);
}
