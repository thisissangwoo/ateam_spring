package com.hanul.anafor;


import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.fasterxml.jackson.core.format.DataFormatDetector;

import ad_main.GraphServiceImpl;
import web_notice.NoticeServiceImpl;




@Controller
public class Ad_MainController {
	
@Autowired @Qualifier("ateam") private SqlSession sql;

@Autowired private GraphServiceImpl service;


	@RequestMapping ("admin")
	public String list(HttpSession session, Model model) {
		Calendar calendar = new GregorianCalendar();
		DateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		String today = format.format(calendar.getTime());  //오늘
		calendar.add(Calendar.DATE, -7);
		String lWeek = format.format(calendar.getTime());
		System.out.println(today);
		System.out.println(lWeek);
		
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("today", today);
		map.put("lWeek", lWeek);
		model.addAttribute("list",service.search(map));
		System.out.println(service.search(map).get(0).getCnt());
		return "admin_main/list";
	}
	
	
	@RequestMapping ("/dashboard.bo")
		public String dashboard(HttpSession session, Model model) {
		      
		session.setAttribute("category", "bo");
		   
		return "admin_main/dashboard";

	}
}







