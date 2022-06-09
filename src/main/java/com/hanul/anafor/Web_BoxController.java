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
	public String basket(BasketVO vo, HttpSession session, Model model) {
		
		//service.basket_insert(vo);
		//MemberVO member = (MemberVO) session.getAttribute("loginInfo");
		//vo.setWriter(member.getId());
		
		//vo.setWriter(((MemberVO) session.getAttribute("loginInfo")).getId());
		
		UserVO vo2 = (UserVO) session.getAttribute("loginInfo");
		String user_id = vo2.getUser_id();
		
		model.addAttribute("list", service.basket_list(user_id));
		
		
		return "shop/basket";
	}

	
	
	
	
	@RequestMapping("/b.pr")
	public String b(BasketVO vo, HttpSession session) {
		
		session.setAttribute("orderInfo", vo);
		UserVO vo2 = (UserVO) session.getAttribute("loginInfo");
		vo.setUser_id(vo2.getUser_id());
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