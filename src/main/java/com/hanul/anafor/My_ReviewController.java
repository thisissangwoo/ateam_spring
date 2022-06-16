package com.hanul.anafor;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import my_review.MyReviewPage;
import my_review.my_reviewServiceImpl;
import user.UserVO;

@Controller
public class My_ReviewController {

	@Autowired my_reviewServiceImpl service;
	
	@Autowired private MyReviewPage page;
	
	
	@RequestMapping("/list.rev")
	public String checkPw(HttpSession session, Model model,@RequestParam(defaultValue = "1") int curPage, @RequestParam(defaultValue = "15") int pageList ) {
		
		session.setAttribute("category", "rev");
		
		UserVO user = (UserVO) session.getAttribute("loginInfo");
		
		page.setCurPage(curPage);
		page.setPageList(pageList);
		page.setUser_id(user.getUser_id());
		
		
		model.addAttribute("page", service.review_list(page));
		
		return "my_review/list";
		
	}
	
	
	
	
}
