package com.hanul.anafor;

import javax.mail.Session;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import user.UserVO;
import web_shop.BasketVO;
import web_shop.ShopDetailVO;
import web_shop.ShopServicelmpl;
import web_shop.WReviewPage;

@Controller
public class Web_BoxController {

	@Autowired
	private ShopServicelmpl service;

	@Autowired
	private WReviewPage page;

	
	//제품설명 리뷰 조회
	@RequestMapping("/box.pr")
	public String list(HttpSession session, Model model, @RequestParam(defaultValue = "1") int curPage,
			@RequestParam(defaultValue = "3") int pageList) {

		session.setAttribute("category", "pr");
		// model.addAttribute("list", service.review_list());

		page.setCurPage(curPage);
		page.setPageList(pageList);
		model.addAttribute("page", service.review_list(page));

		return "shop/box";
	}
	//장바구니 리스트 조회
	@RequestMapping ("/basket.pr")
	public String basket(BasketVO vo, HttpSession session, Model model) {
		
		//service.basket_insert(vo);
		UserVO user =  (UserVO) session.getAttribute("loginInfo");
		model.addAttribute("list", service.basket_list(user));
		
		return "shop/basket";
	}

	//insert 장바구니
	@RequestMapping("/b.pr")
	public String b(BasketVO vo, HttpSession session) {
		
		session.getAttribute("loginInfo");
		session.setAttribute("orderInfo", vo);

		
		
		service.basket_insert(vo);

		return "redirect:basket.pr";
	}


//==================== 제품구매, 제품 상세페이지 ====================

	@RequestMapping("/shop.pr")
	public String shop(BasketVO vo, HttpSession session) {

		return "shop/shop";
	}

	
	
	@RequestMapping("/a.pr")
	public String a(BasketVO vo, HttpSession session) {
		
		session.setAttribute("orderInfo", vo);
		
		return "redirect:order.pr";
	}
	
	@RequestMapping ("/order.pr")
	public String order(ShopDetailVO vo, HttpSession session) {
		
		BasketVO vo2 = (BasketVO) session.getAttribute("orderInfo");
		vo.setCnt(vo2.getBk_cnt());
		vo.setPrice(vo2.getBk_price());
		
		
		
		//service.order_insert(vo);
		return "shop/order";
	}
}
