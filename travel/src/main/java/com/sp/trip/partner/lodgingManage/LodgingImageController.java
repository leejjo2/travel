package com.sp.trip.partner.lodgingManage;

import java.io.File;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sp.trip.common.FileManager;

@Controller("image.imageController")
@RequestMapping("/image/*")
public class LodgingImageController {
	@Autowired
	private FileManager fileManager;
	
	@RequestMapping(value = "upload", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> fileUpload(LodgingImage dto,
			HttpServletRequest req,
			HttpSession session
			) throws Exception {
		Map<String, Object> model = new HashMap<String, Object>();
		
		String root=session.getServletContext().getRealPath("/");
		String pathname=root+"uploads"+File.separator+"hotel";
		
		String saveFilename=fileManager.doFileUpload(dto.getUpload(), pathname);
		
		String cp = req.getContextPath();
		boolean uploaded = false;
		String url = null;
		if(saveFilename != null) {
			uploaded = true;
			url = cp +"/uploads/hotel/"+saveFilename;
			model.put("url", url);
			model.put("uploaded", uploaded);
		} else {
			model.put("error", "{\"message\": \"could not upload this image\"}");
			model.put("uploaded", uploaded);
		}
		
		return model;
	}
	
}
