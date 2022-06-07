package com.hanul.anafor;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import web_customer.CustomerPage;
import web_notice.NoticePage;
import web_notice.NoticeServiceImpl;
import web_notice.NoticeVO;

@Controller
public class Web_NoticeController {

	@Autowired private NoticeServiceImpl service;
	
	@Autowired private NoticePage page;
	
	@RequestMapping ("/list.no")
	public String list(HttpSession session, @RequestParam (defaultValue = "1") 
	int curPage, Model model, String search, String keyword) {
	
		session.setAttribute("category", "no");
		
		// curPage를 입력받지 않았지만 @RequestParam 어노테이션을 통해 기본값 1을 부여
		page.setCurPage(curPage); // 현재 페이지에 대한 정보를 담기 위한 처리
		// 검색조건, 검색어 정보를 담음
		page.setSearch(search);		
		page.setKeyword(keyword);
		
		model.addAttribute("page",service.notice_list(page));
		return "notice/list";
	}
	
	@RequestMapping ("/new.no")
	public String notice() {
		return "notice/new";
	}
	
	@RequestMapping ("/insert.no")
	public String insert(NoticeVO vo) {
		return "redirect:list.cu";
	}

	@RequestMapping ("/detail.no")
	public String detail(int id, Model model) {
		service.notice_read(id);
		model.addAttribute("vo", service.notice_detail(id));
		model.addAttribute("crlf", "\r\n");
		
		return "notice/detail";
	}
	

}
