package com.hanul.anafor;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import web_shop.BasketVO;
import web_shop.ReviewServielmpl;
import web_shop.WReviewPage;
import web_shop_detail.ShopDetailVO;

@Controller
public class Web_BoxController {

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
	
	@RequestMapping ("/basket.pr")
	public String basket(BasketVO vo, HttpSession session) {
		
		service.basket_insert(vo);
		
		
		return "redirect:basket.pr";
	}
	

//==================== 제품구매, 제품 상세페이지 ====================

	@RequestMapping("/shop.pr")
	public String shop() {
		
		
		
		
		
		return "shop/shop";
		
	}

	
	@RequestMapping ("/order.pr")
	public String order(ShopDetailVO vo, HttpSession session) {
		
		session.setAttribute("orderInfo", vo);
		
		return "shop/order";
	}

}
