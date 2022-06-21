package com.sp.trip.freebbs;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;

import com.sp.trip.common.FileManager;
import com.sp.trip.common.dao.CommonDAO;

public class BoardServiceImpl implements BoardService {
	@Autowired
	private CommonDAO dao;
	
	@Autowired
	private FileManager fileManager;
	
	
	@Override
	public void insertBoard(Board dto, String pathname) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public int dataCount(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<Board> listBoard(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Board readBoard(int num) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Board preReadBoard(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Board nextReadBoard(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void updateBoard(Board dto, String pathname) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteBoard(int num, String pathname) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void insertFile(Board dto) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<Board> listFile(int num) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Board readFile(int fileNum) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void deleteFile(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void insertBoardLike(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteBoardLike(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public int boardLikeCount(int num) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public boolean userBoardLiked(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public void insertReply(Reply dto) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<Reply> listReply(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int replyCount(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public void deleteReply(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<Reply> listReplyAnswer(int answer) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int replyAnswerCount(int answer) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public void insertReplyLike(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public Map<String, Object> replyLikeCount(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return null;
	}

}
