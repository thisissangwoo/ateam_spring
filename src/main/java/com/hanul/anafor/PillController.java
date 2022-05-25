package com.hanul.anafor;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.client.HttpClientErrorException.Gone;

import com.google.gson.Gson;

import pill.PillDAO;
import pill.PillVO;
import user.UserVO;

@Controller
public class PillController {

	Gson gson = new Gson();
	@Autowired
	PillDAO dao;
	@Autowired
	@Qualifier("ateam")
	SqlSession sql;
	
	//처방전 db에 저장하기
	@ResponseBody
	@RequestMapping(value = "/pill", produces = "application/json;charset=UTF-8")
	public String insert(HttpServletRequest req) {
		System.out.println(req.getParameter("pill"));
		PillVO vo = gson.fromJson(req.getParameter("pill"), PillVO.class);

		// sql.insert("pill.mapper.insert", vo);
		dao.insert(vo);

		return "";
	}
	//처방전 조회하기
	@ResponseBody
	@RequestMapping(value = "/select", produces = "application/json;charset=UTF-8")
	public String select(HttpServletRequest req) {

		String select = req.getParameter("user_id");
		List<PillVO> list = sql.selectList("pill.mapper.select", select);

		System.out.println(gson.toJson(list));
		
		return gson.toJson(list);
	}

}
