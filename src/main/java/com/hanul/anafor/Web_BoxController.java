package com.hanul.anafor;

import javax.mail.Session;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import web_shop.BasketVO;
import web_shop.ShopDetailVO;
import web_shop.ShopServicelmpl;
import web_shop.WReviewPage;


@Controller
public class Web_BoxController {

	@Autowired
	private ShopServicelmpl service;

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
		
		//service.basket_insert(vo);
		
		
		return "shop/basket";
	}



//==================== 제품구매, 제품 상세페이지 ====================

	@RequestMapping("/shop.pr")

	public String shop(ShopDetailVO vo, HttpSession session) {
		
		session.setAttribute("orderInfo", vo);

			

		
		
		
		return "shop/shop";
	}

	
	
	@RequestMapping("/a.pr")
	public String a(BasketVO vo, HttpSession session) {
		
		session.setAttribute("orderInfo", vo);
		
		return "redirect:order.pr";
	}
	
	@RequestMapping ("/order.pr")
	public String order(ShopDetailVO vo, HttpSession session) {
		
		session.getAttribute("orderInfo");
		
//		service.order_insert(vo);
		
		BasketVO vo2 = (BasketVO) session.getAttribute("orderInfo");
		vo.setCnt(vo2.getBk_cnt());
		vo.setPrice(vo2.getBk_price());
		
		
		
		//service.order_insert(vo);
		return "shop/order";
	}
	
//	@RequestMapping ("/order_result.pr")
//	public String order_result(ShopDetailVO vo, HttpSession session) {
//		
//	    service.order_insert(vo);
//		
//		return "redirect:/";
//	}
	
	
}
