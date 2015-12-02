package com.hmh.ibatis.cotroller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value="/extjs")
public class ExtjsController {
	
	@RequestMapping(value="hello", method=RequestMethod.GET)
	public String hello() {
		return "/extjs/hello";
	}
}
