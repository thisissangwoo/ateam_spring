package com.hanul.anafor;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Web_boxController {
	
	@RequestMapping ("/box")
	public String box() {
		return "shop/box";
	}
	
	

}
