package com.hanul.anafor;

import javax.servlet.http.HttpSession;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;



@Controller
public class AdminController {
	
	   
	@RequestMapping ("admin")
	public String list(HttpSession session, Model model) {
     
		return "admin_main/list";
	}

	
	@RequestMapping ("/dashboard.bo")
	public String dashboard(HttpSession session, Model model) {
		
		session.setAttribute("category", "bo");
	
		return "admin_main/dashboard";
	}

	
	
}







