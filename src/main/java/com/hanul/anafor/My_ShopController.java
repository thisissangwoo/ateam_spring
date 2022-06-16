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
import web_shop.ShopDetailVO;

@Controller
public class My_ShopController {
	
	@Autowired @Qualifier("ateam") private SqlSession sql;
	@Autowired private my_ShopServiceImpl service;

//============================== My 주문 목록 리스트 조회 ==============================	
	@RequestMapping("/shopList.my")
	public String shop(ShopDetailVO vo, HttpSession session, Model model) {
		
		String user_id = ((UserVO) session.getAttribute("loginInfo")).getUser_id();
		model.addAttribute("list", service.order_list(user_id));
		
		return "my_shop/shopList";
	}
//============================== My 주문 해당 목록 상세 조회 ===========================
	@RequestMapping("/shopDetail.my")
	public String adminShopDetail(HttpSession session, Model model) {
		
		String user_id = ((UserVO) session.getAttribute("loginInfo")).getUser_id();
		service.order_detail(user_id);
		model.addAttribute("vo", service.order_detail(user_id));
		
		return "my_shop/shopDetail";
	}
//======================================================================================
	
}
