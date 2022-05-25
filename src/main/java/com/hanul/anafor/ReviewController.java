package com.hanul.anafor;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;

import review.ReviewDAO;
import review.ReviewVO;

@Controller
public class ReviewController {

	Gson gson = new Gson();
	
	@Autowired ReviewDAO dao;
	
	@ResponseBody
	@RequestMapping(value="/insert.review", produces = "application/json;charset=UTF-8")
	public String insertReview(HttpServletRequest req) {
		ReviewVO vo = gson.fromJson(req.getParameter("vo"), ReviewVO.class );
		dao.insertReview(vo);
		return "";
	}
}
