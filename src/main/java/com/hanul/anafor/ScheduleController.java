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

import schedule.ScheduleDAO;
import schedule.ScheduleVO;

@Controller
public class ScheduleController {

	@Autowired
	ScheduleDAO dao;
	Gson gson = new Gson();

	@Autowired
	@Qualifier("ateam")
	private SqlSession sql;

	
	//스케줄 db에 저장하기
	@ResponseBody
	@RequestMapping(value = "/schedule_insert", produces = "application/json;charset=UTF-8")
	public String insert(HttpServletRequest req) {
		ScheduleVO vo = new ScheduleVO();
		/*
		 * vo.setUser_id(req.getParameter("sc_id"));
		 * vo.setSc_title(req.getParameter("sc_title"));
		 * vo.setSc_memo(req.getParameter("sc_memo"));
		 * vo.setSc_date(req.getParameter("sc_date"));
		 */
		vo = gson.fromJson(req.getParameter("schedule_insert"), ScheduleVO.class);

		System.out.println(vo.getSc_title());
		dao.schedule(vo);
		return "";
	}

	
	//일정 db에서 조회하기	
	@ResponseBody
	@RequestMapping(value = "/schedule_select", produces = "application/json;charset=UTF-8")
	public String select(HttpServletRequest req) {

		String data = req.getParameter("select");
		List<ScheduleVO> list = sql.selectList("schedule.mapper.select", data);

		return gson.toJson(list);
	}

	//일정 수정하기
	@ResponseBody
	@RequestMapping(value = "/schedule_update", produces = "application/json;charset=UTF-8")
	public String update(HttpServletRequest req) {
		ScheduleVO vo = new ScheduleVO();

		vo = gson.fromJson(req.getParameter("dto"), ScheduleVO.class);

		System.out.println(vo.getSc_code());
		System.out.println(vo.getSc_title());
		System.out.println(vo.getSc_memo());
		sql.update("schedule.mapper.update", vo);
		return gson.toJson(vo);
	}

}
