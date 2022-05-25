package com.hanul.anafor;

import java.util.List;

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
	
	//리뷰 등록
	@ResponseBody
	@RequestMapping(value="/insert.review", produces = "application/json;charset=UTF-8")
	public String insertReview(HttpServletRequest req) {
		ReviewVO vo = gson.fromJson(req.getParameter("vo"), ReviewVO.class );
		dao.insertReview(vo);
		return "";
	}
	//전체 리뷰 조회
	@ResponseBody
	@RequestMapping(value="/selectAll.review",produces="application/json;chartset=UTF-8")
	public String selectAllReview(HttpServletRequest req) {
		return gson.toJson(dao.selectAllReview(req.getParameter("code")));
	}
	//해당 회원 리뷰 조회
	@ResponseBody
	@RequestMapping(value="/selectMy.review",produces="application/json;chartset=UTF-8")
	public String selectMyReview(HttpServletRequest req) {
		return gson.toJson(dao.selectMyReview(req.getParameter("user_id")));
	}
}
