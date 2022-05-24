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
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.function.ServerRequest.Headers;

@Service
public class CommonService {

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

}