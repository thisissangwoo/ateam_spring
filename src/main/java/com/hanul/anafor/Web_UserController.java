package com.hanul.anafor;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class Web_UserController {


		@RequestMapping("/userLogin")
		public String userLogin() {
			return "user/login";
		}
}
