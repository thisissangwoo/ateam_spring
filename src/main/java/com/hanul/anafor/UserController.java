package com.hanul.anafor;

import java.util.HashMap;
import java.util.Random;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;

import user.EmailNumberVO;
import user.UserDAO;
import user.UserVO;

@Controller
public class UserController {

   @Autowired UserDAO dao;
   Gson gson = new Gson();
   @Autowired @Qualifier("ateam") SqlSession sql;
   @Autowired private JavaMailSender mailSender;
   
  
   
   /*로그인*/
   @ResponseBody
   @RequestMapping(value ="/login", produces = "application/json;charset=UTF-8")
   public String login(HttpServletRequest req) {
	  UserVO vo = new UserVO();
	  vo.setUser_id(req.getParameter("user_id"));
	  vo.setUser_pw(req.getParameter("user_pw"));
      vo = dao.login(vo);
      System.out.println(gson.toJson(vo));
      return gson.toJson(vo);    
   }

   /*회원가입*/
	@ResponseBody
	@RequestMapping(value = "/join", produces = "application/json;charset=UTF-8")
	public String join(HttpServletRequest req) {
		UserVO vo = new UserVO();
		vo.setUser_id(req.getParameter("user_id"));
		vo.setUser_pw(req.getParameter("user_pw"));
		vo.setUser_name(req.getParameter("user_name"));
		vo.setUser_tel(req.getParameter("user_tel"));
		vo.setUser_birth(req.getParameter("user_birth"));
		vo.setUser_gender(req.getParameter("user_gender"));
		dao.join(vo);
		System.out.println("가입완료:" + vo.getUser_id());
		return "";
	}

	/* 아이디 중복확인 */
	@ResponseBody
	@RequestMapping(value = "/id_chk", produces = "application/json;charset=UTF-8")
	public String id_check(HttpServletRequest req) {
		String user_id = req.getParameter("user_id");
		boolean i = dao.id_chk(user_id);
		System.out.println(gson.toJson(i));
		return gson.toJson(i);
	}

	/* 회원정보수정 */
	@ResponseBody
	@RequestMapping(value = "/update", produces = "application/json;charset=UTF-8")
	public String update(HttpServletRequest req) {
		System.out.println(req.getParameter("vo"));
		UserVO vo = gson.fromJson(req.getParameter("vo"), UserVO.class);
		System.out.println(sql.update("user.mapper.update", vo));
		return "";
	}

	/* 회원탈퇴 */
	@ResponseBody
	@RequestMapping(value = "/delete", produces = "application/json;charset=UTF-8")
	public String delete(HttpServletRequest req) {
		System.out.println(req.getParameter("vo"));
		UserVO vo = gson.fromJson(req.getParameter("vo"), UserVO.class);
		System.out.println(sql.delete("user.mapper.delete", vo));
		return "";
	}

	/* 이메일인증 */
	@ResponseBody
	@RequestMapping(value = "/emailCheck", produces = "application/json;charset=UTF-8")
	public String emailCheck(HttpServletRequest req) {
		String email = req.getParameter("user_id");

		// 인증번호 난수 생성 ,범위 (111,111 ~ 999,999)
		Random random = new Random();
		int checkNum = random.nextInt(888888) + 111111;

		System.out.println("이메일 : " + email);
		System.out.println("인증번호 : " + checkNum);

		String setForm = "sbb2388@gmail.com";
		String toMail = email;
		String title = "아나포 회원가입 인증 이메일 입니다";
		String content = "<br>인증 번호는 " + checkNum + " 입니다<br>";

		try {
			MimeMessage message = mailSender.createMimeMessage();
			MimeMessageHelper helper = new MimeMessageHelper(message, true, "utf-8");
			helper.setSubject(title);
			helper.setText(content, true);
			helper.setFrom(setForm);
			helper.setTo(toMail);
			mailSender.send(message);
		} catch (Exception e) {
			e.printStackTrace();
		}
		EmailNumberVO vo = new EmailNumberVO(checkNum);
		return gson.toJson(vo);
	}

	/* PW찾기위한 아이디확인 */
	@ResponseBody
	@RequestMapping(value = "/id_chk2", produces = "application/json;charset=UTF-8")
	public String id_check2(HttpServletRequest req) {
		String user_id = req.getParameter("user_id");
		boolean i = dao.id_chk2(user_id);
		System.out.println("140 : " + gson.toJson(i));
		return gson.toJson(i);
	}

	/* 비밀번호찾기 */
	@ResponseBody
	@RequestMapping(value = "/pw_find", produces = "application/json;charset=UTF-8")
	public void pw_find(HttpServletRequest req) {
		String email = req.getParameter("user_id");

		// 임시비밀번호 난수 생성 ,범위 (111,111 ~ 999,999)
		Random random = new Random();
		int checkNum = random.nextInt(888888) + 111111;

		String tempPass = Integer.toString(checkNum);

		HashMap<String, String> map = new HashMap<String, String>();
		map.put("user_id", email);
		map.put("user_pw", tempPass);

		System.out.println("이메일 : " + email);
		System.out.println("임시비밀번호 : " + checkNum);

		String setForm = "sbb2388@gmail.com";
		String toMail = email;
		String title = "아나포 임시비밀번호 발급 이메일 입니다";
		String content = "<br> 임시비밀번호는 " + checkNum + " 입니다<br>";

		try {
			MimeMessage message = mailSender.createMimeMessage();
			MimeMessageHelper helper = new MimeMessageHelper(message, true, "utf-8");
			helper.setSubject(title);
			helper.setText(content, true);
			helper.setFrom(setForm);
			helper.setTo(toMail);
			mailSender.send(message);
		} catch (Exception e) {
			e.printStackTrace();
		}

		System.out.println(sql.update("user.mapper.pw_find", map));
	}
	
	/*소셜로그인*/
	   @ResponseBody
	   @RequestMapping(value ="/social", produces = "application/json;charset=UTF-8")
	   public String social(HttpServletRequest req) {
		  UserVO vo = new UserVO();
		  vo.setUser_id(req.getParameter("user_id"));
	      vo = dao.social(vo);
	      System.out.println(gson.toJson(vo));
	      return gson.toJson(vo);    
	   }
	   
	/*소셜회원가입*/
		@ResponseBody
		@RequestMapping(value = "/socialJoin", produces = "application/json;charset=UTF-8")
		public String socialJoin(HttpServletRequest req) {
			UserVO vo = new UserVO();
			vo.setUser_id(req.getParameter("user_id"));
			vo.setUser_name(req.getParameter("user_name"));
			vo.setUser_gender(req.getParameter("user_gender"));
			dao.socialJoin(vo);
			System.out.println("가입완료:" + vo.getUser_id());
			return "";
		}
		
	/*정보수정 버튼클릭시 조회*/
	   @ResponseBody
	   @RequestMapping(value ="/edit", produces = "application/json;charset=UTF-8")
	   public String edit(HttpServletRequest req) {
		  UserVO vo = new UserVO();
		  vo.setUser_id(req.getParameter("user_id"));
	      vo = dao.social(vo);
	      System.out.println(gson.toJson(vo));
	      return gson.toJson(vo);    
	   }		
}
