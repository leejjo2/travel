package com.sp.trip.partner;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sp.trip.common.dao.CommonDAO;

@Service("partner.partnerService")
public class PartnerServiceImpl implements PartnerService {
	
	@Autowired
	private CommonDAO dao;

	@Override
	public void insertPartner(Partner dto) throws Exception {
		try {
			if (dto.getTel1().length() != 0 && dto.getTel2().length() != 0 && dto.getTel3().length() != 0) {
				dto.setPartnerTel(dto.getTel1() + "-" + dto.getTel2() + "-" + dto.getTel3());
			}
			
			System.out.println("번호" + dto.getPartnerTel());
			dao.insertData("partner.insertPartner", dto);
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
		
	}

	@Override
	public Partner readStatus(String partnerId) {
		Partner dto = null;
		try {
			dto = dao.selectOne("partner.readStatus", partnerId);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return dto;
	}
}
