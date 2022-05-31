package common;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Random;

import javax.mail.internet.MimeMessage;

import org.apache.ibatis.session.SqlSession;
import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.function.ServerRequest.Headers;

import user.EmailNumberVO;

@Service
public class CommonService {

	   @Autowired private JavaMailSender mailSender;
	   @Autowired @Qualifier("ateam") SqlSession sql;
	
	public JSONArray json_requestAPI(StringBuffer url) {
		JSONObject json = new JSONObject(requestAPI(url));
		JSONArray jlist = new JSONArray();
//      json = json.getJSONObject("response");

		// 조회 한도 초과 여부 확인 resultCode 가 99 이면 한도초과, 0이면 정상
		int code = json.getJSONObject("header").getInt("resultCode");
		if (code == 0) { // 정상

			json = json.getJSONObject("body");

			// 전체 의약품 수 가져오기
			int count = 0;
			if (json.has("totalCount"))
				count = json.getInt("totalCount");
//         if (json.get("items") instanceof JSONObject) {

			jlist = (JSONArray) json.get("items");
			json.put("count", count);
		} else { // 한도초과시
			json.put("resultCode", code);
		}
//      return json.toMap();   // 맵 형태로 값을 전달
		return jlist; // 맵 형태로 값을 전달
	}

	public String requestAPI(StringBuffer url) {

		String result = "";
		try {
			// URL url = new URL(apiURL);
			// 연결 할 객체가 HTTP 통신을 통하여 할 예정이므로 HTTP 간의 연결 개체 1개를 만듬
			HttpURLConnection con = (HttpURLConnection) new URL(url.toString()).openConnection();
			con.setRequestMethod("GET");
			int responseCode = con.getResponseCode();
			// 여러가지 정보를 읽어 들이는데 있어서 버퍼를 통하여 읽어 들이기 위해 BufferReader 를 사용하겠다.
			BufferedReader br;
			System.out.print("responseCode=" + responseCode);
			if (responseCode == 200) { // 정상 호출
				br = new BufferedReader(new InputStreamReader(con.getInputStream(), "utf-8"));
			} else { // 에러 발생
				br = new BufferedReader(new InputStreamReader(con.getErrorStream(), "utf-8"));
			}
			String inputLine;
			StringBuffer res = new StringBuffer(); // 실제 값이 담겨진 변수 res 값을 리턴하여 보내 줄 예정
			while ((inputLine = br.readLine()) != null) {
				res.append(inputLine);
			}
			br.close();
			con.disconnect();
			result = res.toString();
		} catch (Exception e) {
			System.out.println(e);
		}
		return result;
	}
	
	//아이디 이메일 인증 메일 전송 메소드
	public int sendCheckEmail(String email) {
		
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
		
		return checkNum; 
	}
	
	//비밀번호 찾기 메일 전송 메소드
	public void sendFindPw(String email) {
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
				sql.update("user.mapper.pw_find", map);
	}

}