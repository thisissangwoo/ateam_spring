package com.hanul.anafor;

import java.util.HashMap;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;

import common.CommonService;
import user.UserVO;
import web_user.WuserService;
import web_user.WuserServiceImpl;

@Controller
public class Web_UserController {


		//네이버 클라이언트 아이디
		private String naver_client_id = "szRRJL0N7PYQvmPTLsqe";
		//카카오 Rest Api key
		private String kakao_client_id = "332e22f7f60243ff3e09b710e7cfd590";
		
		@Autowired CommonService common;
		@Autowired WuserServiceImpl service;
		
		@Autowired @Qualifier("ateam") SqlSession sql;
		
		//로그인 페이지

		@RequestMapping("/userLogin")
		public String userLogin(HttpSession session) {
			session.setAttribute("category", "login");
			return "user/login";
		}
		
		
		//이메일 중복 처리
		 @ResponseBody
		 @RequestMapping("/userEmailChk")
		 public boolean userEmailChk(String id) {
//			 return service.user_email_chk(userid);	
			 System.out.println("입력됨");
			 return (Integer)sql.selectOne("wuser.mapper.emailchk",id) == 0 ? true : false;
		 }
		
		
		//로그인 처리 (ajax 사용시 ResponseBody )
		@ResponseBody
		@RequestMapping("/userLoginChk")
		public boolean userLoginChk(HttpSession session, String userid, String userpw) {
			HashMap<String, String> map = new HashMap<String, String>();
			map.put("user_id", userid);
			map.put("user_pw", userpw);
			//System.out.println(map.get("user_id"));
			UserVO vo = service.user_login(map);
			session.setAttribute("loginInfo", vo);
			
			return vo == null ? false: true;   //로그인 실패 했을시 false, 맞으면 true
		}
		
		//로그아웃 처리
		@RequestMapping("/logout")
		public String userLogout(HttpSession session) {
			
			session.setAttribute("loginInfo", null);
			
			return "redirect:/";
			
		}
		
		
		//회원가입 페이지
		@RequestMapping("/userJoin")
		public String userJoin(HttpSession session) {
			session.setAttribute("category", "join");
			return "user/join";
		}
		
		
		//카카오 로그인
		@RequestMapping("/kakaoLogin")
		public String kakaoLogin(HttpSession session) {
			
			String state = UUID.randomUUID().toString();
			session.setAttribute("state", state);
			
			//https://kauth.kakao.com/oauth/authorize?response_type=code
			//&client_id=${REST_API_KEY}
			//&redirect_uri=${REDIRECT_URI}
			
			StringBuffer url = new StringBuffer("https://kauth.kakao.com/oauth/authorize?response_type=code");
			url.append("&client_id=").append(kakao_client_id);
			url.append("&state=").append(state);
			url.append("&redirect_uri=http://localhost/anafor/kakao_callback");		
			
			return "redirect:"+url.toString();
		}
		
		//카카오 로그인 콜백 요청
		@RequestMapping("/kakao_callback")
		public String kakaoCallback(HttpSession session, String code, String state, String error) {
			if(!state.equals(session.getAttribute("state"))|| error != null ) {
				return "redirect:/";
			}
			
			//--접근 토큰 발급 요청 : 토큰받기 (sample - request)
			
//			curl -v -X POST "https://kauth.kakao.com/oauth/token" \
//			 -H "Content-Type: application/x-www-form-urlencoded" \
//			 -d "grant_type=authorization_code" \
//			 -d "client_id=${REST_API_KEY}" \
//			 --data-urlencode "redirect_uri=${REDIRECT_URI}" \
//			 -d "code=${AUTHORIZE_CODE}"
			
			StringBuffer url = new StringBuffer("https://kauth.kakao.com/oauth/token?grant_type=authorization_code");
			url.append("&client_id=").append(kakao_client_id);
			url.append("&redirect_uri=http://localhost/anafor/kakao_callback");
			url.append("&code=").append(code);
			
			JSONObject json = new JSONObject(common.requestAPI(url));
			String token = json.getString("access_token");
			String type =json.getString("token_type");
			
			
			//-- 액세스 토큰 사용하여 모든 정보 받기(sample - 사용자 정보 가져오기)
			
//			curl -v -X GET "https://kapi.kakao.com/v2/user/me" \
//			  -H "Authorization: Bearer ${ACCESS_TOKEN}"
			
			url = new StringBuffer("https://kapi.kakao.com/v2/user/me");
			json = new JSONObject(common.requestAPI(url, type+" "+token));
			if(! json.isEmpty()) {  //json 안에 값이 있다면 저장하기
				
				UserVO vo = new UserVO();
				json = json.getJSONObject("kakao_account");
				vo.setUser_id(json.getString("email"));
				//vo.setUser_kakao(json.get("id").toString());
				vo.setUser_name(json.getJSONObject("profile").getString("nickname"));
				/*
				 * MemberVO vo = new MemberVO(); vo.setSocial_type("kakao");
				 * vo.setId(json.get("id").toString());
				 * 
				 * json = json.getJSONObject("kakao_account");
				 * vo.setSocial_email(json.getString("email")); vo.setName(
				 * json.getJSONObject("profile").getString("nickname") );
				 * vo.setGender(json.has("gender") && json.getString("gender").equals("female")?
				 * "여": "남");
				 * 
				 * 
				 * //카카오 최초 로그인인 경우 회원정보 저장 insert // 카카오 로그인 이력이 있어 회원정보가 있다면 변경 저장
				 * if(service.member_social_email(vo)) { service.member_social_update(vo); }else
				 * { service.member_social_insert(vo); } //vo에 담은 데이터를 session의 loginInfo에 담음
				 * session.setAttribute("loginInfo", vo);
				 */
			}
			return "redirect:/";
		}
		
		
		
		
	
