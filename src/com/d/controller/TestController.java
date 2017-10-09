package com.d.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
@RequestMapping("/test")
public class TestController {
	@RequestMapping("/test")
	public String myTest(String name) {
		System.out.println("test");
		System.out.println(name);
		return null;
	}
}
