package com.sp.trip.partner.lodgingManage;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.sp.trip.common.FileManager;
import com.sp.trip.common.dao.CommonDAO;

@Service("logdingManage.lodgingManageService")
public class LodgingManageServiceImpl implements LodgingManageService {
	@Autowired
	private CommonDAO dao;
	@Autowired
	private FileManager fileManager;
	
	@Override
	public void insertHotel(LodgingManage dto, String pathname) throws Exception {
		try {
			int seq = dao.selectOne("lodgingManage.hotelSeq");
			dto.setHotelNum(seq);
			dao.insertData("lodgingManage.insertHotel", dto);
			
			// 파일 업로드
			if (!dto.getSelectFile().isEmpty()) {
				for (MultipartFile mf : dto.getSelectFile()) {
					String hotelImageFileNum = fileManager.doFileUpload(mf, pathname);
					if (hotelImageFileNum == null) {
						continue;
					}

					dto.setHotelSaveFilename(hotelImageFileNum);

					insertFile(dto);
				}
			}

		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
	}
	
	@Override
	public int dataCount(Map<String, Object> map) {
		int result = 0;
		
		try {
			result = dao.selectOne("lodgingManage.dataCount", map);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}
	
	@Override
	public List<LodgingManage> listHotel(String partnerId) {
		List<LodgingManage> list = null;
		
		try {
			list = dao.selectList("lodgingManage.listHotel", partnerId);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}

	@Override
	public LodgingManage readHotel(int hotelNum) {
		LodgingManage dto = null;
		
		try {
			dto = dao.selectOne("lodgingManage.readHotel", hotelNum);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return dto;
	}

	@Override
	public void updateHotel(LodgingManage dto, String userId, String pathname) throws Exception {
		try {
			dao.updateData("lodgingManage.updateHotel", dto);
			
			if (!dto.getSelectFile().isEmpty()) {
				for (MultipartFile mf : dto.getSelectFile()) {
					String hotelImageFileNum = fileManager.doFileUpload(mf, pathname);
					if (hotelImageFileNum == null) {
						continue;
					}

					dto.setHotelSaveFilename(hotelImageFileNum);
					
					insertFile(dto);
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
	}

	@Override
	public void deleteHotel(int hotelNum, String userId, String pathname) throws Exception {
		try {
			// 파일 지우기
			List<LodgingManage> listFile = listFile(hotelNum);
			if (listFile != null) {
				for (LodgingManage dto : listFile) {
					fileManager.doFileDelete(dto.getHotelSaveFilename(), pathname);
				}
			}

			// 파일 테이블 내용 지우기
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("field", "hotelNum");
			map.put("hotelNum", hotelNum);
			deleteFile(map);
			
			dao.deleteData("lodgingManage.deleteHotel", hotelNum);
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
	}
	
	
	// 숙소 이미지
	@Override
	public void insertFile(LodgingManage dto) throws Exception {
		
		try {
			int imageSeq = dao.selectOne("lodgingManage.hotelImageSeq");
			dto.setHotelImageFileNum(imageSeq);
			dao.insertData("lodgingManage.insertFile", dto);
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
	}

	@Override
	public List<LodgingManage> listFile(int hotelNum) {
		List<LodgingManage> listFile = null;
		
		try {
			listFile = dao.selectList("lodgingManage.listFile", hotelNum);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return listFile;
	}

	@Override
	public LodgingManage readFile(int fileNum) {
		LodgingManage dto = null;
		
		try {
			dto = dao.selectOne("lodgingManage.readFile", fileNum);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return dto;
	}

	@Override
	public void deleteFile(Map<String, Object> map) throws Exception {
		try {
			
			dao.deleteData("lodgingManage.deleteFile", map);
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
	}
	
	
	// 방
	@Override
	public void insertRoom(LodgingManage dto, String pathname) throws Exception {
		try {
			int roomSeq = dao.selectOne("lodgingManage.roomSeq");
			dto.setRoomNum(roomSeq);
			
			dao.insertData("lodgingManage.insertRoom", dto);
			
			if (!dto.getSelectFile().isEmpty()) {
				for (MultipartFile mf : dto.getSelectFile()) {
					String roomImageFileNum = fileManager.doFileUpload(mf, pathname);
					if (roomImageFileNum == null) {
						continue;
					}

					dto.setRoomSaveFilename(roomImageFileNum);

					insertRoomFile(dto);
				}
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
	}

	@Override
	public int dataRoom(Map<String, Object> map) {
		int result = 0;
		
		try {
			result = dao.selectOne("lodgingManage.dataRoom", map);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}
	

	@Override
	public List<LodgingManage> listRoom(String partnerId) {
		List<LodgingManage> list = null;
		
		try {
			list = dao.selectList("lodgingManage.listRoom", partnerId);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}

	@Override
	public LodgingManage readRoom(int roomNum) {
		LodgingManage dto = null;
		
		try {
			dto = dao.selectOne("lodgingManage.readRoom", roomNum);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return dto;
	}

	@Override
	public void updateRoom(LodgingManage dto, String userId, String pathname) throws Exception {
		try {
			dao.updateData("lodgingManage.updateRoom", dto);
			
			if (!dto.getSelectFile().isEmpty()) {
				for (MultipartFile mf : dto.getSelectFile()) {
					String roomImageFileNum = fileManager.doFileUpload(mf, pathname);
					if (roomImageFileNum == null) {
						continue;
					}

					dto.setRoomSaveFilename(roomImageFileNum);
					
					insertRoomFile(dto);
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
	}

	@Override
	public void deleteRoom(int roomNum, String userId, String pathname) throws Exception {
		// 파일 지우기
		try {
			List<LodgingManage> listFile = listRoomFile(roomNum);
			if (listFile != null) {
				for (LodgingManage dto : listFile) {
					fileManager.doFileDelete(dto.getRoomSaveFilename(), pathname);
				}
			}

			// 파일 테이블 내용 지우기
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("field", "roomNum");
			map.put("roomNum", roomNum);
			deleteRoomFile(map);
			
			dao.deleteData("lodgingManage.deleteRoom", roomNum);
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
	}

	// 방 파일
	@Override
	public void insertRoomFile(LodgingManage dto) throws Exception {
		try {
			int imageSeq = dao.selectOne("lodgingManage.roomImageSeq");
			dto.setRoomImageFileNum(imageSeq);
			dao.insertData("lodgingManage.insertRoomFile", dto);
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
	}

	@Override
	public List<LodgingManage> listRoomFile(int roomNum) {
		List<LodgingManage> listFile = null;
		
		try {
			listFile = dao.selectList("lodgingManage.listRoomFile", roomNum);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return listFile;
	}

	@Override
	public LodgingManage readRoomFile(int fileNum) {
		LodgingManage dto = null;
		
		try {
			dto = dao.selectOne("lodgingManage.readRoomFile", fileNum);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return dto;
	}

	@Override
	public void deleteRoomFile(Map<String, Object> map) throws Exception {
		try {
			dao.deleteData("lodgingManage.deleteRoomFile", map);
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
	}

	@Override
	public String hotelName(int hotelNum) {
		String hotelName = "";
		
		try {
			hotelName = dao.selectOne("lodgingManage.hotelName", hotelNum);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return hotelName;
	}

}