		//네이버 로그인 요청
		@RequestMapping("/naverLogin")
		public String naverLogin(HttpSession session) {
			//3.4.2 네이버 로그인 연동 URL 생성하기
			String state = UUID.randomUUID().toString();
			
			//state 정보를 session 범위 내에서 계속 사용해야 하므로 session에 담음
			session.setAttribute("state", state);
			
			//https://nid.naver.com/oauth2.0/authorize?response_type=code
			//&client_id=CLIENT_ID&state=STATE_STRING
			//&redirect_uri=CALLBACK_URL
			
			StringBuffer url = new StringBuffer("https://nid.naver.com/oauth2.0/authorize?response_type=code");
			url.append("&client_id=").append(naver_client_id);
			url.append("&state=").append(state);
			url.append("&redirect_uri=http://localhost/anafor/naver_callback");
			System.out.println(url.toString());
			
			return "redirect:"+ url.toString();
		}
		
		//네이버 로그인 콜백 요청
		@RequestMapping("/naver_callback")
		public String navercallback(@RequestParam(required=false) String code, String state,@RequestParam(required=false) String error,
				 HttpSession session) {
			//state 값이 맞지 않거나 에러가 발생해도 토큰 발급 불가
			if(!state.equals(session.getAttribute("state")) || error != null){
				System.out.println("네이버1");
				return "redirect:/"; //메인 페이지로 이동
			}
			
			//개발 가이드 3.4.4. 접근 토큰 발급 요청 참조
			//https://nid.naver.com/oauth2.0/token?grant_type=authorization_code
			//&client_id=jyvqXeaVOVmV
			//&client_secret=527300A0_COq1_XV33cf
			//&code=EIc5bFrl4RibFls1
			//&state=9kgsGTfH4j7IyAkg  
			StringBuffer url = new StringBuffer("https://nid.naver.com/oauth2.0/token?grant_type=authorization_code");
			url.append("&client_id=").append(naver_client_id);
			url.append("&client_secret=sP8w3ahjpG");
			url.append("&code=").append(code);
			url.append("&state=").append(state);
			
			//3.4.5 접근 토큰을 이용하여 프로필 API 호출
			
			JSONObject json = new JSONObject(common.requestAPI(url));
			String token = json.getString("access_token");
			String type =json.getString("token_type");
			System.out.println("네이버2");
			//curl  -XGET "https://openapi.naver.com/v1/nid/me" \
		    //  -H "Authorization: Bearer AAAAPIuf0L+qfDkMABQ3IJ8heq2mlw71DojBj3oc2Z6OxMQESVSrtR0dbvsiQbPbP1/cxva23n7mQShtfK4pchdk/rc="
			
			url = new StringBuffer("https://openapi.naver.com/v1/nid/me");
			json = new JSONObject(common.requestAPI(url,type + " " +token));
			if(json.getString("resultcode").equals("00")) {
				json = json.getJSONObject("response");
				System.out.println("네이버3");
				/*
				 * UserVO vo = new UserVO(); vo.setUser_id(json.getString("email"));
				 * vo.setUser_name(json.getString("name"));
				 * vo.setUser_naver(json.getString("id"));
				 * vo.setUser_tel(json.getString("mobile"));
				 * System.out.println(vo.getUser_id()); System.out.println(vo.getUser_name());
				 * System.out.println(vo.getUser_tel());
				 */
				String id = json.getString("email");
			//	String name = json.getString("name");
			//	String tel = json.getString("mobile");
				System.out.println(id);
			//	System.out.println(name);
			//	System.out.println(tel);
				/*
				 * //회원정보를 DB에 담기 위해서 회원정보 데이터 객체를 생성해야함 MemberVO vo = new MemberVO(); //소셜 로그인
				 * 형태를 담음. vo.setSocial_type("naver"); vo.setId(json.getString("id"));
				 * vo.setSocial_email(json.getString("email"));
				 * vo.setName(json.getString("name")); vo.setGender(json.has("gender") &&
				 * json.getString("gender").equals("F") ? "여" : "남");
				 * 
				 * //네이버 최초 로그인인 경우 회원정보 저장 insert // 네이버 로그인 이력이 있어 회원정보가 있다면 변경 저장
				 * if(service.member_social_email(vo)) { service.member_social_update(vo); }else
				 * { service.member_social_insert(vo); } //vo에 담은 데이터를 session의 loginInfo에 담음
				 * session.setAttribute("loginInfo", vo);
				 */
				
			}
//			{
//				  "resultcode": "00",
//				  "message": "success",
//				  "response": {
//				    "email": "openapi@naver.com",
//				    "nickname": "OpenAPI",
//				    "profile_image": "https://ssl.pstatic.net/static/pwe/address/nodata_33x33.gif",
//				    "age": "40-49",
//				    "gender": "F",
//				    "id": "32742776",
//				    "name": "오픈 API",
//				    "birthday": "10-01"
//				  }
//				}
			
			return "redirect:/";  //로그인 시 루트(home.jsp)로 이동
		}
}
