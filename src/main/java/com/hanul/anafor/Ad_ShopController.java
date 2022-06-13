package com.hanul.anafor;


import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import ad_shop.ad_ShopServiceImpl;


@Controller
public class Ad_ShopController {
	
	@Autowired @Qualifier("ateam") private SqlSession sql;
	@Autowired private ad_ShopServiceImpl service;

//============================== 주문 상세 ==============================	
	@RequestMapping("/shopDetail.sp")
	public String adminShopDetail(int id, Model model) {
		
		service.order_detail(id);
		model.addAttribute("vo", service.order_detail(id));
		
		return "admin_shop/shopDetail";
	}









































































//===============================================================================================================================


	@RequestMapping("/list.sp")
	public String list() {

		return "admin_shop/list";
	}

}


