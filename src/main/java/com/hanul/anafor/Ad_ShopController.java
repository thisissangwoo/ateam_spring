package com.hanul.anafor;


import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;





@Controller
public class Ad_ShopController {
	
	@Autowired @Qualifier("ateam") private SqlSession sql;

//============================== 주문 상세 ==============================	
	@RequestMapping("/adminShopDetail.sp")
	public String adminShopDetail() {
		
		
		return "admin_shop/adminShopDetail";
	}









































































//===============================================================================================================================


	@RequestMapping("/list.sp")
	public String list() {

		return "admin_shop/list";
	}

}


