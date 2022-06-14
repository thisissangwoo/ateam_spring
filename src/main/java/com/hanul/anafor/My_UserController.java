package com.hanul.anafor;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class My_UserController {
	
	@RequestMapping("/check.pw")
	public String checkPw(HttpSession session) {
		
		session.setAttribute("category", "usercheck");
		return "my_info/checkpw";
		
	}
	
}
