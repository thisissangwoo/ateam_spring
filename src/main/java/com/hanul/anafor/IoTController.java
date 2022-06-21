package com.hanul.anafor;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;

import IoT.GPSVO;
import IoT.IoTVO;
import user.UserVO;



// 고객관리 페이지처리 @Controller 생성

// 클라이언트의 요청 → Controller → Service → DAO → mapper  (DB)
//					 ←			   ←		  ←	 ←		

@Controller
public class IoTController {
	
	@Autowired @Qualifier ("ateam") SqlSession sql;
	Gson gson = new Gson();

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
			
			//안드로이드에 지도 띄우기
			@RequestMapping("/iotmobilemap")
			public String userMapMobile(Model model) {
				//우선 디비에 임의로 저장해놓은 데이터의 box_id와 user_id로 조회 (이 부분 추후 수정)
				GPSVO vo = new GPSVO();
				vo.setBox_id(2222);
				vo.setUser_id("testabc");
				
				  List<GPSVO> list = sql.selectList("iotmap.mapper.webSelect",vo);
				  model.addAttribute("list", new Gson().toJson(list));
				 
				return "map/mobilemap";
				
			}		
	
//============================================================================================
	   @ResponseBody
	   @RequestMapping(value="/iot_insert", produces = "application/json;charset=UTF-8")
	   public String insert(HttpServletRequest req) {
		  IoTVO vo = new IoTVO();
		  vo.setUser_id(req.getParameter("user_id"));
		  vo.setMemo(req.getParameter("memo"));
		  vo.setCase_num(req.getParameter("case_num")); 
		  vo.setCase_time(req.getParameter("case_time"));
		  sql.insert("IoT.mapper.iot_insert", vo);
	      return "";
	   }  
	
	   @ResponseBody
	   @RequestMapping(value="/iot_select", produces = "application/json;charset=UTF-8")
	   public String select(HttpServletRequest req) {	   
		  String user_id = req.getParameter("user_id"); 
		  List<IoTVO> list = sql.selectList("IoT.mapper.iot_select", user_id ); 
		  System.out.println(gson.toJson(list));
		  return gson.toJson(list);
	   }

	   @ResponseBody
	   @RequestMapping(value="/iot_delete", produces = "application/json;charset=UTF-8")
	   public String delete(HttpServletRequest req) {
		String box_id = req.getParameter("box_id");   
		System.out.println(sql.delete("IoT.mapper.iot_delete", box_id));
		return "";
	  }
	
	   @ResponseBody
	   @RequestMapping(value="/iot_modify", produces = "application/json;charset=UTF-8")
	   public String modify(HttpServletRequest req) {
		  IoTVO vo = new IoTVO();
		  vo.setBox_id(Integer.parseInt(req.getParameter("box_id")));
		  vo.setMemo(req.getParameter("memo"));
		  vo.setCase_num(req.getParameter("case_num"));  
		  vo.setCase_time(req.getParameter("case_time"));
		  sql.update("IoT.mapper.iot_modify", vo);
	      return "";  
		}	   
}




                         
                         
                         
                         


