package com.hanul.anafor;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Web_boxController {
	
	
	@RequestMapping ("/box.pr")
	public String box(HttpSession session) {
		
		session.setAttribute("category", "pr");
		
		
		
		
		
		return "shop/box";
		
		
	}
	
	
	

	//-----제품구매-------------------------------------------------------------------------------------------------------------------------------
	
	
	
	@RequestMapping ("/shop.pr")
	public String shop() {
		
		
		
		return "shop/shop";
	}
	
	

}
