package com.hanul.anafor;


import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import ad_shop.ad_ShopServiceImpl;
import web_shop.WReviewPage;


import ad_shop.ad_ShopServiceImpl;


@Controller
public class Ad_ShopController {
	
	@Autowired private ad_ShopServiceImpl service;
	
	@Autowired private WReviewPage page;
	
	@Autowired @Qualifier("ateam") private SqlSession sql;

//============================== 주문 상세 ==============================	
	@RequestMapping("/shopDetail.sp")
	public String adminShopDetail(int id, Model model) {
		
		service.order_detail(id);
		model.addAttribute("vo", service.order_detail(id));
		
		return "admin_shop/shopDetail";
	}









































































//===============================================================================================================================


	@RequestMapping("/list.sp")
	public String list(HttpSession session, Model model, @RequestParam(defaultValue = "1") int curPage, @RequestParam(defaultValue = "6") int pageList ) {
		session.setAttribute("category", "sp");
		
		page.setCurPage(curPage);
		page.setPageList(pageList);
//		service.review_list();
		
		model.addAttribute("page", service.review_list(page));
		
		
		
		
		return "admin_shop/list";
	}

	
	@RequestMapping("/reviewDetail.sp")
	public String list(int id, Model model) {
		
	
//		service.review_list();
		service.review_detail(id);
		
		model.addAttribute("vo", service.review_detail(id));
		
		
		
		
		
		return "admin_shop/reviewDetail";
	}

	
	
	
	
	
	
}


