package com.hanul.anafor;

import java.util.HashMap;
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

import com.google.gson.Gson;

import iot.GPSVO;


@Controller
public class IoTController {
	
	@Autowired @Qualifier("ateam") SqlSession sql;
	
	
	//스프링에 지도 띄우기
	@RequestMapping("/iotmap")
	public String userMap(Model model) {
		//우선 디비에 임의로 저장해놓은 데이터의 box_id와 user_id로 조회 (이 부분 추후 수정)
		GPSVO vo = new GPSVO();
		vo.setBox_id(2222);
		vo.setUser_id("testabc");
		
		  List<GPSVO> list = sql.selectList("iotmap.mapper.webSelect",vo);
		  model.addAttribute("list", new Gson().toJson(list));
		 
		return "map/map";
		
	}
	
	
	
	
	//GPS 위치 받기
	@ResponseBody
	@RequestMapping ("/arduSetIoT")
	public void arduSetIoT(HttpServletRequest req) {
		System.out.println("arduSetIoT() 들어옴");
		double lat = (Double.parseDouble(req.getParameter("latitude"))/1000000);
		double lon = (Double.parseDouble(req.getParameter("longitude"))/1000000);
		GPSVO vo = new GPSVO();
		//추후 아이디도 로라통신으로 주고 받아야함
		vo.setUser_id("testabc");
		System.out.println(req.getParameter("equipment_id")); //2222 > 이것도 나중에 db iot_box에 미리 데이터를 추가해야함
		vo.setBox_id(Integer.parseInt(req.getParameter("equipment_id")));
		vo.setLatitude(lat);
		vo.setLongitude(lon);
		sql.insert("iot.mapper.insert",vo);
		System.out.println(lat);
		System.out.println(lon);
	}
	

	
}










