package com.hanul.anafor;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;


// 고객관리 페이지처리 @Controller 생성

// 클라이언트의 요청 → Controller → Service → DAO → mapper  (DB)
//					 ←			   ←		  ←	 ←		

@Controller
public class IoTController {
	
	
	// 
	@ResponseBody
	@RequestMapping ("/arduSetIoT")
	public void arduSetIoT(HttpServletRequest req) {
		System.out.println("arduSetIoT() 들어옴");
		System.out.println(req.getParameter("latitude"));
		System.out.println(req.getParameter("longitude"));
	}
	
	
	
}










