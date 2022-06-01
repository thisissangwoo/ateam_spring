package com.hanul.anafor;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Web_CustomerController {

	@RequestMapping ("/list.cu")
	public String list(HttpSession session, Model model) {
		
		session.setAttribute("category", "cu");
		
		return "customer/list";
	}
}
