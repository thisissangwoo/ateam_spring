package com.hanul.anafor;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import my_review.MyReviewPage;
import my_review.my_reviewServiceImpl;

@Controller
public class My_ReviewController {

	@Autowired my_reviewServiceImpl service;
	
	@Autowired private MyReviewPage page;
	
	
	@RequestMapping("/list.rev")
	public String checkPw(HttpSession session) {
		
		session.setAttribute("category", "rev");
		
		
		
		
		return "my_review/list";
		
	}
	
	
	
	
}
