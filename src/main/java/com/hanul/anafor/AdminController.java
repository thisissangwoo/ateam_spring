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
public class AdminController {
	
	@Autowired @Qualifier("ateam") private SqlSession sql;

	@Autowired private NoticeServiceImpl service;
	
	@RequestMapping ("admin")
	public String list(HttpSession session, Model model) {
		
		
		
		return "admin/list";
	}

//============================== 주문 상세 ==============================	
	@RequestMapping("/adminShopDetail.pr")
	public String adminShopDetail() {
		
		
		return "admin/adminShopDetail";
	}
}







