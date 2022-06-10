package com.hanul.anafor;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Ad_UserController {
	
	@RequestMapping("user.ur")
	public String adminUser(HttpSession session) {
		session.setAttribute("category", "ur");
		return "admin_user/manageUser";
	}
	
}
