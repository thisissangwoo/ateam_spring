package com.hanul.anafor;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import common.CommonService;
import user.UserVO;
import web_customer.CustomerServiceImpl;
import web_customer.CustomerVO;

@Controller
public class Web_CustomerController {

	@Autowired private CustomerServiceImpl service;
	
	@Autowired private CommonService common;
	
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
	
	@RequestMapping ("/insert.cu")
	public String insert(CustomerVO vo, MultipartFile file, HttpSession session) {
		// 로그인된 사용자의 id를 가져와 글쓴이(writer)에 담기 위한 처리	
 		vo.setWriter( ((UserVO) session.getAttribute("loginInfo")).getUser_id() );
 		
 		// 파일이 있는 경우
 		if ( ! file.isEmpty() ) {
 			// 파일 첨부 처리(filename, filepath)
 			vo.setFilename( file.getOriginalFilename()); // 전달받은 파일의 실제 이름을 vo에 할당
 			//vo.setFilepath(common.fileUpload("notice", file, session));	//
 		}
		
		// 화면에서 입력한 정보를 DB에 저장한 후 화면으로 연결
		service.qna_insert(vo);
		return "redirect:list.cu";	// 리턴시 공지사항 목록 조회 화면으로 이동 처리
	}
	
	// 신규 공지사항 입력(글쓰기) 화면 요청
	@RequestMapping ("/new.cu")
	public String notice() {
		return "notice/new";
	}
	
}
