package com.hanul.anafor;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Ad_ContentsController {

	
	@RequestMapping ("/contents.co")
	public String contents(HttpSession session, Model model) {
		
		session.setAttribute("category", "co");
	
		return "admin_contents/contents";
	}
}
