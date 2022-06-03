package com.hanul.anafor;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import web_shop.ReviewServielmpl;
import web_shop.WReviewPage;

@Controller
public class Web_boxController {

	@Autowired
	private ReviewServielmpl service;
	
	@Autowired private WReviewPage page;
	
	@RequestMapping("/box.pr")
	public String list(HttpSession session, Model model, @RequestParam (defaultValue = "1") int curPage, @RequestParam(defaultValue = "3") int pageList) {

		session.setAttribute("category", "pr");
		//model.addAttribute("list", service.review_list());
			
		page.setCurPage(curPage);
		page.setPageList(pageList);
		model.addAttribute("page", service.review_list(page));
		

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
