package com.sp.trip.partner;

public interface PartnerService {
	public void insertPartner(Partner dto) throws Exception;
	public Partner readStatus(String partnerId);
}
