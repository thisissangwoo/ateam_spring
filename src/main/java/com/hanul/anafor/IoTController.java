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

import com.google.gson.Gson;

import IoT.IoTVO;
import schedule.ScheduleVO;


// 고객관리 페이지처리 @Controller 생성

// 클라이언트의 요청 → Controller → Service → DAO → mapper  (DB)
//					 ←			   ←		  ←	 ←		

@Controller
public class IoTController {
	
	@Autowired @Qualifier ("ateam") SqlSession sql;
	Gson gson = new Gson();
	
	// 
	@ResponseBody
	@RequestMapping ("/arduSetIoT")
	public void arduSetIoT(HttpServletRequest req) {
		System.out.println("arduSetIoT() 들어옴");
		System.out.println(req.getParameter("latitude"));		//위도
		System.out.println(req.getParameter("longitude"));		//경도
	}
	
	
//============================================================================================
	@ResponseBody
	   @RequestMapping(value="/iot_insert", produces = "application/json;charset=UTF-8")
	   public String insert(HttpServletRequest req) {
		
	      IoTVO vo = new IoTVO();
	     
	      vo = gson.fromJson(req.getParameter("iot_insert"), IoTVO.class);
	      sql.insert("IoT.mapper.iot_insert", vo);
	      System.out.println(vo.getCase_date1());
	      
	      return "";
	   }   
	
}










