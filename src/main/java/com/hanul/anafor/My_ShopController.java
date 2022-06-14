package com.hanul.anafor;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import my_shop.my_ShopServiceImpl;

@Controller
public class My_ShopController {
	
	@Autowired @Qualifier("ateam") private SqlSession sql;
	@Autowired private my_ShopServiceImpl service;
	
//============================== 주문 상세 ==============================	
	@RequestMapping("/order.my")
	public String adminShopDetail(int id, Model model) {
		
		service.order_detail(id);
		model.addAttribute("vo", service.order_detail(id));
		
		return "my_shop/order";
	}

}
