package com.sp.trip.freebbs;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

public class Board {
	// 게시글
	private int freeNum;
    private String userId;
    private String userName;
    private String subject;
    private String content;
    private String reg_date;
    private int hitCount;
    
    //카테고리
    private int freecateNum;
    private String freecateName;
    
    //이미지파일
    private int freeFileNum;
    private String saveFilename;
	private List<MultipartFile> selectFile; 
	
	//댓글
	private int replyCount;
	//좋아요
	private int boardLikeCount;
	public int getFreeNum() {
		return freeNum;
	}
	public void setFreeNum(int freeNum) {
		this.freeNum = freeNum;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getReg_date() {
		return reg_date;
	}
	public void setReg_date(String reg_date) {
		this.reg_date = reg_date;
	}
	public int getHitCount() {
		return hitCount;
	}
	public void setHitCount(int hitCount) {
		this.hitCount = hitCount;
	}
	public int getFreecateNum() {
		return freecateNum;
	}
	public void setFreecateNum(int freecateNum) {
		this.freecateNum = freecateNum;
	}
	public String getFreecateName() {
		return freecateName;
	}
	public void setFreecateName(String freecateName) {
		this.freecateName = freecateName;
	}
	public int getFreeFileNum() {
		return freeFileNum;
	}
	public void setFreeFileNum(int freeFileNum) {
		this.freeFileNum = freeFileNum;
	}
	public String getSaveFilename() {
		return saveFilename;
	}
	public void setSaveFilename(String saveFilename) {
		this.saveFilename = saveFilename;
	}
	public List<MultipartFile> getSelectFile() {
		return selectFile;
	}
	public void setSelectFile(List<MultipartFile> selectFile) {
		this.selectFile = selectFile;
	}
	public int getReplyCount() {
		return replyCount;
	}
	public void setReplyCount(int replyCount) {
		this.replyCount = replyCount;
	}
	public int getBoardLikeCount() {
		return boardLikeCount;
	}
	public void setBoardLikeCount(int boardLikeCount) {
		this.boardLikeCount = boardLikeCount;
	}
	
	
	
	
	
	
	
	
	
	
	
	
    
    
}
