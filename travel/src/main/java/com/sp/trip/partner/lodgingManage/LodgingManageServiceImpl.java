package com.sp.trip.partner.lodgingManage;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sp.trip.common.dao.CommonDAO;

@Service("logdingManage.lodgingManageService")
public class LodgingManageServiceImpl implements LodgingManageService {
	@Autowired
	private CommonDAO dao;

	@Override
	public void insertHotel(LodgingManage dto, String pathname) throws Exception {
		try {
			dao.insertData("logdingManage.insertHotel", dto);
		} catch (Exception e) {
			e.printStackTrace();
			
			throw e;
		}
	}
	
	@Override
	public List<LodgingManage> listHotel(String partnerId) {
		List<LodgingManage> list = null;
		
		try {
			list = dao.selectList("logdingManage.listHotel", partnerId);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}

	@Override
	public List<LodgingManage> listHotel(Map<String, Object> map) {
		List<LodgingManage> list = null;
		
		try {
			
		} catch (Exception e) {
		}
		
		return list;
	}

	@Override
	public void readHotel(int hotelNum) {
		
	}

	@Override
	public void updateHotel(LodgingManage dto) throws Exception {
		try {
			dao.updateData("logdingManage.updateHotel", dto);
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
	}

	@Override
	public void deleteHotel(int hotelNum, String userId, int membership) throws Exception {
		try {
			
			dao.deleteData("logdingManage.deleteHotel", hotelNum);
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
	}

	

	
}
