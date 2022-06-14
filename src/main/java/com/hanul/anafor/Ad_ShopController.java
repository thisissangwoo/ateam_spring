package com.hanul.anafor;



import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import ad_shop.ad_ShopDetailPage;
import ad_shop.ad_ShopServiceImpl;
import web_shop.WReviewPage;



@Controller
public class Ad_ShopController {
	
	@Autowired private ad_ShopServiceImpl service;
	
	@Autowired private WReviewPage page;
	@Autowired private ad_ShopDetailPage page1;
	
	//@Autowired private WReviewPage page1;
	
	@Autowired @Qualifier("ateam") private SqlSession sql;

//============================== 주문 상세 ==============================	
	@RequestMapping("/shopDetail.sp")
	public String adminShopDetail(int id, Model model) {
		
		service.order_detail(id);
		model.addAttribute("vo", service.order_detail(id));
		
		return "admin_shop/shopDetail";
	}
	
	@RequestMapping("/shopList.sp")
	public String shop(HttpSession session, @RequestParam (defaultValue = "1") 
	int curPage, Model model) {
		
		session.setAttribute("category", "sp");
		
		// curPage를 입력받지 않았지만 @RequestParam 어노테이션을 통해 기본값 1을 부여
		page1.setCurPage(curPage); // 현재 페이지에 대한 정보를 담기 위한 처리
		model.addAttribute("page1", service.order_list(page1));
		
		return "admin_shop/shopList";
	}

	
	
	
	
	
	
	
	
	
	
//===============================================================================================================================


	@RequestMapping("/list.sp")
	public String list(HttpSession session, Model model, @RequestParam(defaultValue = "1") int curPage, @RequestParam(defaultValue = "6") int pageList ) {
		session.setAttribute("category", "sp");
		
		page.setCurPage(curPage);
		page.setPageList(pageList);
		
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


