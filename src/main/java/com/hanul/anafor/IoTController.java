package com.hanul.anafor;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
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
	
	@Autowired @Qualifier("ateam") SqlSession sql;
	// 
	@ResponseBody
	@RequestMapping ("/arduSetIoT")
	public void arduSetIoT(HttpServletRequest req) {
		System.out.println("arduSetIoT() 들어옴");
		double lat = (Double.parseDouble(req.getParameter("latitude"))/1000000);
		double lon = (Double.parseDouble(req.getParameter("longitude"))/1000000);
		System.out.println(lat);
		System.out.println(lon);

	}
	
	
	
}










