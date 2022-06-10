package com.hanul.anafor;


import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


import web_notice.NoticeServiceImpl;




@Controller
public class Ad_MainController {
	
	@Autowired @Qualifier("ateam") private SqlSession sql;

	@Autowired private NoticeServiceImpl service;
	
	@RequestMapping ("admin")
	public String list(HttpSession session, Model model) {
		
		
		
		return "admin_main/list";
	}
	

}







