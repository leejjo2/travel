package com.sp.trip.image;

import org.springframework.web.multipart.MultipartFile;

public class Image {
	private MultipartFile upload; // ckeditor5 static const

	public MultipartFile getUpload() {
		return upload;
	}

	public void setUpload(MultipartFile upload) {
		this.upload = upload;
	}
}
