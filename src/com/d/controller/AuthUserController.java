package com.d.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.d.service.AuthUserService;



/*认证用户控制器类*/
@Controller
@RequestMapping("/authuer")
public class AuthUserController {
	@Autowired
	private AuthUserService authUserService;
	@RequestMapping("/login")
	public String loginAuthUser(){
		authUserService.loginAuthUser();
		return null;
	}
}
