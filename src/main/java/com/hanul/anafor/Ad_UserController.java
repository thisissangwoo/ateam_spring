package com.hanul.anafor;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import web_user.UserPage;
import web_user.WuserServiceImpl;

@Controller
public class Ad_UserController {
	
	@Autowired private WuserServiceImpl service;
	@Autowired private UserPage page;
	
	//전체 회원 조회
	@RequestMapping("user.ur")
	public String adminUser(HttpSession session, @RequestParam(defaultValue="1") int curPage, Model model) {
		session.setAttribute("category", "ur");
		
		page.setCurPage(curPage);				//기본값 1 부여
		System.out.println(page.getBeginList());
		model.addAttribute("page",service.admin_manage_user(page));
		return "admin_user/manageUser";
	}
}
