package com.hanul.anafor;

import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import user.UserVO;
import web_user.WuserServiceImpl;

@Controller
public class My_UserController {
	
	@Autowired WuserServiceImpl service;
	
	@RequestMapping("/checkpw.ur")
	public String checkPw(HttpSession session) {
		
		session.setAttribute("category", "usercheck");
		return "my_info/checkpw";
		
	}
	//회원정보 수정
	@RequestMapping("/userinfo.ur")
	public String userInfo(HttpSession session) {
		session.setAttribute("category", "userinfo");
		UserVO vo = (UserVO) session.getAttribute("loginInfo");
		return "my_info/info";
	}
	
	//회원정보 업데이트
	@RequestMapping("/userinfoUpdate")
	public String userInfoUpdate(HttpSession session,UserVO vo, String new_pw) {
	
		if(new_pw != null) {
			vo.setUser_pw(new_pw);}
		service.user_update(vo);
		session.setAttribute("loginInfo",service.user_login(vo));
		return "redirect:userinfo.ur";
	}
	
}
