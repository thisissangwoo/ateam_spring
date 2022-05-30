package com.hanul.anafor;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Web_NoticeController {

	@RequestMapping ("/list.no")
	public String notice() {
		
		return "notice/list";
		
	}
	
}
