package com.hanul.anafor;


import javax.servlet.http.HttpSession;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


import web_notice.NoticeServiceImpl;

/**
 * Handles requests for the application home page.
 */
@Controller
public class AdminController {

	@Autowired private NoticeServiceImpl service;
	
	@RequestMapping ("/admin")
	public String list(HttpSession session, Model model) {
		
		
		
		return "admin/dashboard";
	}

	
	
}







