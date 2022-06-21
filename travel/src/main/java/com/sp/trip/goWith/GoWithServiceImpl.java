package com.sp.trip.goWith;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service("goWith.goWithService")
public class GoWithServiceImpl implements GoWithService {
	@Autowired
	private com.sp.trip.common.dao.CommonDAO dao;

	@Override
	public void insertGoWith(GoWith dto) throws Exception {
		try {
			dao.insertData("goWith.insertGoWith", dto);
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
		
	}

}
