package com.hanul.anafor;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import web_notice.NoticeServiceImpl;

@Controller
public class Web_NoticeController {

	@Autowired private NoticeServiceImpl service;
	
	@RequestMapping ("/list.no")
	public String notice(HttpSession session, Model model) {
		
		session.setAttribute("category", "no");
		
		model.addAttribute("list",service.notice_list());
		
		return "notice/list";
	}
}
