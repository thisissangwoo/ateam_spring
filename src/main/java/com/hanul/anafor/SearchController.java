package com.hanul.anafor;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;

import hp.hpVO;

@Controller
public class SearchController {

	Gson gson = new Gson();

	@Autowired
	@Qualifier("ateam")
	private SqlSession sql2;

	//
	@ResponseBody
	@RequestMapping(value = "/hash", produces = "application/json;charset=UTF-8")
	public String search(HttpServletRequest req) {
		String keyword = req.getParameter("query");
		System.out.println(req.getParameter("query"));
		List<hpVO> list = sql2.selectList("search.mapper.search", keyword);
		System.out.println(gson.toJson(list));
		return gson.toJson(list);
	}

}