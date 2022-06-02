package com.hanul.anafor;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import web_customer.CustomerServiceImpl;

@Controller
public class Web_CustomerController {

	@Autowired private CustomerServiceImpl service;
	
	@RequestMapping ("/list.cu")
	public String list(HttpSession session, Model model) {
		
		session.setAttribute("category", "cu");
		
		model.addAttribute("list",service.qna_list());
		
		return "customer/list";
	}
	
	@RequestMapping ("/detail.cu")
	public String detail(int id, Model model) {
		service.qna_read(id);
		model.addAttribute("vo", service.qna_detail(id));
		model.addAttribute("crlf", "\r\n");
		
		return "customer/detail";
	}
}
