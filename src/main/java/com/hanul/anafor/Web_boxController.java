package com.hanul.anafor;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import web_shop.ReviewServielmpl;

@Controller
public class Web_boxController {

	@Autowired
	private ReviewServielmpl service;

	@RequestMapping("/box.pr")
	public String list(HttpSession session, Model model) {

		session.setAttribute("category", "pr");
		model.addAttribute("list", service.review_list());


		return "shop/box";

	}

	// -----제품구매-------------------------------------------------------------------------------------------------------------------------------

	@RequestMapping("/shop.pr")
	public String shop() {

		return "shop/shop";
	}

	
	@RequestMapping ("/order.pr")
	public String order() {
		
		
		
		return "shop/order";
	}

}
