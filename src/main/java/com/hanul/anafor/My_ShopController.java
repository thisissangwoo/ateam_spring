package com.hanul.anafor;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import my_shop.my_ShopServiceImpl;
import user.UserVO;

@Controller
public class My_ShopController {
	
	@Autowired @Qualifier("ateam") private SqlSession sql;
	@Autowired private my_ShopServiceImpl service;
	
//============================== 주문 상세 ==============================	
	@RequestMapping("/order.my")
	public String adminShopDetail(HttpSession session, Model model) {
		
		String user_id = ((UserVO) session.getAttribute("loginInfo")).getUser_id();
		service.order_detail(user_id);
		model.addAttribute("vo", service.order_detail(user_id));
		
		return "my_shop/order";
	}

}
