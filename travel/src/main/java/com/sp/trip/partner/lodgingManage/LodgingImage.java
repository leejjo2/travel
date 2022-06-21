package com.sp.trip.partner.lodgingManage;

import org.springframework.web.multipart.MultipartFile;

public class LodgingImage {
	private MultipartFile upload; // ckeditor5 static const

	public MultipartFile getUpload() {
		return upload;
	}

	public void setUpload(MultipartFile upload) {
		this.upload = upload;
	}
}
