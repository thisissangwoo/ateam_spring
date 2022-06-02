package com.hanul.anafor;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Web_boxController {
	
	
	@RequestMapping ("/box.pr")
	public String box() {
		return "shop/box";
	}
	
	
	@RequestMapping ("/shop.pr")
	public String shop() {
		
		
		
		return "shop/shop";
	}
	
	@RequestMapping ("/order.pr")
	public String order() {
		
		
		
		return "shop/order";
	}

}
